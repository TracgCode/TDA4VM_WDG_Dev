/* ========================================================================== */
/*                             Include Files                                  */
/* ========================================================================== */

#include <stdio.h>
#include <stdint.h>
#include <string.h>

/**< Max Processers */
#define    IPC_MAX_PROCS       (11U)

#include <ipc_setup.h>

/* OSAL Header files */
#include <ti/osal/osal.h>
#include <ti/osal/TaskP.h>
#include <ti/osal/EventP.h>

#include <ti/osal/osal.h>

#include <ti/drv/ipc/examples/common/src/ipc_rsctable.h>
#include <ipc.h>

//#include <ipc.h>

#define MSGSIZE  256U
#define SERVICE_PING   "ti.ipc4.ping-pong"
#define ENDPT_PING     13U
#define SERVICE_CHRDEV "rpmsg_chrdev"
#define ENDPT_CHRDEV   14U
#define NUMMSGS  10000 /* number of message sent per task */
//#define NUMMSGS  1000000   /* number of message sent per task */

typedef struct Ipc_TestParams_s
{
    uint32_t endPt;
    char     name[32];
} Ipc_TestParams;

Ipc_TestParams service_ping = { ENDPT_PING, SERVICE_PING };
Ipc_TestParams service_chrdev = { ENDPT_CHRDEV, SERVICE_CHRDEV };

extern uint8_t  *pCntrlBuf;
extern uint8_t  *pTaskBuf;
extern uint8_t  *pSendTaskBuf;
extern uint8_t  *pRecvTaskBuf;
extern uint8_t  *pSysVqBuf;

extern uint32_t  selfProcId;
extern uint32_t *pRemoteProcArray;
extern uint32_t  gNumRemoteProc;

uint32_t gRecvTaskBufIdx = 0;
uint32_t gSendTaskBufIdx[IPC_MAX_PROCS] = {0};

uint32_t rpmsgDataSize = RPMSG_DATA_SIZE;

/* ========================================================================== */
/*                           Macros & Typedefs                                */
/* ========================================================================== */

/** \brief Core definitions */
#define    IPC_MPU1_0           (0U)

#define IPC_SETUP_TASK_PRI                  (3)
/**< Priority for sender and receiver tasks */

/**< Checker  Task stack size */
#define APP_CHECKER_TSK_STACK        (32U * 1024U)

/**
 * \brief VRing Buffer Size required for all core
 * combinations.
 */
#define IPC_VRING_BUFFER_SIZE   (0x1C00000U)

/* ========================================================================== */
/*                         Structure Declarations                             */
/* ========================================================================== */

/* None */

/* ========================================================================== */
/*                          Function Declarations                             */
/* ========================================================================== */
static uint32_t geteventID(uint32_t coreID);
static void ipc_checker_task(void *arg0, void *arg1);
/* ========================================================================== */
/*                            Global Variables                                */
/* ========================================================================== */
/* Declaration  the Event variables */
EventP_Handle   gEventhandle;

static uint8_t  gCheckerTskStack[APP_CHECKER_TSK_STACK]
__attribute__ ((aligned(APP_CHECKER_TSK_STACK)));

static uint32_t		RecvEndPt = 0;

//#define DEBUG_PRINT

bool g_exitRespTsk = 0;
/* ========================================================================== */
/*                          Function Definitions                              */
/* ========================================================================== */

void rpmsg_exit_responseTask()
{
    g_exitRespTsk = 1;
}

/*
 * This "Task" waits for a "ping" message from any processor
 * then replies with a "pong" message.
 */

