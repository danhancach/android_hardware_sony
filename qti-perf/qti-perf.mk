LOCAL_PERF := hardware/sony/qti-perf

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PERF)

# Boot Jars
PRODUCT_BOOT_JARS += \
    QPerformance \
    UxPerformance

# Packages
PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0 \
    libavservices_minijail

PRODUCT_COPY_FILES += \
    $(LOCAL_PERF)/proprietary/system/etc/permissions/com.qualcomm.qti.Performance.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.qualcomm.qti.Performance.xml \
    $(LOCAL_PERF)/proprietary/system/etc/permissions/com.qualcomm.qti.UxPerformance.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.qualcomm.qti.UxPerformance.xml \
    $(LOCAL_PERF)/proprietary/system/lib64/vendor.qti.hardware.perf2-V1-ndk.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/vendor.qti.hardware.perf2-V1-ndk.so \
    $(LOCAL_PERF)/proprietary/system_ext/bin/perfservice:$(TARGET_COPY_OUT_SYSTEM_EXT)/bin/perfservice \
    $(LOCAL_PERF)/proprietary/system_ext/bin/qspmsvc:$(TARGET_COPY_OUT_SYSTEM_EXT)/bin/qspmsvc \
    $(LOCAL_PERF)/proprietary/system_ext/etc/init/perfservice.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/perfservice.rc \
    $(LOCAL_PERF)/proprietary/system_ext/etc/init/qspmsvc.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/qspmsvc.rc \
    $(LOCAL_PERF)/proprietary/system_ext/etc/perf/wlc_model.tflite:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/perf/wlc_model.tflite \
    $(LOCAL_PERF)/proprietary/system_ext/etc/permissions/privapp-permissions-com.qualcomm.qti.performancemode.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-com.qualcomm.qti.performancemode.xml \
    $(LOCAL_PERF)/proprietary/system_ext/etc/seccomp_policy/perfservice.policy:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/seccomp_policy/perfservice.policy \
    $(LOCAL_PERF)/proprietary/system_ext/lib/libbeluga.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libbeluga.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/libcomposerextn.qti.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libcomposerextn.qti.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/libdolphin.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libdolphin.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/liblayerext.qti.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/liblayerext.qti.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/libpenguin.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libpenguin.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/libpenguin_impl.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libpenguin_impl.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/libqape.qti.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libqape.qti.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/libqspm-mem-utils.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libqspm-mem-utils.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/libqspmsvc.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libqspmsvc.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/libqti-at.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libqti-at.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/libqti-iopd-client_system.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libqti-iopd-client_system.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/libqti-perfd-client_system.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libqti-perfd-client_system.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/libqti_performance.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libqti_performance.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/libqti_workloadclassifiermodel.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libqti_workloadclassifiermodel.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/libskewknob_system.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libskewknob_system.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/libsmomoconfig.qti.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libsmomoconfig.qti.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/vendor.qti.hardware.iop@2.0.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/vendor.qti.hardware.iop@2.0.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/vendor.qti.hardware.limits@1.0.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/vendor.qti.hardware.limits@1.0.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/vendor.qti.hardware.limits@1.1.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/vendor.qti.hardware.limits@1.1.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/vendor.qti.hardware.perf@2.0.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/vendor.qti.hardware.perf@2.0.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/vendor.qti.hardware.perf@2.1.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/vendor.qti.hardware.perf@2.1.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/vendor.qti.hardware.perf@2.2.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/vendor.qti.hardware.perf@2.2.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/vendor.qti.hardware.perf@2.3.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/vendor.qti.hardware.perf@2.3.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/vendor.qti.qspmhal-V1-ndk.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/vendor.qti.qspmhal-V1-ndk.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib/vendor.qti.qspmhal@1.0.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/vendor.qti.qspmhal@1.0.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/libbeluga.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libbeluga.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/libcomposerextn.qti.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libcomposerextn.qti.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/libdolphin.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libdolphin.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/liblayerext.qti.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/liblayerext.qti.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/libpenguin.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libpenguin.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/libpenguin_impl.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libpenguin_impl.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/libqape.qti.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libqape.qti.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/libqspm-mem-utils.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libqspm-mem-utils.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/libqspmsvc.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libqspmsvc.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/libqti-at.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libqti-at.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/libqti-iopd-client_system.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libqti-iopd-client_system.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/libqti-perfd-client_system.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libqti-perfd-client_system.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/libqti_performance.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libqti_performance.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/libqti_workloadclassifiermodel.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libqti_workloadclassifiermodel.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/libskewknob_system.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libskewknob_system.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/libsmomoconfig.qti.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libsmomoconfig.qti.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/vendor.qti.hardware.iop@2.0.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/vendor.qti.hardware.iop@2.0.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/vendor.qti.hardware.limits@1.0.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/vendor.qti.hardware.limits@1.0.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/vendor.qti.hardware.limits@1.1.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/vendor.qti.hardware.limits@1.1.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/vendor.qti.hardware.perf@2.0.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/vendor.qti.hardware.perf@2.0.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/vendor.qti.hardware.perf@2.1.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/vendor.qti.hardware.perf@2.1.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/vendor.qti.hardware.perf@2.2.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/vendor.qti.hardware.perf@2.2.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/vendor.qti.hardware.perf@2.3.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/vendor.qti.hardware.perf@2.3.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/vendor.qti.qspmhal-V1-ndk.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/vendor.qti.qspmhal-V1-ndk.so \
    $(LOCAL_PERF)/proprietary/system_ext/lib64/vendor.qti.qspmhal@1.0.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/vendor.qti.qspmhal@1.0.so

