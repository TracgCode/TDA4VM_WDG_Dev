cmd_spl/drivers/i2c/built-in.o :=  rm -f spl/drivers/i2c/built-in.o; ~/ti/arm-gnu-toolchain-11.3.rel1-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-ar cDPrsT spl/drivers/i2c/built-in.o spl/drivers/i2c/i2c-uclass.o spl/drivers/i2c/i2c-gpio.o spl/drivers/i2c/omap24xx_i2c.o