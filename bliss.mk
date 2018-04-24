# Copyright (C) 2013-2016, The CyanogenMod Project
# Copyright (C) 2017, The blissOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from z2_plus device
$(call inherit-product, device/leeco/x2/device.mk)

# Inherit some common AOSP stuff.
TARGET_ARCH := arm64
TARGET_DENSITY := xxxhdpi
TARGET_BOOT_ANIMATION_RES := 1440
$(call inherit-product, vendor/bliss/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := bliss_x2
PRODUCT_DEVICE := x2
PRODUCT_BRAND := leeco
PRODUCT_MODEL := x2
PRODUCT_MANUFACTURER := leeco
PRODUCT_GMS_CLIENTID_BASE := android-letv
TARGET_VENDOR_PRODUCT_NAME := x2

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Letv/LeMax2_WW/le_x2:6.0.1/FGXOSOP5801910121S/letv10120105:user/release-keys \
    PRIVATE_BUILD_DESC="le_x2-user 6.0.1 FGXOSOP5801910121S eng.letv.20161012.010150.wechatpay release-keys"


TARGET_VENDOR := leeco
