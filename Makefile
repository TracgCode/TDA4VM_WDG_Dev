include compile_flags.mak
include utils.mak
-include build/deps/*.d

.PHONY: all clean u-boot

# Build Paths
SCI_PATH ?= $(HOME)/ti-processor-sdk-rtos-j721e-evm-09_00_01_01/pdk_jacinto_09_00_01_04/packages/ti/drv/sciclient
PDK_PATH ?= $(HOME)/ti-processor-sdk-rtos-j721e-evm-09_00_01_01/pdk_jacinto_09_00_01_04/packages/ti
PREBUILD_IMAGES ?= $(HOME)/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/prebuilt-images
UBOOT_PATH ?= $(HOME)/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6

# Build Profiles
SOC ?= j721e
PROFILE ?= release

# Sources and Objects
SRCS = $(wildcard src/*.c)
OBJS = $(patsubst src%,build%,$(SRCS:.c=.oer5f))

all: build/wdg_app_mcu1_0_strip.xer5f
	echo Done

build/images:
	-mkdir build/images

boot-images: build/wdg_app_mcu1_0_strip.xer5f
	echo Building u-boot image

	rm $(PREBUILD_IMAGES)/ti-dm/j721e/ipc_echo_testb_mcu1_0_release_strip.xer5f
	cp build/wdg_app_mcu1_0_strip.xer5f $(PREBUILD_IMAGES)/ti-dm/j721e/ipc_echo_testb_mcu1_0_release_strip.xer5f

	make -C $(UBOOT_PATH) ARCH=arm CROSS_COMPILE=$(AARCH64TOOLS) j721e_evm_a72_defconfig O=$(shell pwd)/build/uboot_out/a72 -j$(shell nproc)
	make -C $(UBOOT_PATH) ARCH=arm CROSS_COMPILE=$(AARCH64TOOLS) O=$(shell pwd)/build/uboot_out/a72 \
			BINMAN_INDIRS=$(PREBUILD_IMAGES) BL31=$(PREBUILD_IMAGES)/bl31.bin TEE=$(PREBUILD_IMAGES)/bl32.bin -j$(shell nproc)

	make -C $(UBOOT_PATH) ARCH=arm CROSS_COMPILE=$(ARMHFTOOLS) j721e_evm_r5_defconfig O=$(shell pwd)/build/uboot_out/a72 -j$(shell nproc)
	make -C $(UBOOT_PATH) ARCH=arm CROSS_COMPILE=$(ARMHFTOOLS) O=$(shell pwd)/build/uboot_out/r5 \
			BINMAN_INDIRS=$(PREBUILD_IMAGES) -j$(shell nproc)

copy-boot-images: build/images build/uboot_out/a72/tispl.bin build/uboot_out/a72/u-boot.img build/uboot_out/r5/tiboot3.bin build/uboot_out/r5/sysfw.itb
	cp build/uboot_out/a72/tispl.bin build/images/tispl.bin
	cp build/uboot_out/a72/u-boot.img build/images/u-boot.img

	cp build/uboot_out/r5/tiboot3.bin build/images/tiboot3.bin
	cp build/uboot_out/r5/sysfw.itb build/images/sysfw.itb

	sudo cp build/images/* /mnt/BOOT/
# BINMAN_INDIRS=~/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/prebuilt-images

build/%.oer5f: src/%.c
	echo Building source target $@
	$(CLANG) $< $(CC_PATHS) $(CC_FLAGS) -o $@

build/wdg_app_mcu1_0.xer5f: $(OBJS)
	echo Linking target $@
	$(CLANG) $(LD_PATHS) $(LD_FLAGS) -o $@

build/wdg_app_mcu1_0_strip.xer5f: build/wdg_app_mcu1_0.xer5f
	echo Stripping image $^
	$(STRIPER) -p $^ -o $@

clean: 
	rm -rf build/*er5f
	rm -rf build/deps/*