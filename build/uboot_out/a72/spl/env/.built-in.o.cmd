cmd_spl/env/built-in.o :=  rm -f spl/env/built-in.o; ~/ti/arm-gnu-toolchain-11.3.rel1-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-ar cDPrsT spl/env/built-in.o spl/env/common.o spl/env/env.o spl/env/attr.o spl/env/flags.o spl/env/nowhere.o