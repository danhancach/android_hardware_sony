#
# Copyright (C) 2022 FlamingoOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_DOLBY := hardware/sony/dolby

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
   hardware/sony/dolby

# Enable codec support
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/media_codecs_kona_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_kona_vendor.xml \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/media_codecs_kona.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_kona.xml \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.conf

# Dolby
PRODUCT_VENDOR_PROPERTIES += \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    ro.vendor.dolby.dax.version=DAX3_3.8.5.20_r1 \
    ro.vendor.audio.dolby.dax.version=DAX3_3.8 \
    ro.vendor.audio.dolby.dax.support=true \
    ro.vendor.audio.dolby.surround.enable=true \
    persist.vendor.audio_fx.current=dolby

# DaxUI and daxService
PRODUCT_PACKAGES += \
    MotoSignatureApp \
    MotorolaSettingsProvider \
    MotoDolbyDax3 \
    daxService \
    vendor.dolby.hardware.dms \
    com.motorola.frameworks.core.addon \
    com.motorola.motosignature \
    moto \
    moto-checkin \
    moto-settings
   
# Proprietary blobs
PRODUCT_COPY_FILES += \
    $(LOCAL_DOLBY)/proprietary/system/etc/permissions/com.motorola.frameworks.core.addon.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.motorola.frameworks.core.addon.xml \
    $(LOCAL_DOLBY)/proprietary/system/etc/permissions/com.motorola.motosignature.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.motorola.motosignature.xml \
    $(LOCAL_DOLBY)/proprietary/system/etc/permissions/moto.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/moto.xml \
    $(LOCAL_DOLBY)/proprietary/system/etc/permissions/moto-checkin.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/moto-checkin.xml \
    $(LOCAL_DOLBY)/proprietary/system/etc/permissions/moto-settings.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/moto-settings.xml \
    $(LOCAL_DOLBY)/proprietary/system/etc/permissions/privapp-com.motorola.android.providers.settings.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-com.motorola.android.providers.settings.xml \
    $(LOCAL_DOLBY)/proprietary/system/etc/sysconfig/config-com.motorola.android.providers.settings.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/config-com.motorola.android.providers.settings.xml \
    $(LOCAL_DOLBY)/proprietary/system/etc/sysconfig/config-com.motorola.motosignature.app.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/config-com.motorola.motosignature.app.xml \
    $(LOCAL_DOLBY)/proprietary/system_ext/etc/sysconfig/config-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.dolby.daxservice.xml \
    $(LOCAL_DOLBY)/proprietary/system_ext/etc/sysconfig/config-com.motorola.dolby.dolbyui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.motorola.dolby.dolbyui.xml \
    $(LOCAL_DOLBY)/proprietary/system_ext/etc/permissions/com.motorola.software.dolbyui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.motorola.software.dolbyui.xml \
    $(LOCAL_DOLBY)/proprietary/system_ext/etc/permissions/privapp-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.dolby.daxservice.xml \
    $(LOCAL_DOLBY)/proprietary/system_ext/etc/permissions/privapp-com.motorola.dolby.dolbyui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.motorola.dolby.dolbyui.xml \
    $(LOCAL_DOLBY)/proprietary/vendor/bin/hw/vendor.dolby.hardware.dms@2.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.hardware.dms@2.0-service \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/init/vendor.dolby.hardware.dms@2.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.hardware.dms@2.0-service.rc \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdapparamstorage.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/libdlbpreg.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdlbpreg.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/soundfx/libdlbvol.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libdlbvol.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswdap.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswgamedap.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.dolby.hardware.dms@2.0.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdapparamstorage.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libdlbpreg.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbpreg.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libdeccfg.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdeccfg.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libdlbdsservice.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbdsservice.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/soundfx/libdlbvol.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libdlbvol.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswdap.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswgamedap.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0-impl.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0.so

# CodeC2
PRODUCT_COPY_FILES += \
    $(LOCAL_DOLBY)/codec2/vendor/bin/hw/vendor.dolby.media.c2@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.media.c2@1.0-service \
    $(LOCAL_DOLBY)/codec2/vendor/etc/init/vendor.dolby.media.c2@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.media.c2@1.0-service.rc \
    $(LOCAL_DOLBY)/codec2/vendor/lib64/libcodec2_hidl@1.1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_hidl@1.1.so \
    $(LOCAL_DOLBY)/codec2/vendor/lib64/libcodec2_soft_ac4dec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_ac4dec.so \
    $(LOCAL_DOLBY)/codec2/vendor/lib64/libcodec2_soft_common.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_common.so \
    $(LOCAL_DOLBY)/codec2/vendor/lib64/libcodec2_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_ddpdec.so \
    $(LOCAL_DOLBY)/codec2/vendor/lib64/libcodec2_store_dolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_store_dolby.so

PRODUCT_PACKAGES += \
    vendor.dolby.media.c2@1.0-service \
    android.hardware.media.c2@1.1.vendor \
    android.hardware.media.c2@1.2.vendor

PRODUCT_VENDOR_PROPERTIES += \
    vendor.audio.c2.preferred=true \
    debug.c2.use_dmabufheaps=1 \
    vendor.qc2audio.suspend.enabled=true \
    vendor.qc2audio.per_frame.flac.dec.enabled=true \
    debug.stagefright.c2inputsurface=-1
