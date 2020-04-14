# Copyright (C) 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
SOMC_PLATFORM := yukon
SONY_ROOT:= device/sony/yukon/rootdir
DEVICE_PATH := device/sony/yukon
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# Specific Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# init
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/init.yukon.rc:root/init.yukon.rc \
    $(DEVICE_PATH)/rootdir/init.yukon.usb.rc:root/init.yukon.usb.rc \
    $(DEVICE_PATH)/rootdir/init.yukon.srv.rc:root/init.yukon.srv.rc 

# etc
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/system/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(DEVICE_PATH)/rootdir/system/etc/gps.conf:system/etc/gps.conf \
    $(DEVICE_PATH)/rootdir/system/etc/nfcee_access.xml:system/etc/nfcee_access.xml \
    $(DEVICE_PATH)/rootdir/system/etc/sec_config:system/etc/sec_config \
    $(DEVICE_PATH)/rootdir/system/etc/sensors/sensors_settings:system/etc/sensors/sensors_settings

# QMI
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/system/etc/data/dsi_config.xml:system/etc/data/dsi_config.xml \
    $(DEVICE_PATH)/rootdir/system/etc/data/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    $(DEVICE_PATH)/rootdir/system/etc/data/qmi_config.xml:system/etc/data/qmi_config.xml    
    
# Media
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(SONY_ROOT)/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(SONY_ROOT)/system/etc/media_profiles.xml:system/etc/media_profiles.xml

# Qualcom WiFi
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(SONY_ROOT)/system/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

# Qualcom BT
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh

# Keylayout
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/usr/keylayout/msm8226-tapan-snd-card_Button_Jack.kl:system/usr/keylayout/msm8226-tapan-snd-card_Button_Jack.kl \
    $(SONY_ROOT)/system/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Device Specific Hardware
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml
    
# APN list
PRODUCT_COPY_FILES += \
    device/sample/etc/old-apns-conf.xml:system/etc/old-apns-conf.xml \
    device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.bt.hci_transport=smd \
    ro.bt.bdaddr_path=/data/vendor/bluetooth/bluetooth_bdaddr
    
# Wi-Fi interface name
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# System prop for NFC DT
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.port=I2C

# Camera Debug
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.hal.debug=0 \
    persist.camera.kpi.debug=0 \
    persist.camera.global.debug=0

# Disable Dual Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.dual.camera.mpo=0 \
    persist.camera.dc.frame.sync=0 \
    persist.camera.dcrf.enable=0

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.HAL3.enabled=0 \
    persist.camera.gyro.disable=1 \
    persist.camera.feature.cac=0 \
    persist.camera.ois.disable=0 \
    persist.camera.zsl.mode=1 \
    media.stagefright.less-secure=true \
    media.stagefright.legacyencoder=true

# Sensors debug
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.sensors.hal=0 \
    debug.qualcomm.sns.daemon=0 \
    debug.qualcomm.sns.hal=0 \
    debug.qualcomm.sns.libsensor1=0    
    
# RILD
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib/libril-qc-qmi-1.so \
    ril.subscription.types=NV,RUIM

# system prop for opengles version
# 196608 is decimal for 0x30000 to
# report major/minor versions as 3
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

# Limit dex2oat threads to improve thermals
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-threads=2 \
    dalvik.vm.image-dex2oat-threads=4

# Platform specific default properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.qmi.adb_logmask=0

# System props for the data modules
PRODUCT_PROPERTY_OVERRIDES += \
    ro.use_data_netmgrd=true \
    persist.data.netmgrd.qos.enable=true \
    ro.data.large_tcp_window_size=true

# Enable Power save functionality for modem
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.add_power_save=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.oem_socket=false

# System props for telephony System prop to turn on CdmaLTEPhone always
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnCdmaDevice=0

# Hardware composer
PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=true

