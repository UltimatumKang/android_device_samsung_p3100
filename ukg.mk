# Inherit AOSP device configuration for GT-P3100.
$(call inherit-product, device/samsung/p3100/full_p3100.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# GT-P3100 Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/p3100

# Inherit GSM common stuff
$(call inherit-product, vendor/aosp/config/gsm.mk)

# Tablet Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/common_tablet

# Setup device specific product configuration.
PRODUCT_NAME := xylon_p3100
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p3100
PRODUCT_MODEL := GT-P3100
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=espressorfxx BUILD_FINGERPRINT=samsung/espressorfxx/espressorf:4.0.3/IML74K/P3100XWALE2:user/release-keys PRIVATE_BUILD_DESC="espressorfxx-user 4.0.3 IML74K P3100XWALE2 release-keys"

# Boot Animation
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip \
    vendor/aosp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Some needed packages
PRODUCT_PACKAGES += \
    Mms

