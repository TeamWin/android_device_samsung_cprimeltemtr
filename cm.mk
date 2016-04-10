# Release name
PRODUCT_RELEASE_NAME := cprimeltemtr

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/cprimeltemtr/device_cprimeltemtr.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cprimeltemtr
PRODUCT_NAME := cm_cprimeltemtr
PRODUCT_BRAND := samsung
PRODUCT_MODEL := cprimeltemtr
PRODUCT_MANUFACTURER := samsung

# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800
