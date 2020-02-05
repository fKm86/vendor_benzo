# Release name
PRODUCT_RELEASE_NAME := Pixel4XL
TARGET_DEVICE := coral

# Inherit some common stuff.
$(call inherit-product, vendor/benzo/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_coral.mk)

# Inherit vendor configuration
$(call inherit-product, vendor/google/coral/coral-vendor.mk)

# Google Apps
$(call inherit-product, vendor/googleapps/googleapps.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := coral
PRODUCT_NAME := benzo_coral
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=coral \
    PRIVATE_BUILD_DESC="coral-user 10 QQ1B.200205.002 6084387 release-keys"

BUILD_FINGERPRINT="google/coral/coral:10/QQ1B.200205.002/6084387:user/release-keys"
BUILD_THUMBPRINT="10/QQ1B.200205.002/6084387:user/release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/benzo/prebuilt/product/etc/apns-full-conf.xml:product/etc/apns-conf.xml \
	vendor/google_devices/crosshatch/product/media/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip:google \
	vendor/google_devices/crosshatch/product/media/bootanimation-dark.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation-dark.zip:google

BOARD_PREBUILT_VENDORIMAGE := vendor/images/coral/vendor.img
