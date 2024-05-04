	.arch armv8-a+crc
	.file	"asm-offsets.c"
// GNU C11 (Arm GNU Toolchain 11.3.Rel1) version 11.3.1 20220712 (aarch64-none-linux-gnu)
//	compiled by GNU C version 4.8.5 20150623 (Red Hat 4.8.5-44), GMP version 6.2.1, MPFR version 3.1.6, MPC version 1.0.3, isl version isl-0.15-1-g835ea3a-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mstrict-align -mgeneral-regs-only -mbranch-protection=none -march=armv8-a+crc -mlittle-endian -mabi=lp64 -gdwarf-4 -Os -std=gnu11 -fno-builtin -ffreestanding -fshort-wchar -fno-strict-aliasing -fno-PIE -fno-delete-null-pointer-checks -fstack-usage -fno-stack-protector -ffunction-sections -fdata-sections -ffixed-r9 -fno-common -ffixed-x18
	.text
.Ltext0:
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, %function
main:
.LFB99:
	.file 1 "/home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/lib/asm-offsets.c"
	.loc 1 23 1 view -0
	.cfi_startproc
	.loc 1 95 2 view .LVU1
// /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/lib/asm-offsets.c:96: }
	.loc 1 96 1 is_stmt 0 view .LVU2
	mov	w0, 0	//,
	ret	
	.cfi_endproc
.LFE99:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "/home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF12
	.byte	0xc
	.4byte	.LASF13
	.4byte	.LASF14
	.4byte	.Ldebug_ranges0+0
	.8byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	0x53
	.4byte	0x40
	.uleb128 0x4
	.4byte	0x45
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x30
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x5
	.4byte	0x4c
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x2
	.byte	0x1f
	.byte	0x13
	.4byte	0x40
	.string	""
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x16
	.byte	0x5
	.4byte	0x29
	.8byte	.LFB99
	.8byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.LFB99
	.8byte	.LFE99-.LFB99
	.8byte	0
	.8byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.8byte	.LFB99
	.8byte	.LFE99
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF2:
	.string	"unsigned int"
.LASF16:
	.string	"main"
.LASF0:
	.string	"long unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.ascii	"GNU C11 11.3.1 20220712 -mstrict-align -mgeneral-regs-only -"
	.ascii	"mbranch-protection=none -march=armv8-a+crc -mlit"
	.string	"tle-endian -mabi=lp64 -gdwarf-4 -Os -std=gnu11 -fno-builtin -ffreestanding -fshort-wchar -fno-strict-aliasing -fno-PIE -fno-delete-null-pointer-checks -fstack-usage -fno-stack-protector -ffunction-sections -fdata-sections -ffixed-r9 -fno-common -ffixed-x18"
.LASF7:
	.string	"unsigned char"
.LASF1:
	.string	"char"
.LASF4:
	.string	"long int"
.LASF15:
	.string	"error_message"
.LASF11:
	.string	"_Bool"
.LASF5:
	.string	"long long int"
.LASF3:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF10:
	.string	"long double"
.LASF8:
	.string	"short int"
.LASF13:
	.string	"/home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/lib/asm-offsets.c"
.LASF14:
	.string	"/home/james/WDGdev/build/uboot_out/a72"
	.ident	"GCC: (Arm GNU Toolchain 11.3.Rel1) 11.3.1 20220712"
	.section	.note.GNU-stack,"",@progbits