void rpmsg_responderFxn(void *arg0, void *arg1)
{
    RPMessage_Handle    handle;
    RPMessage_Params    params;
    uint32_t		myEndPt = 0;
    uint32_t		remoteEndPt;
    uint32_t		remoteProcId;
    uint16_t		len;
    int32_t		n;
    int32_t		status = 0;
    void		*buf;
    uint32_t            requestedEpt = (uint32_t)(*(uint32_t*)arg0);
    char *              name = (char *)arg1;
    uintptr_t key;
    
    uint32_t            bufSize = rpmsgDataSize;
    char                str[MSGSIZE];

    /* Step 1. Create buffre for RPMessage*/
    buf = &pRecvTaskBuf[gRecvTaskBufIdx++ * rpmsgDataSize];
    if(buf == NULL)
    {
        App_printf("RecvTask: buffer allocation failed\n");
        return;
    }

    RPMessageParams_init(&params);
    params.requestedEndpt = requestedEpt;
    params.buf = buf;
    params.bufSize = bufSize;

    handle = RPMessage_create(&params, &myEndPt);
    if(!handle)
    {
        App_printf("RecvTask: Failed to create endpoint\n");
        return;
    }

    if (requestedEpt == ENDPT_PING)
    {
        RecvEndPt = myEndPt;
    }

    /* Step 2. Announce the targer core that it's ready to receive msg */
    status = RPMessage_announce(RPMESSAGE_ALL, myEndPt, name);
    if(status != IPC_SOK)
    {
        App_printf("RecvTask: RPMessage_announce() for %s failed\n", name);
        return;
    }

    /* Step 3. Loop for receive message and respond */
    while(!g_exitRespTsk)
    {
        /* Step 3a. Wait for incomming message */
        status = RPMessage_recv(handle, (Ptr)str, &len, &remoteEndPt, &remoteProcId,
                IPC_RPMESSAGE_TIMEOUT_FOREVER);
        if(status != IPC_SOK)
        {
            App_printf("RecvTask: failed with code %d\n", status);
        }
        else
        {
            /* NULL terminated string */
            str[len] = '\0';
#ifdef DEBUG_PRINT
            App_printf("RecvTask: Revcvd msg \"%s\" len %d from %s\n",
                    str, len, Ipc_mpGetName(remoteProcId));
#endif
        }

        /* Step 3b. Send respond */
        status = sscanf(str, "ping %d", &n);
        if(status == 1)
        {
            memset(str, 0, MSGSIZE);
            /* Not having a Hwip_disable here causes C7X goes into a bad state. This is for SafeRTOS on C7X. */
            key = HwiP_disable();
            len = snprintf(str, 255, "pong %d", n);
            HwiP_restore(key);
            if(len > 255)
            {
                App_printf("RecvTask: snprintf failed, len %d\n", len);
                len = 255;
            }
            str[len++] = '\0';
        }
        else
        {
            /* If this is not ping/pong message, just print the message */
            App_printf("%s <--> %s : %s recvd\n",
                    Ipc_mpGetSelfName(),
                    Ipc_mpGetName(remoteProcId),
                    str);
        }
#ifdef DEBUG_PRINT
        App_printf("RecvTask: Sending msg \"%s\" len %d from %s to %s\n",
                str, len, Ipc_mpGetSelfName(),
                Ipc_mpGetName(remoteProcId));
#endif
        status = RPMessage_send(handle, remoteProcId, remoteEndPt, myEndPt, str, len);
        if (status != IPC_SOK)
        {
            App_printf("RecvTask: Sending msg \"%s\" len %d from %s to %s failed!!!\n",
                str, len, Ipc_mpGetSelfName(),
                Ipc_mpGetName(remoteProcId));
        }
    }

    App_printf("%s responder task exiting ...\n",
                    Ipc_mpGetSelfName());
}

