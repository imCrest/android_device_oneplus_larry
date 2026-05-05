# SPDX-License-Identifier: Apache-2.0

# ----------------------------------------------------------
# Base Product Configurations
# ----------------------------------------------------------
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# ----------------------------------------------------------
# Common InfinityX Vendor Config
# ----------------------------------------------------------
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# ----------------------------------------------------------
# Device Specific Config
# ----------------------------------------------------------
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# ----------------------------------------------------------
# InfinityX Maintainer Info
# ----------------------------------------------------------
TARGET_BOOT_ANIMATION_RES := 1080
INFINITY_MAINTAINER := SUJΛL
INFINITY_BUILD_TYPE := UNOFFICIAL
TARGET_SUPPORTS_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
INFINITY_OTA_URL := https://raw.githubusercontent.com/imCrest/Infinityx-Release/main/larry.json

PRODUCT_SYSTEM_PROPERTIES += \
    ro.product.marketname=OnePlus Nord CE 3 Lite \
    ro.infinity.soc=Snapdragon 695 5G \
    ro.infinity.battery=5000 mAh \
    ro.infinity.display=1080 x 2400, 120 Hz \
    ro.infinity.camera=108MP + 2MP + 2MP + 16MP



# ----------------------------------------------------------
# GApps / Vanilla Toggle
# ----------------------------------------------------------
WITH_GMS ?= true

ifeq ($(WITH_GMS),true)
    # GApps build (default)
    WITH_GAPPS := true
    TARGET_INCLUDE_GOOGLE_APPS := true
    $(call inherit-product, $(LOCAL_PATH)/gapps.txt)
else
    # Vanilla build
    WITH_GAPPS := false
    TARGET_INCLUDE_GOOGLE_APPS := false
endif

# ----------------------------------------------------------
# Product Info
# ----------------------------------------------------------
PRODUCT_NAME := infinity_larry
PRODUCT_DEVICE := larry
PRODUCT_BRAND := oneplus
PRODUCT_MODEL := CPH2467
PRODUCT_MANUFACTURER := oneplus
PRODUCT_GMS_CLIENTID_BASE := android-oppo

# ----------------------------------------------------------
# Build Fingerprint / Props
# ----------------------------------------------------------
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OP5958L1-user 14 UKQ1.230924.001 T.R4T2.1cd4793-227bc-40edf release-keys" \
    BuildFingerprint=OnePlus/CPH2467/OP5958L1:14/UKQ1.230924.001/T.R4T2.1cd4793-227bc-40edf:user/release-keys \
    DeviceName=OP5958L1 \
    DeviceProduct=OP5958L1 \
    SystemDevice=OP5958L1 \
    SystemName=OP5958L1
