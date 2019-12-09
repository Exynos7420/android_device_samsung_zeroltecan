# Initialise device config
$(call inherit-product, device/samsung/zeroltecan/full_zeroltecan.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Inherit some common PixelExperience stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="zeroltecan" \
    TARGET_DEVICE="zerolte"

PRODUCT_NAME := aosp_zeroltecan
PRODUCT_DEVICE := zeroltecan
