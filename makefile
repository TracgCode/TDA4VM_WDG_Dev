
include temp.mk

all: main_rtos.c wdg_compile

: '
	make \
		-C /home/james/ti-processor-sdk-rtos-j721e-evm-09_00_01_01/pdk_jacinto_09_00_01_04/packages/ti/build \
		-s \
		-j10 \
		TOOLS_INSTALL_PATH=~/ti \
		BUILD_PROFILE=release \
		BOARD=j721e_evm \
		CORE=mcu1_0 \
		ipc_echo_testb_freertos'