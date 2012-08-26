# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/samsung/i777/full_i777.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# SGS2 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/i777

# Setup device specific product configuration.
PRODUCT_DEVICE := i777
PRODUCT_NAME := aokp_i777
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SGH-I777

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I777 TARGET_DEVICE=SGH-I777 BUILD_FINGERPRINT=samsung/SGH-I777/SGH-I777:4.0.3/IML74K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="SGH-I777-user 4.0.3 IML74K XXLPQ release-keys"

PRODUCT_RELEASE_NAME := SGS2

# Copy i777 specific prebuilt files
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
   vendor/aokp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip

