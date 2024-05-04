include utils.mak

CC_PATHS = 		-I $(PDK_PATH)/..\
				-I ./include


CC_FLAGS = 		-MMD -MF $(patsubst build%,build/deps%,$(@:.oer5f=.d))\
				-g\
				-c\
				-Wall\
				-Werror\
				-Wno-extra\
				-Wno-exceptions\
				-ferror-limit=100\
				-Wno-unused-command-line-argument\
				-Wno-gnu-variable-sized-type-not-at-end\
				-Wno-unused-function\
				-Wno-extern-initializer\
				-Wno-excess-initializers\
				-Wno-bitfield-constant-conversion\
				-Wno-address-of-packed-member\
				-DBUILD_MCU1_0\
				-DSOC_J721E\
				-DENABLE_UART_PRINT\
				-EL\
				-eo.oer5f\
				-ea.ser5f\
				-mfloat-abi=hard\
				-mfpu=vfpv3-d16\
				-mcpu=cortex-r5\
				-march=armv7-r\
				-Werror\
				-Os\
				-s\
				-DFREERTOS\
				-fno-strict-aliasing\
				-flto

LD_PATHS = 		./linker_r5_freertos_release.lds\
				$(OBJS)\
				$(PDK_PATH)/csl/lib/j721e/r5f/release/ti.csl.aer5f\
				$(PDK_PATH)/drv/uart/lib/j721e/r5f/release/ti.drv.uart.aer5f\
				$(PDK_PATH)/drv/i2c/lib/j721e/r5f/release/ti.drv.i2c.aer5f\
				$(PDK_PATH)/drv/udma/lib/j721e/mcu1_0/release/udma.aer5f\
				$(PDK_PATH)/drv/gpio/lib/j721e/r5f/release/ti.drv.gpio.aer5f\
				$(PDK_PATH)/drv/pmic/lib/j721e_evm/r5f/release/pmic.aer5f\
				$(PDK_PATH)/drv/pm/lib/j721e/r5f/release/pm_lib.aer5f\
				$(PDK_PATH)/board/lib/j721e_evm/r5f/release/ti.board.aer5f\
				$(PDK_PATH)/drv/sciclient/lib/j721e/mcu1_0/release/sciclient_direct.aer5f\
				$(PDK_PATH)/drv/sciclient/lib/j721e/mcu1_0/release/rm_pm_hal.aer5f\
				$(PDK_PATH)/osal/lib/freertos/j721e/r5f/release/ti.osal.aer5f\
				$(PDK_PATH)/kernel/lib/j721e/mcu1_0/release/ti.kernel.freertos.aer5f\
				$(PDK_PATH)/csl/lib/j721e/r5f/release/ti.csl.init.aer5f\
				$(PDK_PATH)/drv/sciclient/lib/j721e/mcu1_0/release/sciserver_tirtos.aer5f\
				$(PDK_PATH)/drv/spi/lib/j721e/r5f/release/ti.drv.spi.aer5f\
				$(PDK_PATH)/drv/ipc/lib/j721e/mcu1_0/release/ipc.aer5f

LD_FLAGS = 		-Werror\
				-Xlinker -q\
				-Xlinker -u\
				-Xlinker _c_int00\
				-Xlinker --display_error_number\
				-Xlinker --use_memcpy=fast\
				-Xlinker --diag_suppress=10063-D\
				-Xlinker --diag_suppress=10068-D\
				-Xlinker --diag_suppress=10083-D\
				-Xlinker -c\
				-mcpu=cortex-r5\
				-march=armv7-r\
				-Xlinker --diag_suppress=10230-D\
				-Xlinker -x\
				-Xlinker --zero_init=on