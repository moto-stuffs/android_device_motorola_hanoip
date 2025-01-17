#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hanoip device
$(call inherit-product, device/motorola/hanoip/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := lineage_hanoip
PRODUCT_DEVICE := hanoip
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola moto g(60)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hanoip_retail-user 11 S2RI32.32-20-9-9-2 1591b release-keys" \
    PRODUCT_NAME=hanoip

BUILD_FINGERPRINT := "motorola/hanoip_retail/hanoip:11/S2RI32.32-20-9-9-2/1591b:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-motorola
