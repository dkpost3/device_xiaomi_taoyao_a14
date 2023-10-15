echo 'Starting to clone stuffs needed to build for taoyao'


# Vendor
echo 'Cloning vendor tree'
rm -rf vendor/xiaomi/taoyao && git clone git@github.com:xiaomi-taoyao/vendor_xiaomi_taoyao.git vendor/xiaomi/taoyao


# Kernel
echo 'Cloning kernel tree'
rm -rf device/xiaomi/taoyao-kernel && git clone git@github.com:xiaomi-taoyao/device_xiaomi_taoyao-kernel.git device/xiaomi/taoyao-kernel

# Kernel
echo 'Cloning kernel header'
rm -rf kernel/xiaomi/sm8350 && git clone git@github.com:xiaomi-taoyao/kernel_xiaomi_sm8350.git kernel/xiaomi/sm8350


# Gapps
#echo 'Cloning gapps'
#rm -rf vendor/gms && rm -rf vendor/gapps &&  git clone --depth=1 https://gitlab.com/vherawidatama/vendor_gms_mod.git vendor/gapps


# Camera
#echo 'Cloning Leica Camera'
#git clone https://gitlab.com/vherawidatama/proprietary_vendor_xiaomi_camera.git -b topaz-leica vendor/xiaomi/camera

# Hardware Xiaomi
echo 'Cloning Hardware Xiaomi'
rm -rf hardware/xiaomi && git clone git@github.com:xiaomi-taoyao/hardware_xiaomi.git hardware/xiaomi


echo 'delete vendorsetup.sh from device tree once this is done'
mv device/xiaomi/taoyao/vendorsetup.sh device/xiaomi/taoyao/vendorsetup.bak
