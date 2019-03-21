# Release name
PRODUCT_RELEASE_NAME := U1005

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# prebuilt kernel
TARGET_PREBUILT_KERNEL := device/cube/U1005/kernel

# Charger
PRODUCT_PACKAGES += \
   charger_res_images \
   charger

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/fstab.mt8173:root/fstab.mt8173 \
    $(LOCAL_PATH)/recovery/init.recovery.mt8173.rc:root/init.recovery.mt8173.rc \
    $(LOCAL_PATH)/recovery/init.rc:root/init.rc \
    $(LOCAL_PATH)/recovery/init.recovery.vold_decrypt.rc:root/init.recovery.vold_decrypt.rc\
    $(LOCAL_PATH)/recovery/ueventd.mt8173.rc:root/ueventd.mt8173.rc \
    $(LOCAL_PATH)/recovery/default.prop:root/default.prop\
    $(LOCAL_PATH)/recovery/md32_d.bin:root/md32_d.bin\
    $(LOCAL_PATH)/recovery/md32_p.bin:root/md32_p.bin\
    $(LOCAL_PATH)/recovery/sepolicy:root/sepolicy





# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := U1005
PRODUCT_NAME := omni_U1005
PRODUCT_BRAND := Cube
PRODUCT_MANUFACTURER := Alldocube
PRODUCT_MODEL := U1005

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.allow.mock.location=0 \
    persist.sys.usb.config=mass_storage，adb
