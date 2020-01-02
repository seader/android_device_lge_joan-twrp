DEVICE_TREE := device/lge/joan

#include $(DEVICE_TREE)/keymaster/Android.mk

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8998

# Platform
QCOM_BOARD_PLATFORMS := msm8998
TARGET_BOARD_PLATFORM := msm8998
TARGET_BOARD_PLATFORM_GPU := qcom-adreno540
#PLATFORM_SDK_VERSION := 28

# Flags
TW_THEME := portrait_hdpi
#TARGET_GLOBAL_CFLAGS +=
#TARGET_GLOBAL_CPPFLAGS +=
#COMMON_GLOBAL_CFLAGS +=
#WITHOUT_CHECK_API := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := armv8-a
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a73

# Kernel
#TARGET_PREBUILT_KERNEL := $(DEVICE_TREE)/prebuilt/kernel
#TARGET_KERNEL_APPEND_DTB := true
#BOARD_SEPOLICY_DIRS += device/lge/joan/sepolicy
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_SOURCE := kernel/lge/msm8998/ #lineage-16.0 branch
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG := arch/arm64/configs/lineageos_h930_defconfig
KERNEL_TOOLCHAIN_PREFIX := /home/seadersn/bin/toolchains/bin/aarch64-linux-gnu-

# Boot image
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=2048 androidboot.hardware=joan androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3 firmware_class.path=/firmware/image loop.max_part=7 buildvariant=user androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --tags_offset 0x00000100

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x0002800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x0002880000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x018FA00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x1BC4E74000
BOARD_CACHEIMAGE_PARTITION_SIZE    := 0x0020000000
BOARD_FLASH_BLOCK_SIZE := 0x40000

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP specific build flags
#TW_USE_TOOLBOX := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file"
TW_BRIGHTNESS_PATH := "/sys/devices/soc/c900000.qcom\x2cmdss_mdp/c900000.qcom\x2cmdss_mdp:qcom\x2cmdss_fb_primary/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 249
TW_DEFAULT_BRIGHTNESS := 175
TW_SCREEN_BLANK_ON_BOOT := true
TW_INCLUDE_NTFS_3G := true
TARGET_RECOVERY_DEVICE_MODULES := libcryptfs_hw #twrpdec #strace
#TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(TARGET_RECOVERY_ROOT_OUT)/sbin/twrpdec

# We can use the factory reset button combo to enter recovery safely
TW_IGNORE_MISC_WIPE_DATA := true

# exFAT drivers included in the kernel
#TW_NO_EXFAT_FUSE := true

# Encryption support
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw
TW_INCLUDE_CRYPTO := true
TARGET_USE_UFS_ICE := true
TARGET_HW_DISK_ENCRYPTION := true
LEGACY_HW_DISK_ENCRYPTION := true
TW_CRYPTO_USE_SYSTEM_VOLD := qseecomd servicemanager hwservicemanager vndservicemanager keymaster-3-0
TW_CRYPTO_SYSTEM_VOLD_MOUNT := firmware persist-lg encrypt system eksst
#WITH_CRYPTO_UTILS := true

# Debug flags
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_EXCLUDE_TWRPAPP := true
TW_DEVICE_VERSION := 2
#TWRP_EVENT_LOGGING := true
#TW_CRYPTO_SYSTEM_VOLD_DEBUG := true

# Asian region languages
TW_EXTRA_LANGUAGES := true
