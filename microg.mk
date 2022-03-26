#
# Copyright (C) 2022 TheHitMan7
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.

# Common source
MICROG_COMMON_SOURCE := vendor/microg/sources

# APK source
APK_PREBUILT := vendor/microg/core/prebuilt.mk

# Common modules
PRODUCT_PACKAGES += \
    AppleNLPBackend \
    AuroraServices \
    DejaVuNLPBackend \
    DroidGuard \
    Extension \
    FossDroid \
    LocalGSMNLPBackend \
    LocalWiFiNLPBackend \
    MicroGGMSCore \
    MicroGGSFProxy \
    MozillaUnifiedNLPBackend \
    NominatimNLPBackend \
    Phonesky

# Common system files
PRODUCT_COPY_FILES += \
    vendor/microg/sources/etc/default-permissions/default-permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/default-permissions.xml

PRODUCT_COPY_FILES += \
    vendor/microg/sources/etc/permissions/privapp-permissions-microg.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-google.xml

PRODUCT_COPY_FILES += \
    vendor/microg/sources/etc/sysconfig/microg.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/google.xml
