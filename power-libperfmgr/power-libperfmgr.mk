PRODUCT_SOONG_NAMESPACES += \
	hardware/google/pixel \
    hardware/google/interfaces

PRODUCT_COPY_FILES += \
	hardware/sony/power-libperfmgr/powerhint.json:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.json

PRODUCT_PACKAGES += \
	android.hardware.power-service.sony-libperfmgr \
	libqti-perfd-client \
	init.qcom.power.rc

PRODUCT_VENDOR_PROPERTIES += ro.vendor.extension_library=libqti-perfd-client.so
