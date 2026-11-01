#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, device/google/atv/products/atv_base.mk)
$(call inherit-product, device/lineage/atv/lineage_atv.mk)

# Inherit from hy300max device
$(call inherit-product, device/allwinner/hy300max/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_mini_tv.mk)

PRODUCT_DEVICE := hy300max
PRODUCT_NAME := lineage_hy300max
PRODUCT_BRAND := HY300MAX
PRODUCT_MODEL := HY300MAX
PRODUCT_MANUFACTURER := Allwinner


