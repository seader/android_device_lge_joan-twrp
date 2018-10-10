# Release name
PRODUCT_RELEASE_NAME := joan

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger \
	libcryptfs_hw

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := joan
PRODUCT_MODEL := LG-V30
PRODUCT_NAME := omni_joan
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LGE

# Time&Date Fix
PRODUCT_COPY_FILES += \
    device/lge/joan/recovery/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata \
	device/lge/joan/recovery.fstab:recovery/root/etc/twrp.flags
