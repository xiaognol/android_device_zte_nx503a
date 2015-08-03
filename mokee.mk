## Specify phone tech before including full_phone
$(call inherit-product, vendor/mk/config/gsm.mk)
$(call inherit-product, vendor/mk/config/cdma.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/zte/nx503a/full_nx503a.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

PRODUCT_CHARACTERISTICS := phablet

# Enable Torch
PRODUCT_PACKAGES += \
    Torch

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nx503a
PRODUCT_NAME := mk_nx503a
