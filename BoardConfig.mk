#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FORCE_32_BIT := true

include device/cyanogen/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/yu/jalebi

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Assertions
TARGET_BOARD_INFO_FILE := device/yu/jalebi/board-info.txt

# Bootchart
ifeq ($(strip $(INIT_BOOTCHART)),true)
BOARD_KERNEL_CMDLINE += androidboot.bootchart=120
endif

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Wifi
TARGET_PROVIDES_WCNSS_QMI := true

include device/yu/jalebi/board/*.mk

# inherit from proprietary files
-include vendor/yu/jalebi/BoardConfigVendor.mk
