cmd_drivers/spi/built-in.o :=  rm -f drivers/spi/built-in.o; ~/ti/arm-gnu-toolchain-11.3.rel1-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-ar cDPrsT drivers/spi/built-in.o drivers/spi/spi-uclass.o drivers/spi/cadence_qspi.o drivers/spi/cadence_qspi_apb.o drivers/spi/spi-mem.o