void rpmsg_senderFxn(void *arg0, void *arg1)
{
    RPMessage_Handle    handle;
    RPMessage_Params    params;
    uint32_t            myEndPt = 0;
    uint32_t            remoteEndPt;
    uint32_t            remoteProcId;
    uint32_t            dstProc;
    uint16_t            len;
    int32_t             i;
    int32_t             status = 0;
    char                buf[256];
    uint8_t            *buf1;
    uintptr_t key;

    uint32_t            cntPing = 0;
    uint32_t            cntPong = 0;

    buf1 = &pSendTaskBuf[rpmsgDataSize * (uint32_t)(*(uint32_t*)arg1)];
    dstProc = (uint32_t)(*(uint32_t*)arg0);

    /* Create the endpoint for receiving. */
    RPMessageParams_init(&params);
    params.numBufs = 2;
    params.buf = buf1;
    params.bufSize = rpmsgDataSize;
    handle = RPMessage_create(&params, &myEndPt);
    if(!handle)
    {
        App_printf("SendTask%d: Failed to create message endpoint\n",
                dstProc);
        return;
    }

    status = RPMessage_getRemoteEndPt(dstProc, SERVICE_PING, &remoteProcId,
            &remoteEndPt, SemaphoreP_WAIT_FOREVER);
    if(dstProc != remoteProcId)
    {
        App_printf("SendTask%d: RPMessage_getRemoteEndPt() malfunctioned, status %d\n",
                dstProc, status);
        return;
    }

    for (i = 0; i < NUMMSGS; i++)
    {
        /* Send data to remote endPt: */
        memset(buf, 0, 256);
        /* Not having a Hwip_disable here causes C7X go into a bad state. This is for SafeRTOS on C7X */
        key = HwiP_disable();
        len = snprintf(buf, 255, "ping %d", i);
        HwiP_restore(key);
        if(len > 255)
        {
            App_printf("SendTask%d: snprintf failed, len %d\n", dstProc, len);
            len = 255;
        }
        buf[len++] = '\0';

#ifdef DEBUG_PRINT
        App_printf("SendTask%d: Sending \"%s\" from %s to %s...\n", dstProc,
                buf, Ipc_mpGetSelfName(),
                Ipc_mpGetName(dstProc));
#endif
        /* Increase the Ping Counter */
        cntPing++;

        status = RPMessage_send(handle, dstProc, ENDPT_PING, myEndPt, (Ptr)buf, len);
        if (status != IPC_SOK)
        {
            App_printf("SendTask%d: RPMessage_send Failed Msg-> \"%s\" from %s to %s...\n",
                dstProc,
                buf, Ipc_mpGetSelfName(),
                Ipc_mpGetName(dstProc));
            break;
        }


        /* wait a for a response message: */
        status = RPMessage_recv(handle, (Ptr)buf, &len, &remoteEndPt,
                &remoteProcId, IPC_RPMESSAGE_TIMEOUT_FOREVER);

        if(status != IPC_SOK)
        {
            App_printf("SendTask%d: RPMessage_recv failed with code %d\n",
                    dstProc, status);
            break;
        }

        /* Make it NULL terminated string */
        if(len >= MSGSIZE)
        {
            buf[MSGSIZE-1] = '\0';
        }
        else
        {
            buf[len] = '\0';
        }

#ifdef DEBUG_PRINT
        App_printf("SendTask%d: Received \"%s\" len %d from %s endPt %d \n",
                dstProc, buf, len, Ipc_mpGetName(remoteProcId),
                remoteEndPt);
#endif
        cntPong++;
        if((i+1)%50 == 0)
        {
            //App_printf("%s <--> %s, ping/pong iteration %d ...\n",
            //        Ipc_mpGetSelfName(), Ipc_mpGetName(dstProc), i);
        }
    }

    App_printf("%s <--> %s, Ping- %d, pong - %d completed\n",
            Ipc_mpGetSelfName(),
            Ipc_mpGetName(dstProc),
            cntPing, cntPong);
    if (cntPing !=NUMMSGS || cntPong !=NUMMSGS )
    {
        App_printf("ERROR !! Ping/Pong iteration between the core mcu1_0 and %s is not %d \nPing is %d , Pong is %d\n",Ipc_mpGetName(dstProc),NUMMSGS,cntPing, cntPong);
        App_printf("Some Test has failed\n");
    }
    else
    {
        EventP_post(gEventhandle,geteventID(dstProc));
    }

    /* Delete the RPMesg object now */
    RPMessage_delete(&handle);
}

/*
 * This "Task" waits for Linux vdev ready, and late create the vrings
 *
 */
