# Benzo Rom 
#
PRODUCT_PACKAGE_OVERLAYS += vendor/benzo/overlay
# Inherit art options
include vendor/benzo/config/art.mk

# Use ccache
USE_CCACHE := true

# Inherit common product build prop overrides
-include vendor/benzo/config/versions.mk
