cmd_cmd/dfu.o := ~/ti/gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf/bin/arm-none-linux-gnueabihf-gcc -Wp,-MD,cmd/.dfu.o.d -nostdinc -isystem /home/james/ti/gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf/bin/../lib/gcc/arm-none-linux-gnueabihf/9.2.1/include -Iinclude  -I/home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include    -I/home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include -include /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/kconfig.h  -I/home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/cmd -Icmd -D__KERNEL__ -D__UBOOT__ -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -std=gnu11 -fshort-wchar -fno-strict-aliasing -fno-PIE -Os -fno-stack-protector -fno-delete-null-pointer-checks -Wno-pointer-sign -Wno-stringop-truncation -Wno-array-bounds -Wno-stringop-overflow -Wno-maybe-uninitialized -fmacro-prefix-map=/home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/= -gdwarf-4 -fstack-usage -Wno-format-nonliteral -Wno-address-of-packed-member -Wno-unused-but-set-variable -Werror=date-time -Wno-packed-not-aligned -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mword-relocations -fno-pic -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -mgeneral-regs-only -pipe -march=armv7-r -D__LINUX_ARM_ARCH__=7  -I/home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/mach-k3/include    -DKBUILD_BASENAME='"dfu"'  -DKBUILD_MODNAME='"dfu"' -c -o cmd/dfu.o /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/cmd/dfu.c

source_cmd/dfu.o := /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/cmd/dfu.c

