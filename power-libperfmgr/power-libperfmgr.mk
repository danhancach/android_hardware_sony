POWER_PATCH := hardware/sony/power-libperfmgr

PRODUCT_SOONG_NAMESPACES += \
	hardware/google/pixel \
    hardware/google/interfaces \
	$(POWER_PATCH)

PRODUCT_COPY_FILES += \
	$(POWER_PATCH)/powerhint.json:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.json \
    $(POWER_PATCH)/init.qcom.power.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.qcom.power.rc

PRODUCT_PACKAGES += \
	android.hardware.power-service.sony-libperfmgr \
	libqti-perfd-client \
	sendhint

PRODUCT_VENDOR_PROPERTIES += \
	ro.vendor.extension_library=libqti-perfd-client.so \
	debug.sf.enable_adpf_cpu_hint=true \
    debug.hwui.use_hint_manager=true
