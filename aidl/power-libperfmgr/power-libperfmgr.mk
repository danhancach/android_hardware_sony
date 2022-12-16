PRODUCT_SOONG_NAMESPACES += \
    hardware/google/interfaces \
    hardware/google/pixel

BOARD_SEPOLICY_DIRS += hardware/sony/aidl/power-libperfmgr/sepolicy

# power HAL
PRODUCT_COPY_FILES += \
    hardware/sony/aidl/power-libperfmgr/powerhint.json:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.json

PRODUCT_PACKAGES += \
    android.hardware.power-service.sony-libperfmgr \
    android.hardware.power@1.3.vendor

# Perf
PRODUCT_PACKAGES += \
    libqti-perfd-client

PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.extension_library=libqti-perfd-client.so