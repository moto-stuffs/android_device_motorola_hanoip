#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6150-common
include device/motorola/sm6150-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/hanoip

# Inherit from proprietary files
include vendor/motorola/hanoip/BoardConfigVendor.mk
