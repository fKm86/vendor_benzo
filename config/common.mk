# Benzo Rom 
#
PRODUCT_PACKAGE_OVERLAYS += vendor/benzo/overlay
# Inherit art options
include vendor/benzo/config/art.mk

# Theme Picker
PRODUCT_PACKAGES += \
    ThemePicker

# LatinIME gesture lib
PRODUCT_COPY_FILES += \
    vendor/benzo/prebuilt/product/lib64/libjni_latinimegoogle.so:$(TARGET_COPY_OUT_PRODUCT)/lib64/libjni_latinimegoogle.so

# Use ccache
USE_CCACHE := true

# Inherit common product build prop overrides
-include vendor/benzo/config/versions.mk
