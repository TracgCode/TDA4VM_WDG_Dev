cmd_drivers/scsi/built-in.o :=  rm -f drivers/scsi/built-in.o; ~/ti/arm-gnu-toolchain-11.3.rel1-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-ar cDPrsT drivers/scsi/built-in.o drivers/scsi/scsi-uclass.o drivers/scsi/scsi.o drivers/scsi/scsi_bootdev.o