PRODUCT_PACKAGES += \
    PowerSaveMode \
    workloadclassifier \
    PerformanceMode \
    QPerformance \
    QXPerformance \
    UxPerformance

# Packages
PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0.vendor \
    libavservices_minijail.vendor \
    libpsi.vendor \
    libtflite \
    vendor.qti.hardware.servicetracker@1.2.vendor

# Properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.perf-hal.ver=2.2 \
    ro.vendor.extension_library=libqti-perfd-client.so \
    ro.vendor.perf.scroll_opt=true \
    ro.vendor.qspm.enable=true \
    vendor.power.pasr.enabled=true \
    ro.vendor.beluga.p=0x3 \
    ro.vendor.beluga.c=0x4800 \
    ro.vendor.beluga.s=0x900 \
    ro.vendor.beluga.t=0x240 \
    vendor.pasr.activemode.enabled=true

PRODUCT_COPY_FILES += \
    $(LOCAL_PERF)/proprietary/vendor/bin/hw/vendor.qti.hardware.iop@2.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.qti.hardware.iop@2.0-service \
    $(LOCAL_PERF)/proprietary/vendor/bin/hw/vendor.qti.hardware.perf@2.2-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.qti.hardware.perf@2.2-service \
    $(LOCAL_PERF)/proprietary/vendor/bin/hw/vendor.qti.hardware.servicetracker@1.2-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.qti.hardware.servicetracker@1.2-service \
    $(LOCAL_PERF)/proprietary/vendor/bin/hw/vendor.qti.memory.pasrmanager@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.qti.memory.pasrmanager@1.0-service \
    $(LOCAL_PERF)/proprietary/vendor/bin/hw/vendor.qti.psiclient@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.qti.psiclient@1.0-service \
    $(LOCAL_PERF)/proprietary/vendor/bin/msm_irqbalance:$(TARGET_COPY_OUT_VENDOR)/bin/msm_irqbalance \
    $(LOCAL_PERF)/proprietary/vendor/bin/poweropt-service:$(TARGET_COPY_OUT_VENDOR)/bin/poweropt-service \
    $(LOCAL_PERF)/proprietary/vendor/bin/vendor.qti.qspmhal@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/vendor.qti.qspmhal@1.0-service \
    $(LOCAL_PERF)/proprietary/vendor/etc/init/poweropt-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/poweropt-service.rc \
    $(LOCAL_PERF)/proprietary/vendor/etc/init/vendor.qti.hardware.iop@2.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.qti.hardware.iop@2.0-service.rc \
    $(LOCAL_PERF)/proprietary/vendor/etc/init/vendor.qti.hardware.perf@2.2-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.qti.hardware.perf@2.2-service.rc \
    $(LOCAL_PERF)/proprietary/vendor/etc/init/vendor.qti.hardware.servicetracker@1.2-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.qti.hardware.servicetracker@1.2-service.rc \
    $(LOCAL_PERF)/proprietary/vendor/etc/init/vendor.qti.memory.pasrmanager@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.qti.memory.pasrmanager@1.0-service.rc \
    $(LOCAL_PERF)/proprietary/vendor/etc/init/vendor.qti.psiclient@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.qti.psiclient@1.0-service.rc \
    $(LOCAL_PERF)/proprietary/vendor/etc/init/vendor.qti.qspmhal@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.qti.qspmhal@1.0-service.rc \
    $(LOCAL_PERF)/proprietary/vendor/etc/pwr/PowerFeatureConfig.xml:$(TARGET_COPY_OUT_VENDOR)/etc/pwr/PowerFeatureConfig.xml \
    $(LOCAL_PERF)/proprietary/vendor/etc/pwr/VideoPowerOptFeature.xml:$(TARGET_COPY_OUT_VENDOR)/etc/pwr/VideoPowerOptFeature.xml \
    $(LOCAL_PERF)/proprietary/vendor/etc/seccomp_policy/qspm.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/qspm.policy \
    $(LOCAL_PERF)/proprietary/vendor/lib/hw/vendor.qti.hardware.servicetracker@1.2-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/vendor.qti.hardware.servicetracker@1.2-impl.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/hw/vendor.qti.memory.pasrmanager@1.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/vendor.qti.memory.pasrmanager@1.0-impl.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/libpasrutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libpasrutils.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/libperfconfig.so:$(TARGET_COPY_OUT_VENDOR)/lib/libperfconfig.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/libperfgluelayer.so:$(TARGET_COPY_OUT_VENDOR)/lib/libperfgluelayer.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/libperfioctl.so:$(TARGET_COPY_OUT_VENDOR)/lib/libperfioctl.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/libpowercore.so:$(TARGET_COPY_OUT_VENDOR)/lib/libpowercore.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/libqti-iopd-client.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqti-iopd-client.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/libqti-iopd.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqti-iopd.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/libqti-perfd-client.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqti-perfd-client.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/libqti-perfd.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqti-perfd.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/libqti-util.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqti-util.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/libqti-utils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqti-utils.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/libskewknob.so:$(TARGET_COPY_OUT_VENDOR)/lib/libskewknob.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/vendor.qti.hardware.iop@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.qti.hardware.iop@1.0.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/vendor.qti.hardware.iop@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.qti.hardware.iop@2.0.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/vendor.qti.hardware.perf@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.qti.hardware.perf@2.0.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/vendor.qti.hardware.perf@2.1.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.qti.hardware.perf@2.1.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/vendor.qti.hardware.perf@2.2.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.qti.hardware.perf@2.2.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/vendor.qti.memory.pasrmanager@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.qti.memory.pasrmanager@1.0.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/vendor.qti.memory.pasrmanager@1.1.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.qti.memory.pasrmanager@1.1.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/vendor.qti.power.pasrmanager@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.qti.power.pasrmanager@1.0.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/vendor.qti.qspmhal@1.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.qti.qspmhal@1.0-impl.so \
    $(LOCAL_PERF)/proprietary/vendor/lib/vendor.qti.qspmhal@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.qti.qspmhal@1.0.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/hw/vendor.qti.hardware.servicetracker@1.2-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/vendor.qti.hardware.servicetracker@1.2-impl.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/hw/vendor.qti.memory.pasrmanager@1.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/vendor.qti.memory.pasrmanager@1.0-impl.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libadaptlaunch.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libadaptlaunch.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libappclassifier.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libappclassifier.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libgameoptfeature.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libgameoptfeature.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libgplaf.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libgplaf.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/liblearningmodule.so:$(TARGET_COPY_OUT_VENDOR)/lib64/liblearningmodule.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/liblmutils-ns.so:$(TARGET_COPY_OUT_VENDOR)/lib64/liblmutils-ns.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libmemperfd.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libmemperfd.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libmeters-ns.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libmeters-ns.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libmeters.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libmeters.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libpasrutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libpasrutils.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libperfconfig.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libperfconfig.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libperfgluelayer.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libperfgluelayer.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libperfioctl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libperfioctl.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libpowercallback.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libpowercallback.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libpowercore.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libpowercore.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libprekill.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libprekill.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libqti-iopd-client.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqti-iopd-client.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libqti-iopd.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqti-iopd.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libqti-perfd-client.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqti-perfd-client.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libqti-perfd.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqti-perfd.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libqti-util.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqti-util.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libqti-utils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqti-utils.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libreffeature.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libreffeature.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libskewknob.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libskewknob.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/libsplh.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libsplh.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/vendor.qti.hardware.iop@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.qti.hardware.iop@1.0.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/vendor.qti.hardware.iop@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.qti.hardware.iop@2.0.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/vendor.qti.hardware.perf@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.qti.hardware.perf@2.0.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/vendor.qti.hardware.perf@2.1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.qti.hardware.perf@2.1.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/vendor.qti.hardware.perf@2.2.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.qti.hardware.perf@2.2.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/vendor.qti.memory.pasrmanager@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.qti.memory.pasrmanager@1.0.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/vendor.qti.memory.pasrmanager@1.1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.qti.memory.pasrmanager@1.1.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/vendor.qti.power.pasrmanager@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.qti.power.pasrmanager@1.0.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/vendor.qti.qspmhal@1.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.qti.qspmhal@1.0-impl.so \
    $(LOCAL_PERF)/proprietary/vendor/lib64/vendor.qti.qspmhal@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.qti.qspmhal@1.0.so

PRODUCT_PACKAGES += \
    pasrservice \
    vendor.qti.hardware.servicetracker@1.2-service \
    vendor.qti.memory.pasrmanager@1.0-service \
    vendor.qti.hardware.iop@2.0-service \
    vendor.qti.hardware.perf@2.2-service \
    vendor.qti.qspmhal@1.0-service
