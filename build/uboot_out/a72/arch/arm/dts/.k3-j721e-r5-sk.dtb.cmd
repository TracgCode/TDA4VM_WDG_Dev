cmd_arch/arm/dts/k3-j721e-r5-sk.dtb := mkdir -p arch/arm/dts/ ; (cat /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/dts/k3-j721e-r5-sk.dts; echo '$(pound)include "k3-j721e-r5-sk-u-boot.dtsi"') > arch/arm/dts/.k3-j721e-r5-sk.dtb.pre.tmp;  cc -E -Wp,-MD,arch/arm/dts/.k3-j721e-r5-sk.dtb.d.pre.tmp -nostdinc -Iinclude  -I/home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include  -I/home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/include -include /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/linux/kconfig.h -I/home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/dts -I/home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/dts/include -I/home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include -D__ASSEMBLY__ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/dts/.k3-j721e-r5-sk.dtb.dts.tmp arch/arm/dts/.k3-j721e-r5-sk.dtb.pre.tmp ; ./scripts/dtc/dtc -O dtb -o arch/arm/dts/k3-j721e-r5-sk.dtb -b 0 -i /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/dts/ -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-graph_port -Wno-unique_unit_address -Wno-simple_bus_reg -Wno-pci_device_reg -Wno-pci_bridge -Wno-pci_device_bus_num  -@ -a 0x8 -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-graph_port -Wno-unique_unit_address -Wno-simple_bus_reg -Wno-pci_device_reg -Wno-pci_bridge -Wno-pci_device_bus_num  -@ -d arch/arm/dts/.k3-j721e-r5-sk.dtb.d.dtc.tmp arch/arm/dts/.k3-j721e-r5-sk.dtb.dts.tmp || (echo "Check /home/james/WDGdev/build/uboot_out/a72/arch/arm/dts/.k3-j721e-r5-sk.dtb.pre.tmp for errors" && false) ; sed "s:arch/arm/dts/.k3-j721e-r5-sk.dtb.pre.tmp:/home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/dts/k3-j721e-r5-sk.dts:" arch/arm/dts/.k3-j721e-r5-sk.dtb.d.pre.tmp arch/arm/dts/.k3-j721e-r5-sk.dtb.d.dtc.tmp > arch/arm/dts/.k3-j721e-r5-sk.dtb.d

source_arch/arm/dts/k3-j721e-r5-sk.dtb := /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/dts/k3-j721e-r5-sk.dts

deps_arch/arm/dts/k3-j721e-r5-sk.dtb := \
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
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/dts/k3-j721e.dtsi \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/dt-bindings/interrupt-controller/irq.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/dt-bindings/interrupt-controller/arm-gic.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/dt-bindings/pinctrl/k3.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/dt-bindings/soc/ti,sci_pm_domain.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/dts/k3-j721e-main.dtsi \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/dt-bindings/phy/phy.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/dt-bindings/mux/mux.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/dt-bindings/mux/ti-serdes.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/dts/k3-j721e-mcu-wakeup.dtsi \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/dts/k3-j721e-ddr-sk-lp4-4266.dtsi \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/dts/k3-j721e-ddr.dtsi \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/dts/k3-j721e-r5-sk-u-boot.dtsi \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/dts/k3-j721e-sk-u-boot.dtsi \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/include/dt-bindings/net/ti-dp83867.h \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/dts/k3-j721e-binman.dtsi \
    $(wildcard include/config/target/j721e/r5/evm.h) \
    $(wildcard include/config/spl/text/base.h) \
    $(wildcard include/config/k3/x509/swrv.h) \
    $(wildcard include/config/target/j721e/a72/evm.h) \
    $(wildcard include/config/k3/atf/load/addr.h) \
    $(wildcard include/config/text/base.h) \
  /home/james/ti-processor-sdk-linux-adas-j721e-evm-09_00_01_03/board-support/u-boot-2023.04+gitAUTOINC+bd74e615a6-gbd74e615a6/arch/arm/dts/k3-binman.dtsi \
    $(wildcard include/config/arm64.h) \

arch/arm/dts/k3-j721e-r5-sk.dtb: $(deps_arch/arm/dts/k3-j721e-r5-sk.dtb)

$(deps_arch/arm/dts/k3-j721e-r5-sk.dtb):
