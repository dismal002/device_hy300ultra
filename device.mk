#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# API levels
PRODUCT_SHIPPING_API_LEVEL := 34

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Kernel
PRODUCT_ENABLE_UFFD_GC := false

# Shims
PRODUCT_PACKAGES += \
    libion

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := optics

# Rootdir
PRODUCT_PACKAGES += \
    fstab.1024m \
    fstab.sun50iw15p1 \
    init.common.rc \
    init.ram.rc \
    init.sun50iw15p1.rc \
    init.sun50iw15p1.usb.rc \
    init.tv_input.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.1024m:$(TARGET_VENDOR_RAMDISK_OUT)/first_stage_ramdisk/fstab.1024m \
    $(LOCAL_PATH)/rootdir/etc/fstab.sun50iw15p1:$(TARGET_VENDOR_RAMDISK_OUT)/first_stage_ramdisk/fstab.sun50iw15p1

# Vendor HAL services
PRODUCT_PACKAGES += \
    android.hardware.audio.service \
    android.hardware.bluetooth@1.0-service \
    android.hardware.boot@1.2-service \
    android.hardware.cas-service.example \
    android.hardware.drm-service-lazy.clearkey \
    android.hardware.drm-service-lazy.widevine \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.2-service \
    android.hardware.health-service.example \
    android.hardware.media.aw.c2@1.0-service \
    android.hardware.power-service.aw-v2 \
    android.hardware.security.keymint@3.0-service-aw \
    android.hardware.sensors@2.0-service \
    android.hardware.tv.cec@1.0-service \
    android.hardware.tv.input@1.0-service \
    android.hardware.usb.gadget-service.aw \
    android.hardware.usb-service.aw \
    android.hardware.wifi-service-lazy

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/allwinner/hy300max/hy300max-vendor.mk)
