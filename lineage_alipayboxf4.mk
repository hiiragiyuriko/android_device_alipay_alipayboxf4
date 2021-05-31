# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from alipayboxf4 device
$(call inherit-product, device/alipay/alipayboxf4/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := alipayboxf4
PRODUCT_NAME := lineage_alipayboxf4
PRODUCT_BRAND := Android
PRODUCT_MODEL := AlipayBoxF4
PRODUCT_MANUFACTURER := QUALCOMM
TARGET_VENDOR := msm8953
BOARD_VENDOR := msm8953

# PRODUCT_GMS_CLIENTID_BASE := android-alipay

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OPM1.171019.026 test-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Android/msm8953_64/msm8953_64:8.1.0/OPM1.171019.026/admin08141608:user/test-keys