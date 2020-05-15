
# delay execution to ensure the system is ready first, and avoid clashing
#/system/bin

  sleep 10
#Script For Disable Yellow Flashlight From NxtSys
#I Remake For Working In Android 10
#this old script from old module by NxtSys

# echo '0' > /sys/devices/soc/qpnp-flash-led-23/leds/led:torch_1/max_brightness
echo 0 > /sys/class/leds/led:flash_1/max_brightness 
echo 0 > /sys/class/leds/led:torch_1/max_brightness 
echo 0 > /sys/class/leds/torch-light1/max_brightness


#create folder in init.d
mkdir /system/etc/init.d
#copy parameter
cp system/etc/Flashlight/Flashlight.sh /system/etc/init.d/
#excution
cd /system/etc/init.d/
chmod +x Flashlight.sh
./Flashlight.sh