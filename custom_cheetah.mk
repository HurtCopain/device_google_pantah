# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

TARGET_FLATTEN_APEX := false
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_USE_GOOGLE_TELEPHONY := true

TARGET_INCLUDE_CAMERA_GO := true
TARGET_SUPPORTS_LILY_EXPERIENCE := true
TARGET_INCLUDE_ADDITIONAL_GAPPS := true

# Inherit from telephony config
$(call inherit-product, vendor/pixel-additional/configs/telephony.mk)

# Inherit from apex config
$(call inherit-product, vendor/pixel-additional/configs/apex.mk)

# Inherit from gapps config
$(call inherit-product, vendor/pixel-additional/gapps/config.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)
include device/google/pantah/device-aosp.mk

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)
$(call inherit-product-if-exists, vendor/google/pixelparts/powershare/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := custom_cheetah
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ2A.230305.008.C1 9619669 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGEPRINT)
