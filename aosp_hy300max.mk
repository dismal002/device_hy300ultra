#
# SPDX-FileCopyrightText: The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, device/google/atv/products/atv_base.mk)

# Inherit from hy300max device
$(call inherit-product, device/allwinner/hy300max/device.mk)


PRODUCT_DEVICE := hy300max
PRODUCT_NAME := aosp_hy300max
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on HY300MAX
PRODUCT_MANUFACTURER := Allwinner
