cmd_u-boot-dtb.img := ./tools/mkimage -f auto -A arm -T firmware -C none -O u-boot -a 0x80800000 -e 0x80800000 -p 0x0 -n "U-Boot 2023.04-dirty for j721e board" -E  -b arch/arm/dts/k3-j721e-r5-common-proc-board.dtb  -d u-boot-nodtb.bin u-boot-dtb.img >/dev/null 