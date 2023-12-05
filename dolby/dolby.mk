DOLBY_PATH := hardware/sony/dolby

PRODUCT_SOONG_NAMESPACES += $(DOLBY_PATH)

# Enable codec support
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# Configs
PRODUCT_COPY_FILES += \
    $(DOLBY_PATH)/proprietary/vendor/etc/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(DOLBY_PATH)/proprietary/vendor/etc/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml

# Dolby props
PRODUCT_VENDOR_PROPERTIES += \
    vendor.audio.dolby.ds2.enabled=true \
    vendor.audio.dolby.ds2.hardbypass=true \
    ro.vendor.dolby.dax.version=DAX3_3.8.5.20_r1 \
    ro.vendor.audio.dolby.dax.version=DAX3_3.8 \
    ro.vendor.audio.dolby.dax.support=true \
    ro.vendor.audio.dolby.surround.enable=true \
    persist.vendor.audio_fx.current=dolby
   
# Proprietary blobs
PRODUCT_COPY_FILES += \
    $(DOLBY_PATH)/proprietary/system_ext/etc/default-permissions/default-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/default-permissions/default-com.dolby.daxservice.xml \
    $(DOLBY_PATH)/proprietary/system_ext/etc/default-permissions/default-com.motorola.dolby.dolbyui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/default-permissions/default-com.motorola.dolby.dolbyui.xml \
    $(DOLBY_PATH)/proprietary/system_ext/etc/permissions/com.motorola.frameworks.core.addon.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.motorola.frameworks.core.addon.xml \
    $(DOLBY_PATH)/proprietary/system_ext/etc/permissions/com.motorola.motosignature.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.motorola.motosignature.xml \
    $(DOLBY_PATH)/proprietary/system_ext/etc/permissions/com.motorola.software.dolbyui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.motorola.software.dolbyui.xml \
    $(DOLBY_PATH)/proprietary/system_ext/etc/permissions/moto-checkin.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/moto-checkin.xml \
    $(DOLBY_PATH)/proprietary/system_ext/etc/permissions/moto-settings.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/moto-settings.xml \
    $(DOLBY_PATH)/proprietary/system_ext/etc/permissions/moto.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/moto.xml \
    $(DOLBY_PATH)/proprietary/system_ext/etc/permissions/privapp-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.dolby.daxservice.xml \
    $(DOLBY_PATH)/proprietary/system_ext/etc/permissions/privapp-com.motorola.android.providers.settings.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.motorola.android.providers.settings.xml \
    $(DOLBY_PATH)/proprietary/system_ext/etc/permissions/privapp-com.motorola.dolby.dolbyui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.motorola.dolby.dolbyui.xml \
    $(DOLBY_PATH)/proprietary/system_ext/etc/sysconfig/config-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.dolby.daxservice.xml \
    $(DOLBY_PATH)/proprietary/system_ext/etc/sysconfig/config-com.motorola.android.providers.settings.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.motorola.android.providers.settings.xml \
    $(DOLBY_PATH)/proprietary/system_ext/etc/sysconfig/config-com.motorola.dolby.dolbyui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.motorola.dolby.dolbyui.xml \
    $(DOLBY_PATH)/proprietary/system_ext/etc/sysconfig/config-com.motorola.motosignature.app.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.motorola.motosignature.app.xml \
    $(DOLBY_PATH)/proprietary/vendor/bin/hw/vendor.dolby.hardware.dms@2.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.hardware.dms@2.0-service \
    $(DOLBY_PATH)/proprietary/vendor/etc/init/vendor.dolby.hardware.dms@2.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.hardware.dms@2.0-service.rc \
    $(DOLBY_PATH)/proprietary/vendor/lib/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdapparamstorage.so \
    $(DOLBY_PATH)/proprietary/vendor/lib/libdeccfg.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdeccfg.so \
    $(DOLBY_PATH)/proprietary/vendor/lib/libstagefright_soft_ac4dec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_ac4dec.so \
    $(DOLBY_PATH)/proprietary/vendor/lib/libstagefright_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_ddpdec.so \
    $(DOLBY_PATH)/proprietary/vendor/lib/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefrightdolby.so \
    $(DOLBY_PATH)/proprietary/vendor/lib/soundfx/libdlbvol.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libdlbvol.so \
    $(DOLBY_PATH)/proprietary/vendor/lib/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswdap.so \
    $(DOLBY_PATH)/proprietary/vendor/lib/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswgamedap.so \
    $(DOLBY_PATH)/proprietary/vendor/lib/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.dolby.hardware.dms@2.0.so \
    $(DOLBY_PATH)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0-impl.so \
    $(DOLBY_PATH)/proprietary/vendor/lib64/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdapparamstorage.so \
    $(DOLBY_PATH)/proprietary/vendor/lib64/libdeccfg.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdeccfg.so \
    $(DOLBY_PATH)/proprietary/vendor/lib64/libdlbdsservice.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbdsservice.so \
    $(DOLBY_PATH)/proprietary/vendor/lib64/libstagefright_soft_ac4dec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefright_soft_ac4dec.so \
    $(DOLBY_PATH)/proprietary/vendor/lib64/libstagefright_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefright_soft_ddpdec.so \
    $(DOLBY_PATH)/proprietary/vendor/lib64/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefrightdolby.so \
    $(DOLBY_PATH)/proprietary/vendor/lib64/soundfx/libdlbvol.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libdlbvol.so \
    $(DOLBY_PATH)/proprietary/vendor/lib64/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswdap.so \
    $(DOLBY_PATH)/proprietary/vendor/lib64/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswgamedap.so \
    $(DOLBY_PATH)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0.so

PRODUCT_PACKAGES += \
    MotoSignatureApp \
    MotoDolbyDax3 \
    MotorolaSettingsProvider \
    daxService \
    com.motorola.frameworks.core.addon \
    com.motorola.motosignature \
    moto-checkin \
    moto-settings \
    moto \
    vendor.dolby.hardware.dms@2.0-service
