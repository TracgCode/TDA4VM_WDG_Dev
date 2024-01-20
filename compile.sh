function compile () {
		cd ${MCUSW_SDK_PATH}/mcal_drv/mcal/examples/Wdg/
		/bin/echo \# Compiling j721e_evm:j721e:mcu1_0:release:wdg_app:WdgApp.c
		/bin/mkdir -p ${MCUSW_SDK_PATH}/binary/wdg_app/obj/j721e_evm/mcu1_0/release/
		${TILLVM_PATH}/bin/tiarmclang -MMD ${TIARMCLANG_CC_FLAG} ${WDG_INCLUDE_PATH} -c -x c WdgApp.c -o ${MCUSW_SDK_PATH}/binary/wdg_app/obj/j721e_evm/mcu1_0/release/WdgApp.oer5f -MF ${MCUSW_SDK_PATH}/binary/wdg_app/obj/j721e_evm/mcu1_0/release/little/.deps/WdgApp.d
		${TILLVM_PATH}/bin/tiarmclang ${TIARMCLANG_CC_FLAG} ${WDG_INCLUDE_PATH} -c -x c WdgApp.c -o ${MCUSW_SDK_PATH}/binary/wdg_app/obj/j721e_evm/mcu1_0/release/WdgApp.oer5f
		/bin/echo \# Linking into ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release.xer5f...
		/bin/echo \#
		${TILLVM_PATH}/bin/tiarmclang ${TIARMCLANG_LD_FLAG} ${WDG_LINK_FILES}   
		/bin/echo \#
		/bin/echo \# ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release.xer5f created.
		/bin/echo \#
		/bin/echo \# Generating stripped image into ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release_strip.xer5f...
		/bin/echo \#
		/bin/rm -f  ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release_strip.xer5f
		${TILLVM_PATH}/bin/tiarmstrip -p ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release.xer5f -o ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release_strip.xer5f
		make -C ${MCUSW_SDK_PATH}/mcal_drv/mcal/examples/Wdg  sbl_appimagegen MCUSW_INSTALL_PATH=${MCUSW_SDK_PATH}
		/bin/echo \# Compiling j721e_evm:j721e:mcu1_0:release:wdg_app:WdgApp.c
		/bin/mkdir -p ${MCUSW_SDK_PATH}/binary/wdg_app/obj/j721e_evm/mcu1_0/release/
		${TILLVM_PATH}/bin/tiarmclang -MMD ${TIARMCLANG_CC_FLAG} ${WDG_INCLUDE_PATH} -c -x c WdgApp.c -o ${MCUSW_SDK_PATH}/binary/wdg_app/obj/j721e_evm/mcu1_0/release/WdgApp.oer5f -MF ${MCUSW_SDK_PATH}/binary/wdg_app/obj/j721e_evm/mcu1_0/release/little/.deps/WdgApp.d
		${TILLVM_PATH}/bin/tiarmclang ${TIARMCLANG_CC_FLAG} ${WDG_INCLUDE_PATH} -c -x c WdgApp.c -o ${MCUSW_SDK_PATH}/binary/wdg_app/obj/j721e_evm/mcu1_0/release/WdgApp.oer5f
		/bin/echo \# Linking into ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release.xer5f...
		/bin/echo \#
		${TILLVM_PATH}/bin/tiarmclang ${TIARMCLANG_LD_FLAG} ${WDG_LINK_FILES}   
		/bin/echo \#
		/bin/echo \# ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release.xer5f created.
		/bin/echo \#
		/bin/echo \# Generating stripped image into ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release_strip.xer5f...
		/bin/echo \#
		/bin/rm -f  ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release_strip.xer5f
		${TILLVM_PATH}/bin/tiarmstrip -p ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release.xer5f -o ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release_strip.xer5f
		/bin/rm -f -f clean_appimagerprc ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release_BE.appimage ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release.rprc
		mono ${PDK_SDK_PATH}/packages/ti/boot/sbl/tools/out2rprc/bin/out2rprc.exe ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release.xer5f ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release.rprc >> ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/temp_stdout.txt
		/bin/chmod a+x ${PDK_SDK_PATH}/packages/ti/boot/sbl/tools/multicoreImageGen/bin/MulticoreImageGen
		${PDK_SDK_PATH}/packages/ti/boot/sbl/tools/multicoreImageGen/bin/MulticoreImageGen LE 55 ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release.appimage                      8 ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release.rprc >> ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/temp_stdout.txt
		${PDK_SDK_PATH}/packages/ti/boot/sbl/tools/multicoreImageGen/bin/MulticoreImageGen BE 55 ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release_BE.appimage 8 ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release.rprc >> ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/temp_stdout.txt
		/bin/chmod a+x ${PDK_SDK_PATH}/packages/ti/build/makerules/x509CertificateGen.sh
		${PDK_SDK_PATH}/packages/ti/build/makerules/x509CertificateGen.sh -b ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release.appimage -o ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release.appimage.signed    -c R5 -l 0x41C00100 -k ${PDK_SDK_PATH}/packages/ti/build/makerules/k3_dev_mpk.pem
		/bin/echo \# SBL App image ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release.appimage and ${MCUSW_SDK_PATH}/binary/wdg_app/bin/j721e_evm/wdg_app_mcu1_0_release_BE.appimage created.
	}

compile