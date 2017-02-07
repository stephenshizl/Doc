adb reboot bootloader
pause

fastboot devices
pause

fastboot flash aboot emmc\emmc_appsboot.mbn
fastboot reboot-bootloader

fastboot devices
pause

fastboot erase boot
fastboot flash boot emmc\boot.img

fastboot erase system
fastboot flash system emmc\system.img

fastboot erase userdata
fastboot flash userdata emmc\userdata.img

fastboot erase recovery
fastboot flash recovery emmc\recovery.img

fastboot erase splash
fastboot flash splash emmc\splash.img

pause

fastboot reboot
pause
