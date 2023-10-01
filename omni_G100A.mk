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
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from G100A device
$(call inherit-product, device/readboy/G100A/device.mk)

PRODUCT_DEVICE := G100A
PRODUCT_NAME := omni_G100A
PRODUCT_BRAND := readboy
PRODUCT_MODEL := Readboy_G100A
PRODUCT_MANUFACTURER := readboy

PRODUCT_GMS_CLIENTID_BASE := android-readboy

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="G100A-user 7.1.1 NMF26F 20210108 dev-keys"

BUILD_FINGERPRINT := readboy/G100A/G100A:7.1.1/NMF26F/20210108:user/dev-keys
