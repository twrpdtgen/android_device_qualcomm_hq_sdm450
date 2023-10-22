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

# Inherit from hq_sdm450 device
$(call inherit-product, device/qualcomm/hq_sdm450/device.mk)

PRODUCT_DEVICE := hq_sdm450
PRODUCT_NAME := omni_hq_sdm450
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := hq_sdm450 for arm64
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="LenovoTB-X605FC-user 10 QKQ1.200216.002 038_210722 release-keys"

BUILD_FINGERPRINT := Lenovo/LenovoTB-X605FC/TB-X605FC:10/QKQ1.200216.002/038_210722:user/release-keys