# Hardware User Interface parameters
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=48 \
    ro.hwui.layer_cache_size=32 \
    ro.hwui.r_buffer_cache_size=4 \
    ro.hwui.path_cache_size=24 \
    ro.hwui.gradient_cache_size=1 \
    ro.hwui.drop_shadow_cache_size=5 \
    ro.hwui.texture_cache_flushrate=0.5 \
    ro.hwui.text_small_cache_width=1024 \
    ro.hwui.text_small_cache_height=1024 \
    ro.hwui.text_large_cache_width=2048 \
    ro.hwui.text_large_cache_height=1024

# DRM service
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# VIDC: debug_levels 1:ERROR 2:HIGH 4:LOW 0:NOLOGS 7:AllLOGS
PRODUCT_PROPERTY_OVERRIDES += \
    vidc.debug.level=1    
    
# aDSP sensors
## max rate
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qti.sensors.max_accel_rate=false \
    ro.qti.sensors.max_gyro_rate=false \
    ro.qti.sensors.max_mag_rate=false \
    ro.qti.sensors.max_geomag_rotv=50

## sensor type
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qti.sdk.sensors.gestures=false \
    ro.qti.sensors.pedometer=false \
    ro.qti.sensors.step_detector=false \
    ro.qti.sensors.step_counter=false \
    ro.qti.sensors.pam=false \
    ro.qti.sensors.scrn_ortn=false \
    ro.qti.sensors.smd=true \
    ro.qti.sensors.game_rv=false \
    ro.qti.sensors.georv=false \
    ro.qti.sensors.cmc=false \
    ro.qti.sensors.bte=false \
    ro.qti.sensors.fns=false \
    ro.qti.sensors.qmd=false \
    ro.qti.sensors.amd=false \
    ro.qti.sensors.rmd=false \
    ro.qti.sensors.vmd=false \
    ro.qti.sensors.gtap=false \
    ro.qti.sensors.tap=false \
    ro.qti.sensors.facing=false \
    ro.qti.sensors.tilt=false \
    ro.qti.sensors.tilt_detector=false \
    ro.qti.sensors.dpc=false \
    ro.qti.sensors.wu=false
     
# Platform Init
PRODUCT_PACKAGES += \
    init.yukon.pwr

# NFC packages
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    NfcNci \
    Tag

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm8226 \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libtinyalsa \
    libtinycompress \
    libaudioroute \
    tinymix \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcomvoiceprocessingdescriptors \
    libqcompostprocbundle

# GFX
PRODUCT_PACKAGES += \
    copybit.msm8226 \
    gralloc.msm8226 \
    hwcomposer.msm8226 \
    memtrack.msm8226 \
    libhdmi \
    libqdutils \
    libqdMetaData

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libstagefrighthw \
    libOmxCore \
    libmm-omxcore \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc    
    
# GPS
PRODUCT_PACKAGES += \
    gps.msm8226 \
    libloc_api_v02 \
    libloc_core \
    libloc_eng \
    libgps.utils \
    libloc_api_v02 \
    libloc_ds_api

# WLAN
PRODUCT_PACKAGES += \
    p2p_supplicant.conf \
    dhcpcd.conf \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

# CAMERA
PRODUCT_PACKAGES += \
    camera.msm8226 \
    libmmcamera_interface \
    libmmjpeg_interface \
    libmm-qcamera \
    libqomx_core
    
# OSS
PRODUCT_PACKAGES += \
    timekeep \
    TimeKeep \
    thermanager \
    macaddrsetup

# QCOM OSS
PRODUCT_PACKAGES += \
    librmnetctl
    
# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_PACKAGES += \
    libion \
    libxml2

# ExtendedSettings
PRODUCT_PACKAGES += \
    ExtendedSettings

# For android_filesystem_config.h
PRODUCT_PACKAGES += \
    fs_config_files    
    
# Telephony Packages (AOSP)
PRODUCT_PACKAGES += \
    InCallUI \
    Stk
