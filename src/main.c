/* ========================================================================== */
/*                             Include Files                                  */
/* ========================================================================== */

#include <stdlib.h>
#include <string.h>

#include <ti/drv/sciclient/sciserver_tirtos.h>
#include <ti/drv/sciclient/sciclient.h>
#include <ti/drv/sciclient/sciserver.h>
#include <ti/board/board.h>
#include <ti/board/src/j721e_evm/include/board_pinmux.h>
#include <ti/osal/osal.h>
#include <ti/osal/TaskP.h>

#include <sci_init.h>
#include <ipc.h>

/* ========================================================================== */
/*                           Macros & Typedefs                                */
/* ========================================================================== */

/**< Test application stack size */
#define APP_TSK_STACK_MAIN              (32U * 1024U)
/**< SCI Server Init Task stack size */
#define APP_SCISERVER_INIT_TSK_STACK        (32U * 1024U)
/* SCI Server Init Task Priority - must be higher than High priority Sciserver task */
#define IPC_INIT_SCISERVER_TASK_PRI         (6)

/* ========================================================================== */
/*                            Global Variables                                */
/* ========================================================================== */


/* Test application stack */
/* For SafeRTOS on R5F with FFI Support, task stack should be aligned to the stack size */
static uint8_t  gAppTskStackMain[APP_TSK_STACK_MAIN]
__attribute__ ((aligned(8192)));
/* Sciserver Init TAsk stack */
static uint8_t  gSciserverInitTskStack[APP_SCISERVER_INIT_TSK_STACK]
__attribute__ ((aligned(8192)));

/* Variable to check if boardInit has completed or not*/
uint8_t  gBoardinit=0;

/* ========================================================================== */
/*                          Function Declarations                             */
/* ========================================================================== */

static void taskFxn(void*, void*);

int main (void) {
    
    TaskP_Handle task;
    TaskP_Params taskParams;

    /* Relocate FreeRTOS Reset Vectors from BTCM*/
    void _freertosresetvectors (void);
    memcpy((void *)0x0, (void *)_freertosresetvectors, 0x40);

    /*  This should be called before any other OS calls (like Task creation, OS_start, etc..) */
    OS_init();

    /* Initialize the task params */
    TaskP_Params_init(&taskParams);
    /* Set the task priority higher than the default priority (1) */
    taskParams.priority = 2;
    taskParams.stack        = gAppTskStackMain;
    taskParams.stacksize    = sizeof (gAppTskStackMain);

    task = TaskP_create(&taskFxn, &taskParams);
    if(NULL == task)
    {
        OS_stop();
    }
    OS_start();    /* does not return */

    return(0);
}

static void taskFxn(void* a0, void* a1)
{

    /* Initialize SCI Client - It must be called before board init */
    sciclient_init();
    /* IPC Board Init should be done only for MCU1_0 for Linux,
     * unconditionally for RTOS
     */

    /* Init board */
    Board_initCfg boardCfg;
    boardCfg = BOARD_INIT_UART_STDIO;
    /* Configure UART TX pinmux only. Linux doesn't support full pinmux config */
    Board_uartTxPinmuxConfig();
    Board_init(boardCfg);

    /* Mark Board_init() has been called */
    gBoardinit = 1;

    TaskP_Handle sciserverInitTask;
    TaskP_Params sciserverInitTaskParams;

    /* Initialize SCI Client Server */
    TaskP_Params_init(&sciserverInitTaskParams);
    sciserverInitTaskParams.priority     = IPC_INIT_SCISERVER_TASK_PRI;
    sciserverInitTaskParams.stack        = gSciserverInitTskStack;
    sciserverInitTaskParams.stacksize    = sizeof (gSciserverInitTskStack);

    sciserverInitTask = TaskP_create(&sciserver_init, &sciserverInitTaskParams);
    if(NULL == sciserverInitTask)
    {
        OS_stop();
    }

    Ipc_echo_test();
}