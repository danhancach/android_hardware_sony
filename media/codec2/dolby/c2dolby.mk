C2DOLBY_PATH := hardware/sony/media/codec2/dolby

PRODUCT_SOONG_NAMESPACES += $(C2DOLBY_PATH)

PRODUCT_COPY_FILES += \
    $(C2DOLBY_PATH)/proprietary/vendor/bin/hw/vendor.dolby.media.c2@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.media.c2@1.0-service \
    $(C2DOLBY_PATH)/proprietary/vendor/etc/init/vendor.dolby.media.c2@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.media.c2@1.0-service.rc \
    $(C2DOLBY_PATH)/proprietary/vendor/lib/android.hardware.media.c2@1.1.so:$(TARGET_COPY_OUT_VENDOR)/lib/android.hardware.media.c2@1.1.so \
    $(C2DOLBY_PATH)/proprietary/vendor/lib/android.hardware.media.c2@1.2.so:$(TARGET_COPY_OUT_VENDOR)/lib/android.hardware.media.c2@1.2.so \
    $(C2DOLBY_PATH)/proprietary/vendor/lib/libcodec2_hidl@1.1.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcodec2_hidl@1.1.so \
    $(C2DOLBY_PATH)/proprietary/vendor/lib/libcodec2_hidl@1.2.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcodec2_hidl@1.2.so \
    $(C2DOLBY_PATH)/proprietary/vendor/lib/libcodec2_soft_common.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcodec2_soft_common.so \
    $(C2DOLBY_PATH)/proprietary/vendor/lib/libsfplugin_ccodec_utils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsfplugin_ccodec_utils.so \
    $(C2DOLBY_PATH)/proprietary/vendor/lib/vndk/libstagefright_foundation.so:$(TARGET_COPY_OUT_VENDOR)/lib/vndk/libstagefright_foundation.so \
    $(C2DOLBY_PATH)/proprietary/vendor/lib64/android.hardware.media.c2@1.1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/android.hardware.media.c2@1.1.so \
    $(C2DOLBY_PATH)/proprietary/vendor/lib64/android.hardware.media.c2@1.2.so:$(TARGET_COPY_OUT_VENDOR)/lib64/android.hardware.media.c2@1.2.so \
    $(C2DOLBY_PATH)/proprietary/vendor/lib64/libcodec2_hidl@1.1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_hidl@1.1.so \
    $(C2DOLBY_PATH)/proprietary/vendor/lib64/libcodec2_hidl@1.2.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_hidl@1.2.so \
    $(C2DOLBY_PATH)/proprietary/vendor/lib64/libcodec2_soft_ac4dec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_ac4dec.so \
    $(C2DOLBY_PATH)/proprietary/vendor/lib64/libcodec2_soft_common.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_common.so \
    $(C2DOLBY_PATH)/proprietary/vendor/lib64/libcodec2_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_ddpdec.so \
    $(C2DOLBY_PATH)/proprietary/vendor/lib64/libcodec2_store_dolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_store_dolby.so \
    $(C2DOLBY_PATH)/proprietary/vendor/lib64/libsfplugin_ccodec_utils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libsfplugin_ccodec_utils.so

PRODUCT_PACKAGES += \
    android.hardware.media.c2@1.1.vendor \
    android.hardware.media.c2@1.2.vendor