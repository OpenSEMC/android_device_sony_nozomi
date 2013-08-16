# Copyright (C) 2012 FXP (FreeXperia)
# Copyright (C) 2013 The Open SEMC Team
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/sony/nozomi/BoardConfigVendor.mk

#inherit from the common fuji definitions
-include device/sony/fuji-common/BoardConfigCommon.mk

TARGET_KERNEL_CONFIG := opensemc_fuji_nozomi_defconfig

# Sony-supplied broadcom wlan module
BOARD_WLAN_BROADCOM := true

# Custom bluedroid includes
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/sony/nozomi/bluetooth

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 16

# the following two sizes are generous guesses
# since these partitions are not visible
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000

# Recovery
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_FSTAB := device/sony/nozomi/config/fstab.semc
TARGET_RECOVERY_INITRC := device/sony/nozomi/recovery/init.rc
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1056964608
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p15

TARGET_OTA_ASSERT_DEVICE := LT26i,nozomi
