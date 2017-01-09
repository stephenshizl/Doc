adb remount
adb push  lib\libc.so  /system/lib/
adb push  lib\libc_malloc_debug_leak.so  /system/lib/
adb push  lib\libc_malloc_debug_qemu.so  /system/lib/
adb push  lib\libstdc++.so  /system/lib/

adb push  lib64\libc.so  /system/lib64/
adb push  lib64\libc_malloc_debug_leak.so  /system/lib64/
adb push  lib64\libc_malloc_debug_qemu.so  /system/lib64/
adb push  lib64\libstdc++.so  /system/lib64/

pause