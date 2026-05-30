# PRODUCT_MAKEFILES uses 'product_name:path' form because the makefile
# is named device.mk (not circle_pixel6.mk), so AOSP can't infer
# the product name from the filename. See build/make/target/product/
# AndroidProducts.mk for the format spec.
PRODUCT_MAKEFILES := \
    circle_pixel6:$(LOCAL_DIR)/device.mk

# AOSP 15 lunch combos are 3-part: <product>-<release>-<variant>.
COMMON_LUNCH_CHOICES := \
    circle_pixel6-trunk_staging-userdebug \
    circle_pixel6-trunk_staging-user
