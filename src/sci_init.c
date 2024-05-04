/* ========================================================================== */
/*                             Include Files                                  */
/* ========================================================================== */

/** Total number of possible contexts for application. */
#define SCICLIENT_CONTEXT_MAX_NUM                        (25U)

#include <ti/drv/sciclient/src/sciclient/sciclient_priv.h>
#include <ti/csl/soc.h>
#include <ti/drv/sciclient/sciclient.h>
#include <string.h> /*For memcpy*/
#include <ti/csl/csl_clec.h>
#include <ti/csl/csl_rat.h>

#include <ti/drv/sciclient/sciserver.h>
#include <ti/drv/sciclient/sciserver_tirtos.h>
#include <ti/osal/osal.h>

#include <ipc_setup.h>

/* ========================================================================== */
/*                           Macros & Typedefs                                */
/* ========================================================================== */

/* High Priority for SCI Server - must be higher than Low priority task */
#define IPC_SETUP_SCISERVER_TASK_PRI_HIGH   (5)
/*
 * Low Priority for SCI Server - must be higher than IPC echo test tasks
 * to prevent delay in handling Sciserver requests when test is performing
 * multicore ping/pong.
 */
#define IPC_SETUP_SCISERVER_TASK_PRI_LOW    (4)

/* ========================================================================== */
/*                         Structures and Enums                               */
/* ========================================================================== */

/* None */

/* ========================================================================== */
/*                 Internal Function Declarations                             */
/* ========================================================================== */

/* None */

/* ========================================================================== */
/*                            Global Variables                                */
/* ========================================================================== */

extern Sciclient_ServiceHandle_t gSciclientHandle;

/* ========================================================================== */
/*                          Function Definitions                              */
/* ========================================================================== */

int sciclient_init(void)
{
    int32_t ret = CSL_PASS;
    Sciclient_ConfigPrms_t        config;

    /* Now reinitialize it as default parameter */
    ret = Sciclient_configPrmsInit(&config);
    if (ret != CSL_PASS)
    {
        App_printf("Sciclient_configPrmsInit Failed\n");
    }

    if (ret == CSL_PASS)
    {
        ret = Sciclient_boardCfgParseHeader(
            (uint8_t *)SCISERVER_COMMON_X509_HEADER_ADDR,
            &config.inPmPrms, &config.inRmPrms);
        if (ret != CSL_PASS)
        {
            App_printf("Sciclient_boardCfgParseHeader Failed\n");
        }
    }

    if (ret == CSL_PASS)
    {
        ret = Sciclient_init(&config);
        if (ret != CSL_PASS)
        {
            App_printf("Sciclient_init Failed\n");
        }
        if (gSciclientHandle.rmBoardConfigComplete == SCICLIENT_FT_PASS)
        {
            App_printf("Sciclient_boardCfgRm init Passed\n");
        }
        else
        {
            App_printf("Sciclient_boardCfgRm init FAILED!\n");
        }
    }

    return ret;
}

void sciserver_init(void *arg0, void *arg1)
{

    Sciserver_TirtosCfgPrms_t appPrms;
    int32_t ret = CSL_PASS;
    char *version_str = NULL;
    char *rmpmhal_version_str = NULL;

    ret = Sciserver_tirtosInitPrms_Init(&appPrms);

    appPrms.taskPriority[SCISERVER_TASK_USER_LO] =
                                            IPC_SETUP_SCISERVER_TASK_PRI_LOW;
    appPrms.taskPriority[SCISERVER_TASK_USER_HI] =
                                            IPC_SETUP_SCISERVER_TASK_PRI_HIGH;

    if (ret == CSL_PASS)
    {
        ret = Sciserver_tirtosInit(&appPrms);
    }

    version_str = Sciserver_getVersionStr();
    rmpmhal_version_str = Sciserver_getRmPmHalVersionStr();
    App_printf("DM Built On: %s %s\n", __DATE__, __TIME__);
    App_printf("Sciserver Version: %s\n", version_str);
    App_printf("RM_PM_HAL Version: %s\n", rmpmhal_version_str);

    if (ret == CSL_PASS)
    {
        App_printf("Starting Sciserver..... PASSED\n");
    }
    else
    {
        App_printf("Starting Sciserver..... FAILED\n");
    }

    return;
}

/* ========================================================================== */
/*                 Internal Function Definitions                              */
/* ========================================================================== */

/* None */

