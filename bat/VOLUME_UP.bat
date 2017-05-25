adb  shell sendevent /dev/input/event1 1 115 1   
adb  shell sendevent /dev/input/event1 0 0 0     

pause

adb  shell sendevent /dev/input/event1 1 115 0   
adb  shell sendevent /dev/input/event1 0 0 0     

pause