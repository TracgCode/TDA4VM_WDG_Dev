cmd_drivers/gpio/built-in.o :=  rm -f drivers/gpio/built-in.o; ~/ti/gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf/bin/arm-none-linux-gnueabihf-ar cDPrsT drivers/gpio/built-in.o drivers/gpio/gpio-uclass.o drivers/gpio/pca953x_gpio.o drivers/gpio/da8xx_gpio.o