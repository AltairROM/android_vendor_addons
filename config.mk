# Copyright (C) 2017-2025 Altair ROM Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Package overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/addons/overlay/common
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/addons/overlay/common

# Fonts
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/addons/prebuilt/product/fonts,$(TARGET_COPY_OUT_PRODUCT)/fonts)

PRODUCT_PACKAGES += \
    fonts_customization.xml

PRODUCT_PACKAGES += \
    ClockFontAlarmClockOverlay \
    ClockFontGoogleSansFlexOverlay \
    ClockFontLatoOverlay \
    ClockFontNothingDotHeadlineOverlay \
    ClockFontNotoSerifSourceOverlay \
    ClockFontOnePlusSansOverlay \
    ClockFontOnePlusSlateOverlay \
    ClockFontRubikOverlay

PRODUCT_PACKAGES += \
    FontAlarmClockOverlay \
    FontGoogleSansFlexOverlay \
    FontLatoOverlay \
    FontNothingDotHeadlineOverlay \
    FontNothingDotOverlay \
    FontNotoSerifSourceOverlay \
    FontOnePlusSansOverlay \
    FontOnePlusSlateOverlay \
    FontRubikOverlay

# Dark Mode Backgrounds
PRODUCT_PACKAGES += \
    BackgroundBlackOverlay \
    BackgroundSolarizedOverlay

# Icon Shapes
PRODUCT_PACKAGES += \
    IconShapePebbleOverlay \
    IconShapeRoundedRectOverlay \
    IconShapeSquareOverlay \
    IconShapeSquircleOverlay \
    IconShapeTaperedRectOverlay \
    IconShapeTeardropOverlay \
    IconShapeVesselOverlay

# Navbar Styles
PRODUCT_PACKAGES += \
    NavbarClassicOverlay \
    NavbarHoloOverlay \
    NavbarOneUiOverlay

# QS Panel Style
PRODUCT_PACKAGES += \
    QSCyberPunk \
    QSNeumorph \
    QSOutline \
    QSReflected \
    QSShaded \
    QSSurround \
    QSThin \
    QSTwoToneAccent \
    QSTwoToneAccentTrans

# QS UI Style
PRODUCT_PACKAGES += \
    A11QSUI

# Signal Icons
PRODUCT_PACKAGES += \
    SignalIconClassicOverlay \
    SignalIconHoloOverlay \
    SignalIconMaterialFilledOverlay

# Wi-Fi Icons
PRODUCT_PACKAGES += \
    WiFiIconClassicOverlay \
    WiFiIconHoloOverlay \
    WiFiIconMaterialFilledOverlay
