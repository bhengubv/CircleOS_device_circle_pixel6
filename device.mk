#
# CircleOS — Google Pixel 6 (oriole) Device Configuration
#
# SoC: Google Tensor G1 (GS101, 5nm)
# RAM: 8GB LPDDR5
# Display: 6.4" 1080×2400 AMOLED 90Hz
# Camera: 50MP main, 12MP ultrawide, 8MP 2x telephoto
#

$(call inherit-product, device/circle/common/common.mk)

PRODUCT_NAME         := circle_pixel6
PRODUCT_DEVICE       := oriole
PRODUCT_MODEL        := Circle Phone (Pixel 6)
PRODUCT_BRAND        := Circle
PRODUCT_MANUFACTURER := Google

# Device overlays
DEVICE_PACKAGE_OVERLAYS += device/circle/pixel6/overlay

# Verified boot
BOARD_AVB_ENABLE    := true
BOARD_AVB_ALGORITHM := SHA256_RSA4096

# Kernel
TARGET_KERNEL_SOURCE := kernel/google/gs101
TARGET_KERNEL_CONFIG := gs101_defconfig

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# SoC properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.soc.manufacturer=Google \
    ro.soc.model=GS101 \
    ro.circle.device.tier=flagship \
    ro.circle.device.codename=oriole

# NFC
PRODUCT_PACKAGES += \
    NfcNci \
    Tag

# Kernel security features (Tensor G1 supports all)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.circle.kernel.kaslr=true \
    ro.circle.kernel.seccomp=true \
    ro.circle.kernel.lockdown=true
