cmd_disk/built-in.o :=  rm -f disk/built-in.o; ~/ti/arm-gnu-toolchain-11.3.rel1-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-ar cDPrsT disk/built-in.o disk/part.o disk/disk-uclass.o disk/part_dos.o disk/part_efi.o