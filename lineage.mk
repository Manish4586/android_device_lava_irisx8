## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := Iris X8

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/Lava/IrisX8/device_IrisX8.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := IRISX8
PRODUCT_NAME := lineage_IrisX8
PRODUCT_BRAND := Lava
PRODUCT_MODEL := Iris X8
PRODUCT_MANUFACTURER := Lava
