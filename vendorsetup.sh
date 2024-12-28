echo 'Cloning stuffs needed to build for Haydn'

# Common Tree
echo 'Cloning Common Trees'
git clone --depth=1 https://github.com/JARVIS-4356/android_device_xiaomi_sm8350-common.git -b clover-15 device/xiaomi/sm8350-common

# Haydn Vendor
echo 'Cloning Haydn Vendor'
git clone --depth=1 https://github.com/JARVIS-4356/proprietary_vendor_xiaomi_haydn.git -b lineage-22 vendor/xiaomi/haydn

# Common Vendor
echo 'Cloning Common Vendor'
git clone --depth=1 https://github.com/JARVIS-4356/proprietary_vendor_xiaomi_sm8350-common.git -b lineage-22 vendor/xiaomi/sm8350-common

# Kernel
echo 'Cloning kernel tree'
git clone --depth=1  https://github.com/JARVIS-4356/android_kernel_xiaomi_sm8350.git --recursive -b lineage-21 kernel/xiaomi/sm8350

# Firmware
echo 'Cloning firmware'
git clone --depth=1 https://gitlab.com/Alucard_Storm/vendor_xiaomi_haydn-firmware -b fourteen vendor/xiaomi/haydn-firmware

# Hardware
echo 'Cloning hardware/xiaomi'
rm -rf hardware/xiaomi && git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi -b lineage-22 hardware/xiaomi

# Camera
echo 'Cloning Leica camera'
git clone --depth=1 https://gitlab.com/Alucard_Storm/haydn-miuicamera -b fourteen-leica vendor/xiaomi/haydn-miuicamera
rm -rf hardware/xiaomi/megvii


echo 'delete vendorsetup.sh from device tree once this is done'