deps_cmd/dfu.o := \
    $(wildcard include/config/dfu/over/usb.h) \
    $(wildcard include/config/dfu/timeout.h) \
    $(wildcard include/config/dfu/over/tftp.h) \
    $(wildcard include/config/sys/maxargs.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/kconfig.h \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/spl/.h) \
    $(wildcard include/config/tpl/.h) \
    $(wildcard include/config/tools/.h) \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/vpl/build.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/tools/foo.h) \
    $(wildcard include/config/spl/foo.h) \
    $(wildcard include/config/tpl/foo.h) \
    $(wildcard include/config/vpl/foo.h) \
    $(wildcard include/config/option.h) \
    $(wildcard include/config/acme.h) \
    $(wildcard include/config/spl/acme.h) \
    $(wildcard include/config/tpl/acme.h) \
    $(wildcard include/config/if/enabled/int.h) \
    $(wildcard include/config/int/option.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/common.h \
  include/config.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/configs/j721e_evm.h \
    $(wildcard include/config/target/j721e/a72/evm.h) \
    $(wildcard include/config/target/j7200/a72/evm.h) \
    $(wildcard include/config/target/j721e/r5/evm.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/sizes.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/const.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/configs/ti_armv7_common.h \
    $(wildcard include/config/nr/dram/banks.h) \
    $(wildcard include/config/nor/boot.h) \
    $(wildcard include/config/qspi/boot.h) \
    $(wildcard include/config/am43xx.h) \
    $(wildcard include/config/spl/text/base.h) \
    $(wildcard include/config/spl/os/boot.h) \
    $(wildcard include/config/mtd/raw/nand.h) \
    $(wildcard include/config/text/base.h) \
    $(wildcard include/config/cmd/net.h) \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/distro/defaults.h) \
    $(wildcard include/config/cmd/pxe.h) \
    $(wildcard include/config/cmd/dhcp.h) \
    $(wildcard include/config/cmd/mmc.h) \
    $(wildcard include/config/cmd/usb.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/config.h \
    $(wildcard include/config/arch/ls1021a.h) \
    $(wildcard include/config/fsl/layerscape.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/kconfig.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/config_fallbacks.h \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/spl/max/size.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/errno.h \
    $(wildcard include/config/errno/str.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/errno.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/time.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/typecheck.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/types.h \
    $(wildcard include/config/uid16.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/posix_types.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/stddef.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/cc/has/asm/inline.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/compiler_attributes.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/compiler-gcc.h \
    $(wildcard include/config/retpoline.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/posix_types.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/types.h \
    $(wildcard include/config/phys/64bit.h) \
    $(wildcard include/config/dma/addr/t/64bit.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/asm-generic/int-ll64.h \
  /home/james/ti/gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf/lib/gcc/arm-none-linux-gnueabihf/9.2.1/include/stdbool.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/printk.h \
    $(wildcard include/config/loglevel.h) \
    $(wildcard include/config/log.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/log.h \
    $(wildcard include/config/log/max/level.h) \
    $(wildcard include/config/panic/hang.h) \
    $(wildcard include/config/log/error/return.h) \
    $(wildcard include/config/logf/file.h) \
    $(wildcard include/config/logf/line.h) \
    $(wildcard include/config/logf/func.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/stdio.h \
    $(wildcard include/config/tpl/serial.h) \
    $(wildcard include/config/spl/serial.h) \
    $(wildcard include/config/console/flush/support.h) \
  /home/james/ti/gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf/lib/gcc/arm-none-linux-gnueabihf/9.2.1/include/stdarg.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linker_lists.h \
    $(wildcard include/config/linker/list/align.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/dm/uclass-id.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/bitops.h \
    $(wildcard include/config/sandbox.h) \
    $(wildcard include/config/sandbox/bits/per/long.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/asm-generic/bitsperlong.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/kernel.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/bitops.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/asm-generic/bitops/__ffs.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/asm-generic/bitops/__fls.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/asm-generic/bitops/fls.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/asm-generic/bitops/fls64.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/proc-armv/system.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/list.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/poison.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/string.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/string.h \
    $(wildcard include/config/use/arch/memcpy.h) \
    $(wildcard include/config/use/arch/memmove.h) \
    $(wildcard include/config/use/arch/memset.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/linux_string.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/u-boot.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/asm-generic/u-boot.h \
    $(wildcard include/config/arm.h) \
    $(wildcard include/config/mpc8xx.h) \
    $(wildcard include/config/e500.h) \
    $(wildcard include/config/mpc86xx.h) \
    $(wildcard include/config/m68k.h) \
    $(wildcard include/config/mpc83xx.h) \
    $(wildcard include/config/extra/clock.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/u-boot-arm.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/vsprintf.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/command.h \
    $(wildcard include/config/sys/longhelp.h) \
    $(wildcard include/config/auto/complete.h) \
    $(wildcard include/config/cmd/run.h) \
    $(wildcard include/config/cmd/memory.h) \
    $(wildcard include/config/cmd/i2c.h) \
    $(wildcard include/config/cmd/itest.h) \
    $(wildcard include/config/cmd/pci.h) \
    $(wildcard include/config/cmd/setexpr.h) \
    $(wildcard include/config/cmd/bootd.h) \
    $(wildcard include/config/cmd/bootm.h) \
    $(wildcard include/config/cmd/nvedit/efi.h) \
    $(wildcard include/config/cmdline.h) \
    $(wildcard include/config/needs/manual/reloc.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/env.h \
    $(wildcard include/config/env/import/fdt.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/compiler.h \
  /home/james/ti/gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf/lib/gcc/arm-none-linux-gnueabihf/9.2.1/include/stddef.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/byteorder.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/byteorder/little_endian.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/byteorder/swab.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/byteorder/generic.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/watchdog.h \
    $(wildcard include/config/watchdog.h) \
    $(wildcard include/config/hw/watchdog.h) \
    $(wildcard include/config/mpc85xx.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/cyclic.h \
    $(wildcard include/config/cyclic.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/dfu.h \
    $(wildcard include/config/set/dfu/alt/info.h) \
    $(wildcard include/config/dfu/mmc.h) \
    $(wildcard include/config/dfu/nand.h) \
    $(wildcard include/config/dfu/ram.h) \
    $(wildcard include/config/dfu/sf.h) \
    $(wildcard include/config/dfu/mtd.h) \
    $(wildcard include/config/dfu/virt.h) \
    $(wildcard include/config/dfu/write/alt.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/mmc.h \
    $(wildcard include/config/mmc/hs200/support.h) \
    $(wildcard include/config/mmc/uhs/support.h) \
    $(wildcard include/config/dm/mmc.h) \
    $(wildcard include/config/mmc/hs400/es/support.h) \
    $(wildcard include/config/mmc/pwrseq.h) \
    $(wildcard include/config/mmc/hs400/support.h) \
    $(wildcard include/config/blk.h) \
    $(wildcard include/config/mmc/write.h) \
    $(wildcard include/config/mmc/hw/partitioning.h) \
    $(wildcard include/config/dm/regulator.h) \
    $(wildcard include/config/mmc/spi.h) \
    $(wildcard include/config/sys/mmc/env/part.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/dma-direction.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/part.h \
    $(wildcard include/config/partition/uuids.h) \
    $(wildcard include/config/partition/type/guid.h) \
    $(wildcard include/config/dos/partition.h) \
    $(wildcard include/config/partitions.h) \
    $(wildcard include/config/spl/fs/ext4.h) \
    $(wildcard include/config/spl/fs/fat.h) \
    $(wildcard include/config/sys/mmcsd/raw/mode/u/boot/partition.h) \
    $(wildcard include/config/efi/partition.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/blk.h \
    $(wildcard include/config/sys/64bit/lba.h) \
    $(wildcard include/config/spl/legacy/block.h) \
    $(wildcard include/config/lba48.h) \
    $(wildcard include/config/block/cache.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/efi.h \
    $(wildcard include/config/efi/stub/64bit.h) \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/efi/ram/size.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/linkage.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/linkage.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/ide.h \
    $(wildcard include/config/sys/ide/maxdevice.h) \
    $(wildcard include/config/sys/ide/maxbus.h) \
    $(wildcard include/config/sys/ata/base/addr.h) \
    $(wildcard include/config/of/ide/fixup.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/uuid.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/part_efi.h \
    $(wildcard include/config/efi/partition/entries/numbers.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/spi_flash.h \
    $(wildcard include/config/dm/spi/flash.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/mtd/spi-nor.h \
    $(wildcard include/config/spi/flash/bar.h) \
    $(wildcard include/config/spi/flash/tiny.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/mtd.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/dm/device.h \
    $(wildcard include/config/devres.h) \
    $(wildcard include/config/of/platdata/rt.h) \
    $(wildcard include/config/of/real.h) \
    $(wildcard include/config/dm/dma.h) \
    $(wildcard include/config/iommu.h) \
    $(wildcard include/config/of/control.h) \
    $(wildcard include/config/acpigen.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/dm/ofnode.h \
    $(wildcard include/config/ofnode/multi/tree.h) \
    $(wildcard include/config/dm/inline/ofnode.h) \
    $(wildcard include/config/dm.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/fdtdec.h \
    $(wildcard include/config/of/embed.h) \
    $(wildcard include/config/of/board.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/libfdt.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/libfdt_env.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/../../scripts/dtc/libfdt/libfdt.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/../../scripts/dtc/libfdt/libfdt_env.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/../../scripts/dtc/libfdt/fdt.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/pci.h \
    $(wildcard include/config/sys/pci/64bit.h) \
    $(wildcard include/config/dm/pci/compat.h) \
    $(wildcard include/config/pci/sriov.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/pci_ids.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/dm/pci.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/dm/of.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/global_data.h \
    $(wildcard include/config/fsl/esdhc.h) \
    $(wildcard include/config/fsl/esdhc/imx.h) \
    $(wildcard include/config/u/qe.h) \
    $(wildcard include/config/at91family.h) \
    $(wildcard include/config/sys/icache/off.h) \
    $(wildcard include/config/sys/dcache/off.h) \
    $(wildcard include/config/resv/ram.h) \
    $(wildcard include/config/arch/omap2plus.h) \
    $(wildcard include/config/fsl/lsch3.h) \
    $(wildcard include/config/sys/fsl/has/dp/ddr.h) \
    $(wildcard include/config/arch/imx8.h) \
    $(wildcard include/config/imx/sentinel.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/asm-generic/global_data.h \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/video.h) \
    $(wildcard include/config/post.h) \
    $(wildcard include/config/board/types.h) \
    $(wildcard include/config/pre/console/buffer.h) \
    $(wildcard include/config/of/platdata/driver/rt.h) \
    $(wildcard include/config/timer.h) \
    $(wildcard include/config/of/live.h) \
    $(wildcard include/config/multi/dtb/fit.h) \
    $(wildcard include/config/trace.h) \
    $(wildcard include/config/sys/i2c/legacy.h) \
    $(wildcard include/config/sys/malloc/f/len.h) \
    $(wildcard include/config/pci/bootdelay.h) \
    $(wildcard include/config/console/record.h) \
    $(wildcard include/config/bootstage.h) \
    $(wildcard include/config/bloblist.h) \
    $(wildcard include/config/handoff.h) \
    $(wildcard include/config/translation/offset.h) \
    $(wildcard include/config/generate/acpi/table.h) \
    $(wildcard include/config/generate/smbios/table.h) \
    $(wildcard include/config/event.h) \
    $(wildcard include/config/event/dynamic.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/event_internal.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/event.h \
    $(wildcard include/config/event/debug.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/dm/ofnode_decl.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/membuff.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/build_bug.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/asm-offsets.h \
  include/generated/generic-asm-offsets.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/dm/of_access.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/phy_interface.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/string.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/dm/tag.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/jffs2/load_kernel.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/mtd/mtd.h \
    $(wildcard include/config/sys/nand/max/oobfree.h) \
    $(wildcard include/config/sys/nand/max/eccpos.h) \
    $(wildcard include/config/mtd/partitions.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/compat.h \
    $(wildcard include/config/xen.h) \
    $(wildcard include/config/lbdaf.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/console.h \
    $(wildcard include/config/console/mux.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/stdio_dev.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/malloc.h \
    $(wildcard include/config/sys/malloc/simple.h) \
    $(wildcard include/config/valgrind.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/processor.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/atomic.h \
    $(wildcard include/config/smp.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/asm-generic/atomic.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/ptrace.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/proc-armv/ptrace.h \
    $(wildcard include/config/sys/thumb/build.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/proc-armv/processor.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/proc-armv/domain.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/err.h \
    $(wildcard include/config/err/ptr/offset.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/mtd/mtd-abi.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/div64.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/mtd/cfi.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/spi-mem.h \
    $(wildcard include/config/spi/mem.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/usb/composite.h \
    $(wildcard include/config/sys/cacheline/size.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/usb/ch9.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/unaligned.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/unaligned/le_byteshift.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/unaligned/be_byteshift.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/unaligned/generic.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/usb/gadget.h \
    $(wildcard include/config/usb/gadget/dualspeed.h) \
    $(wildcard include/config/usb/otg.h) \
    $(wildcard include/config/dm/usb/gadget.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/usb.h \
    $(wildcard include/config/dm/usb.h) \
    $(wildcard include/config/usb/musb/host.h) \
    $(wildcard include/config/usb/ehci/hcd.h) \
    $(wildcard include/config/usb/storage.h) \
    $(wildcard include/config/usb/host/ether.h) \
    $(wildcard include/config/usb/keyboard.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/usb_defs.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/cache.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/system.h \
    $(wildcard include/config/armv8/psci.h) \
    $(wildcard include/config/armv7/lpae.h) \
    $(wildcard include/config/cpu/v7a.h) \
    $(wildcard include/config/sys/arm/cache/writethrough.h) \
    $(wildcard include/config/sys/arm/cache/writealloc.h) \
    $(wildcard include/config/sys/arm/cache/writeback.h) \
    $(wildcard include/config/armv7/psci.h) \
    $(wildcard include/config/sys/noncached/memory.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include/asm/barriers.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/bitmap.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/g_dnl.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/net.h \
    $(wildcard include/config/sys/rx/eth/buffer.h) \
    $(wildcard include/config/dm/eth.h) \
    $(wildcard include/config/api.h) \
    $(wildcard include/config/efi/loader.h) \
    $(wildcard include/config/dm/dsa.h) \
    $(wildcard include/config/bootp/dns2.h) \
    $(wildcard include/config/net.h) \
    $(wildcard include/config/bootp/max/root/path/len.h) \
    $(wildcard include/config/cmd/dns.h) \
    $(wildcard include/config/cmd/ping.h) \
    $(wildcard include/config/cmd/cdp.h) \
    $(wildcard include/config/cmd/sntp.h) \
    $(wildcard include/config/netconsole.h) \
    $(wildcard include/config/reset/phy/r.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/if_ether.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/rand.h \

cmd/dfu.o: $(deps_cmd/dfu.o)

$(deps_cmd/dfu.o):
