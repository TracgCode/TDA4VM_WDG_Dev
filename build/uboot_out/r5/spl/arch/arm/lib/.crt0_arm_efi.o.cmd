cmd_spl/arch/arm/lib/crt0_arm_efi.o := ~/ti/gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf/bin/arm-none-linux-gnueabihf-gcc -Wp,-MD,spl/arch/arm/lib/.crt0_arm_efi.o.d -nostdinc -isystem /home/james/ti/gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf/bin/../lib/gcc/arm-none-linux-gnueabihf/9.2.1/include -Ispl/include -Iinclude  -I/home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include    -I/home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include -include /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -DCONFIG_SPL_BUILD -D__ASSEMBLY__ -fno-PIE -gdwarf-4 -DCONFIG_THUMB2_KERNEL -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -mgeneral-regs-only -pipe -march=armv7-r -D__LINUX_ARM_ARCH__=7  -I/home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/mach-k3/include   -c -o spl/arch/arm/lib/crt0_arm_efi.o /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/lib/crt0_arm_efi.S

source_spl/arch/arm/lib/crt0_arm_efi.o := /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/lib/crt0_arm_efi.S

deps_spl/arch/arm/lib/crt0_arm_efi.o := \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/kconfig.h \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/spl/.h) \
    $(wildcard include/config/tpl/.h) \
    $(wildcard include/config/tools/.h) \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/vpl/build.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/spl/foo.h) \
    $(wildcard include/config/tools/foo.h) \
    $(wildcard include/config/tpl/foo.h) \
    $(wildcard include/config/vpl/foo.h) \
    $(wildcard include/config/spl/option.h) \
    $(wildcard include/config/spl/acme.h) \
    $(wildcard include/config/acme.h) \
    $(wildcard include/config/tpl/acme.h) \
    $(wildcard include/config/if/enabled/int.h) \
    $(wildcard include/config/spl/int/option.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/asm-generic/pe.h \

spl/arch/arm/lib/crt0_arm_efi.o: $(deps_spl/arch/arm/lib/crt0_arm_efi.o)

$(deps_spl/arch/arm/lib/crt0_arm_efi.o):
