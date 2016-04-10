USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/cprimeltemtr/BoardConfigVendor.mk

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := cprimeltemtr

# Kernel
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x80008000 --ramdisk_offset 0x02000000 --tags_offset 0x81e00000 --dt device/samsung/cprimeltemtr/dt.img
#TARGET_PREBUILT_KERNEL := device/samsung/cprimeltemtr/kernel
TARGET_KERNEL_SOURCE := kernel/samsung/cprimeltemtr
TARGET_KERNEL_CONFIG := msm8916_sec_defconfig
TARGET_KERNEL_TIMA_CONFIG := tima_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_rossa_tmo_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.7
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

# Power HAL
TARGET_POWERHAL_SET_INTERACTIVE_EXT := device/samsung/cprimeltemtr/power/power_ext.c

# Power
TARGET_POWERHAL_VARIANT := qcom


# Partition sizes
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_PERSISTIMAGE_PARTITION_SIZE := 8388608
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5653901312
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Assert
TARGET_OTA_ASSERT_DEVICE := cprimeltemtr,SM-G360T1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/cprimeltemtr/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Device overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/cprimeltemtr/overlay

# Custom RIL class
BOARD_RIL_CLASS := ../../../device/samsung/cprimeltemtr/ril/

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# malloc implementation
MALLOC_IMPL := dlmalloc

# Audio
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true
BOARD_CHARGER_ENABLE_SUSPEND := true

# Enable QCOM FM feature
TARGET_QCOM_NO_FM_FIRMWARE := true
AUDIO_FEATURE_ENABLED_FM := true

# Enable HW based full disk encryption
TARGET_HW_DISK_ENCRYPTION := false

# PowerHAL
TARGET_POWERHAL_VARIANT := qcom

# Wifi
BOARD_HAS_QCOM_WLAN 		 := true
BOARD_HAS_QCOM_WLAN_SDK 	 := true
BOARD_HOSTAPD_DRIVER 		 := NL80211
BOARD_HOSTAPD_PRIVATE_LIB 	 := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE 		 := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER 	 := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
TARGET_PROVIDES_WCNSS_QMI        := true
TARGET_USES_QCOM_WCNSS_QMI 	 := true
TARGET_USES_WCNSS_CTRL 		 := true
WIFI_DRIVER_FW_PATH_AP 		 := "ap"
WIFI_DRIVER_FW_PATH_STA 	 := "sta"
WPA_SUPPLICANT_VERSION 		 := VER_0_8_X

# Bluetooth

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 65

# Camera
TARGET_PROVIDES_CAMERA_HAL := true
USE_DEVICE_SPECIFIC_CAMERA := true

# CMHW
BOARD_HARDWARE_CLASS += device/samsung/cprimeltemtr/cmhw

# Workaround to avoid issues with legacy liblights on QCOM platforms
TARGET_PROVIDES_LIBLIGHT := true

# Qcom
BOARD_USES_QC_TIME_SERVICES := true
TARGET_USES_QCOM_BSP := true
TARGET_PLATFORM_DEVICE_BASE := /devices/7824900.sdhci/
PROTOBUF_SUPPORTED := true
HAVE_SYNAPTICS_I2C_RMI4_FW_UPGRADE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

# Media
TARGET_QCOM_MEDIA_VARIANT := caf
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Display
TARGET_CONTINUOUS_SPLASH_ENABLED := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# SELinux
include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    device/samsung/cprimeltemtr/sepolicy

BOARD_SEPOLICY_UNION += \
    bluetooth_loader.te \
    file_contexts \
    mediaserver.te \
    property_contexts \
    system_app.te \
    time_daemon.te \
    vold.te \
    bluetooth.te \
    file.te \
    kernel.te \
    mm-qcamerad.te \
    property.te \
    rild.te \
    system_server.te \
    ueventd.te \
    wcnss_service.te

# Misc.
TARGET_SYSTEM_PROP := device/samsung/cprimeltemtr/system.prop

# Keys
BOARD_HAS_NO_SELECT_BUTTON := true

# Storage
TARGET_RECOVERY_FSTAB := device/samsung/cprimeltemtr/rootdir/fstab.qcom

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(LOCAL_PATH)

# Dex
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),user)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif

# TWRP
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/samsung/cprimeltemtr/recovery.fstab
TARGET_RECOVERY_INITRC := device/samsung/cprimeltemtr/rootdir/init.rc
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TW_THEME := portrait_mdpi
#SP1_NAME := "internal_sd"
#SP1_BACKUP_METHOD := files
#SP1_MOUNTABLE := 1
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_MTP_DEVICE := /dev/usb_mtp_gadget
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_SELECT_BUTTON := true