void rpmsg_vdevMonitorFxn(void* arg0, void* arg1)
{
    int32_t status;

    /* Wait for Linux VDev ready... */
    while(!Ipc_isRemoteReady(IPC_MPU1_0))
    {
        TaskP_sleep(10);
    }

    /* Create the VRing now ... */
    status = Ipc_lateVirtioCreate(IPC_MPU1_0);
    if(status != IPC_SOK)
    {
        App_printf("%s: Ipc_lateVirtioCreate failed\n", __func__);
        return;
    }

    status = RPMessage_lateInit(IPC_MPU1_0);
    if(status != IPC_SOK)
    {
        App_printf("%s: RPMessage_lateInit failed\n", __func__);
        return;
    }

    status = RPMessage_announce(IPC_MPU1_0, RecvEndPt, SERVICE_PING);
    if(status != IPC_SOK)
    {
        App_printf("rpmsg_vdevMonitorFxn: RPMessage_announce() failed\n");
    }
}
/* !defined(BUILD_MPU1_0) && defined(A72_LINUX_OS) && defined(A72_LINUX_OS_IPC_ATTACH)*/

static void IpcTestPrint(const char *str)
{
    App_printf("%s", str);

    return;
}


int32_t Ipc_echo_test(void)
{
    uint32_t          t;
    TaskP_Params      params;
    uint32_t          numProc = gNumRemoteProc;
    Ipc_VirtIoParams  vqParam;
    Ipc_InitPrms      initPrms;
    uint32_t          index = 0;

    /* Step1 : Initialize the multiproc */
    Ipc_mpSetConfig(selfProcId, numProc, pRemoteProcArray);

    App_printf("IPC_echo_test (core : %s) .....\r\n", Ipc_mpGetSelfName());

    /* Initialize params with defaults */
    //App_printf("Running IpcInitPrms_init(0U, &initPrms);");
    IpcInitPrms_init(0U, &initPrms);

    //App_printf("Running initPrms.printFxn = &IpcTestPrint;");
    initPrms.printFxn = &IpcTestPrint;

    //App_printf("Running Ipc_init(&initPrms);");
    Ipc_init(&initPrms);

    App_printf("Required Local memory for Virtio_Object = %d\r\n",
                numProc * Ipc_getVqObjMemoryRequiredPerCore());

    /* If A72 remote core is running Linux OS, then
     * load resource table
     */
    Ipc_loadResourceTable((void*)&ti_ipc_remoteproc_ResourceTable);


    /* Wait for Linux VDev ready... */
    App_printf("Wait for Linux VDev ready...\n");
    for(t = 0; t < numProc; t++)
    {
        while(!Ipc_isRemoteReady(pRemoteProcArray[t]))
        {
            TaskP_sleep(500);
            App_printf("Waiting for remote %d...", t);
        }
    }
    App_printf("Linux VDEV ready now .....\n");

    /* Step2 : Initialize Virtio */
    vqParam.vqObjBaseAddr = (void*)pSysVqBuf; // 0xA0400000 ~ 0xA00FFFFF
    vqParam.vqBufSize     = numProc * Ipc_getVqObjMemoryRequiredPerCore();
    vqParam.vringBaseAddr = (void*)VRING_BASE_ADDRESS;
    vqParam.vringBufSize  = IPC_VRING_BUFFER_SIZE;
    vqParam.timeoutCnt    = 100;  /* Wait for counts */
    Ipc_initVirtIO(&vqParam);

    EventP_Params      eventParams;
    TaskP_Params      taskParams;

    EventP_Params_init(&eventParams);

    gEventhandle = EventP_create(&eventParams);

    TaskP_Params_init(&taskParams);
    taskParams.priority   = 4;
    taskParams.stack      = &gCheckerTskStack;
    taskParams.stacksize  = APP_CHECKER_TSK_STACK;
    TaskP_create(&ipc_checker_task, &taskParams);
    
    /* Step 3: Initialize RPMessage */
    RPMessage_Params cntrlParam;

    //App_printf("Required Local memory for RPMessage Object = %d\n",
    //   RPMessage_getObjMemRequired());

    /* Initialize the param */
    RPMessageParams_init(&cntrlParam);

    /* Set memory for HeapMemory for control task */
    cntrlParam.buf         = pCntrlBuf;
    cntrlParam.bufSize     = rpmsgDataSize;
    cntrlParam.stackBuffer = &pTaskBuf[index++ * IPC_TASK_STACKSIZE];
    cntrlParam.stackSize   = IPC_TASK_STACKSIZE;
    RPMessage_init(&cntrlParam);

    /* Respond to messages coming in to endPt ENDPT_PING */
    TaskP_Params_init(&params);
    params.priority   = 3;
    params.stack      = &pTaskBuf[index++ * IPC_TASK_STACKSIZE];
    params.stacksize  = IPC_TASK_STACKSIZE;
    params.arg0       = (void *)&service_ping.endPt;
    params.arg1       = (void *)&service_ping.name[0];
    TaskP_create(&rpmsg_responderFxn, &params);

    /* Respond to messages coming in to endPt ENDPT_CHRDEV (for testing rpmsg_chrdev) */
    TaskP_Params_init(&params);
    params.priority   = IPC_SETUP_TASK_PRI;
    params.stack      = &pTaskBuf[index++ * IPC_TASK_STACKSIZE];
    params.stacksize  = IPC_TASK_STACKSIZE;
    params.arg0       = (void *)&service_chrdev.endPt;
    params.arg1       = (void *)&service_chrdev.name[0];
    TaskP_create(&rpmsg_responderFxn, &params);

    for(t = 0; t < numProc; t++, index++)
    {
        /* Linux does not have a responder func running */
        if(pRemoteProcArray[t] == IPC_MPU1_0)
            continue;

        /* Store index in global array.
         * the pointer of which is to be passed as argument to sender task */
        gSendTaskBufIdx[t] = t;
        /* send messages to peer(s) on ENDPT_PING */
        TaskP_Params_init(&params);
        params.priority  = IPC_SETUP_TASK_PRI;
        params.stack     = &pTaskBuf[index * IPC_TASK_STACKSIZE];
        params.stacksize = IPC_TASK_STACKSIZE;
        params.arg0      = (void *)&pRemoteProcArray[t];
        params.arg1      = (void *)&gSendTaskBufIdx[t];
        TaskP_create(&rpmsg_senderFxn, &params);

    }

    /* Respond to messages coming in to endPt ENDPT_PING */
    TaskP_Params_init(&params);
    params.priority = IPC_SETUP_TASK_PRI;
    params.stacksize = 0x1000;
    params.arg0 = 0;
    TaskP_create(&rpmsg_vdevMonitorFxn, &params);
    /* !defined(BUILD_MPU1_0) && defined(A72_LINUX_OS) && defined(A72_LINUX_OS_IPC_ATTACH) */

    return 1;
}

