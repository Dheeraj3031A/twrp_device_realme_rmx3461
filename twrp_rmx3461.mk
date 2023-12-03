#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from RE54BFL1 device
$(call inherit-product, device/realme/rmx3461/device.mk)

PRODUCT_DEVICE := rmx3461
PRODUCT_NAME := twrp_rmx3461
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3461
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3461-user 13 TP1A.220905.001 R.1119f23-59b8-59b9 release-keys"

BUILD_FINGERPRINT := realme/RMX3461/RE54BFL1:13/TP1A.220905.001/R.1119f23-59b8-59b9:user/release-keys
