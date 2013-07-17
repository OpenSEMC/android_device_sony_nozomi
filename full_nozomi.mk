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
 
# Torch
PRODUCT_PACKAGES := \
    Torch

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

ifneq ($(TARGET_BUILD_VARIANT),codefirex)
# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml
else

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cfx/config/gsm.mk)

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/cfx/prebuilt/common/bootanimation/720.zip:system/media/bootanimation.zip

# Inherit some common CFX stuff.
$(call inherit-product, vendor/cfx/config/common_full_phone.mk)
endif

# Inherit sony common resources
$(call inherit-product, device/sony/common/resources-xhdpi.mk)

# Inherit from nozomi device
$(call inherit-product, device/sony/nozomi/nozomi.mk)

# Nozomi vendor blobs
$(call inherit-product-if-exists, vendor/sony/nozomi/nozomi-vendor.mk)

# Enhanced NFC - not yet present in CFX
#$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_nozomi
PRODUCT_DEVICE := nozomi
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia S

# Boot Animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT26i_1257-5499 BUILD_FINGERPRINT=SEMC/LT26i_1257-5499/LT26i:4.0.4/6.1.A.2.50/zfd_zw:user/release-keys PRIVATE_BUILD_DESC="LT26i-user 4.0.4 6.1.A.2.50 zfd_zw test-keys"
