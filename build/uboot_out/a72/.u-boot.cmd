cmd_u-boot := ~/ti/arm-gnu-toolchain-11.3.rel1-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-ld.bfd -z noexecstack -pie --gc-sections -Bstatic  --no-dynamic-linker -z notext  --build-id=none -Ttext 0x80800000 -o u-boot -T u-boot.lds arch/arm/cpu/armv8/start.o --whole-archive  arch/arm/cpu/built-in.o  arch/arm/cpu/armv8/built-in.o  arch/arm/lib/built-in.o  arch/arm/mach-k3/built-in.o  board/ti/common/built-in.o  board/ti/j721e/built-in.o  boot/built-in.o  cmd/built-in.o  common/built-in.o  disk/built-in.o  drivers/built-in.o  drivers/usb/cdns3/built-in.o  drivers/usb/common/built-in.o  drivers/usb/dwc3/built-in.o  drivers/usb/emul/built-in.o  drivers/usb/eth/built-in.o  drivers/usb/gadget/built-in.o  drivers/usb/gadget/udc/built-in.o  drivers/usb/host/built-in.o  drivers/usb/isp1760/built-in.o  drivers/usb/mtu3/built-in.o  drivers/usb/musb-new/built-in.o  drivers/usb/musb/built-in.o  drivers/usb/phy/built-in.o  drivers/usb/ulpi/built-in.o  env/built-in.o  fs/built-in.o  lib/built-in.o  net/built-in.o --no-whole-archive -L /home/james/ti/arm-gnu-toolchain-11.3.rel1-x86_64-aarch64-none-linux-gnu/bin/../lib/gcc/aarch64-none-linux-gnu/11.3.1 -lgcc -Map u-boot.map;  true