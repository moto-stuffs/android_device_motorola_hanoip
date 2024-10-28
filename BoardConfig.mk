#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6150-common
include device/motorola/sm6150-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/hanoip

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
BOARD_BOOT_HEADER_VERSION := 3
TARGET_KERNEL_CONFIG := vendor/hanoip_defconfig

# Kernel modules - Audio
TARGET_MODULE_ALIASES += \
    snd-soc-aw882xx.ko:snd_smartpa_aw882xx.ko

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SUPER_PARTITION_SIZE := 10804527104 
BOARD_MOT_DP_GROUP_SIZE := 5398069248
BOARD_MOT_DP_GROUP_PARTITION_LIST += system_ext
TARGET_COPY_OUT_SYSTEM_EXT := system_ext

# Recovery
BOARD_INCLUDE_RECOVERY_DTBO := false
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true

# Inherit from proprietary files
include vendor/motorola/hanoip/BoardConfigVendor.mk
