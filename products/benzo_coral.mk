#
# Copyright (C) 2020 Benzo Rom
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

# Release name
PRODUCT_RELEASE_NAME := Pixel4XL
TARGET_DEVICE := coral

# Inherit Benzo common setup.
$(call inherit-product, vendor/benzo/config/common_full_phone.mk)
# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_coral.mk)
# Inherit vendor configuration
$(call inherit-product, vendor/google/coral/coral-vendor.mk)
# Google Apps
$(call inherit-product, vendor/googleapps/googleapps.mk)

PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_NAME := benzo_coral
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_MANUFACTURER := Google
PRODUCT_DEVICE := coral

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=coral \
    PRIVATE_BUILD_DESC="coral-user 10 QQ2A.200305.003 6156912 release-keys"

BUILD_FINGERPRINT="google/coral/coral:10/QQ2A.200305.003/6156912:user/release-keys"
BUILD_THUMBPRINT="10/QQ2A.200305.003/6156912:user/release-keys"

# Copy over bootanimation.
PRODUCT_COPY_FILES += \
    vendor/google_devices/crosshatch/product/media/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip:google \
    vendor/google_devices/crosshatch/product/media/bootanimation-dark.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation-dark.zip:google

BOARD_PREBUILT_VENDORIMAGE := vendor/images/coral/vendor.img
