#
# Copyright (C) 2018 The LineageOS Project
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

DEVICE_PATH := device/samsung/a50

# Assert
TARGET_OTA_ASSERT_DEVICE := a50,a50dd

# Display
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x2000U | 0x400000000LL

# FOD
TARGET_SURFACEFLINGER_FOD_LIB := //$(DEVICE_PATH):libfod_extension.a50

# Kernel
BOARD_BOOT_HEADER_NAME       := SRPSG30B003KU
TARGET_KERNEL_CONFIG := exynos9610-a50_defconfig
BOARD_DTBO_CFG := $(DEVICE_PATH)/kernel/a50.cfg

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 57671680
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67633152
BOARD_CACHEIMAGE_PARTITION_SIZE := 408625152
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5383802880
BOARD_VENDORIMAGE_PARTITION_SIZE := 812548096
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 406155264

# Reserve space for data encryption
BOARD_USERDATAIMAGE_PARTITION_SIZE := 117854117888

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.exynos9610

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

# SELinux
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# Inherit common board flags
include device/samsung/universal9610-common/BoardConfigCommon.mk
