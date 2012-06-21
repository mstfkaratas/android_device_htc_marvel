PRODUCT_DEVICE := marvel

# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-320x480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

ifeq ($(PRODUCT_DEVICE),marvel)
$(call inherit-product, vendor/cm/config/gsm.mk)
endif

ifeq ($(PRODUCT_DEVICE),marvelc)
$(call inherit-product, vendor/cm/config/cdma.mk)
endif

# Inherit device configuration
$(call inherit-product, device/htc/marvel/marvel.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_marvel
PRODUCT_RELEASE_NAME := CRYPTOMILK
PRODUCT_MANUFACTURER := HTC

ifeq ($(PRODUCT_DEVICE_MODEL),marvel)
PRODUCT_BRAND := htc_europe
PRODUCT_MODEL := Wildfire S A510e
endif

ifeq ($(PRODUCT_DEVICE_MODEL),marvelc)
PRODUCT_BRAND := htc_marvelc
PRODUCT_MODEL := Marvelc
endif

ifeq ($(PRODUCT_DEVICE_MODEL),marvelct)
PRODUCT_BRAND := htc_marvelct
PRODUCT_MODEL := Marvelct
endif

CM_RELEASE := true
CM_BUILDTYPE := UNOFFICIAL

PRODUCT_VERSION_DEVICE_RELEASE := ALPHA3
PRODUCT_VERSION_DEVICE_SPECIFIC := -CRYPTOMILK-$(PRODUCT_VERSION_DEVICE_RELEASE)-UNOFFICIAL

CM_EXTRAVERSION := CRYPTOMILK-$(PRODUCT_VERSION_DEVICE_RELEASE)

BUILD_ID := ASN00$(shell date -u +%Y%m%d)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_marvel BUILD_ID=$(BUILD_ID) BUILD_DISPLAY_ID=$(BUILD_ID) BUILD_FINGERPRINT=cyanogenmod/htc_marvel/marvel:4.0.4/ASN$(BUILD_ID)/0.1:user/release-keys PRIVATE_BUILD_DESC="2.13.401.2 CL197017 release-keys"
