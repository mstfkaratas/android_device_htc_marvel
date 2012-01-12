$(call inherit-product, device/htc/marvel/marvel.mk)

PRODUCT_RELEASE_NAME := A510

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := marvel
PRODUCT_NAME := cm_marvel
PRODUCT_BRAND := HTC
PRODUCT_MODEL := Wildfire S
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=marvel BUILD_ID=ASN01 BUILD_DISPLAY_ID=ASN01 BUILD_FINGERPRINT=google/htc/marvel:2.3.7/ASN01/0.1:user/release-keys PRIVATE_BUILD_DESC="4.08.605.3 CL120826 release-keys"