static void ipc_checker_task(void *arg0, void *arg1)
{
    uint32_t        retEventMask;
    uint32_t        eventMask = 0x0;
    for(int i=0;i<gNumRemoteProc;i++)
    {
        eventMask+=geteventID(pRemoteProcArray[i]);
    }

    retEventMask = EventP_wait(gEventhandle, eventMask, EventP_WaitMode_ALL, EventP_WAIT_FOREVER);
    if((retEventMask & eventMask) == eventMask)
    {
        App_printf("All tests have passed\n");
        EventP_delete(&gEventhandle);
    }
}

static uint32_t geteventID(uint32_t coreID)
{
    uint32_t retVal=EventP_ID_NONE;
    switch(coreID)
    {
        case 0:
            retVal=EventP_ID_00;
            break;
        case 1:
            retVal=EventP_ID_01;
            break;
        case 2:
            retVal=EventP_ID_02;
            break;
        case 3:
            retVal=EventP_ID_03;
            break;
        case 4:
            retVal=EventP_ID_04;
            break;
        case 5:
            retVal=EventP_ID_05;
            break;
        case 6:
            retVal=EventP_ID_06;
            break;
        case 7:
            retVal=EventP_ID_07;
            break;
        case 8:
            retVal=EventP_ID_08;
            break;
        case 9:
            retVal=EventP_ID_09;
            break;
        case 10:
            retVal=EventP_ID_10;
            break;
        case 11:
            retVal=EventP_ID_11;
            break;

    }
    return retVal;
}