#
# Copyright (C) 2012 The CyanogenMod Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include device/samsung/galaxys2-common/BoardCommonConfig.mk

TARGET_BOARD_INFO_FILE := device/samsung/i777/board-info.txt

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4210
TARGET_KERNEL_CONFIG := cyanogenmod_i777_defconfig

TARGET_SPECIFIC_HEADER_PATH += device/samsung/i777/overlay/include
EXYNOS4210_ENHANCEMENTS := true

# Use the non-open-source parts, if they're present
-include vendor/samsung/i777/BoardConfigVendor.mk