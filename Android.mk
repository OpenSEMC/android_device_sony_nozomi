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

#
# Nozomi CFX hierarchy:
# 1 Android.mk (this)
# 2 ^cfx.mk
# 3 ^full_nozomi.mk
# 4 ^nozomi.mk
#

#LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),nozomi)
    $(call inherit-product, device/sony/nozomi/cfx.mk)
endif
