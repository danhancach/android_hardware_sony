LOCAL_MEDIA := hardware/sony/media

PRODUCT_SOONG_NAMESPACES += $(LOCAL_MEDIA)

# Enable QCT resampler
AUDIO_FEATURE_ENABLED_EXTN_RESAMPLER := true

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_MEDIA)/proprietary/system_ext/lib/extractors/libmmparserextractor.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/extractors/libmmparserextractor.so \
    $(LOCAL_MEDIA)/proprietary/system_ext/lib/libavenhancements.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libavenhancements.so \
    $(LOCAL_MEDIA)/proprietary/system_ext/lib/libmmosal.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libmmosal.so \
    $(LOCAL_MEDIA)/proprietary/system_ext/lib/libmmparser_lite.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libmmparser_lite.so \
    $(LOCAL_MEDIA)/proprietary/system_ext/lib64/extractors/libmmparserextractor.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/extractors/libmmparserextractor.so \
    $(LOCAL_MEDIA)/proprietary/system_ext/lib64/libavenhancements.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libavenhancements.so \
    $(LOCAL_MEDIA)/proprietary/system_ext/lib64/libmmosal.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libmmosal.so \
    $(LOCAL_MEDIA)/proprietary/system_ext/lib64/libmmparser_lite.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libmmparser_lite.so

PRODUCT_PACKAGES += \
    libavservices_minijail \
    libmediaplayerservice

PRODUCT_SYSTEM_EXT_PROPERTIES += \
    vendor.mm.enable.qcom_parser=16777215

# Media Codecs
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_MEDIA)/media_codecs_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_audio.xml

# Media Profiles
PRODUCT_COPY_FILES += \
    $(LOCAL_MEDIA)/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml

# Packages
PRODUCT_PACKAGES += \
    libavservices_minijail.vendor \
    libcodec2_hidl@1.0.vendor \
    libcodec2_vndk.vendor \
    libgui_vendor \
    libstagefright_softomx.vendor

# Properties
PRODUCT_SYSTEM_EXT_PROPERTIES += \
    media.settings.xml=/vendor/etc/media_profiles_vendor.xml \
    media.stagefright.thumbnail.prefer_hw_codecs=true \
    ro.media.recorder-max-base-layer-fps=60

PRODUCT_COPY_FILES += \
    $(LOCAL_MEDIA)/proprietary/vendor/bin/hw/vendor.qti.media.c2@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.qti.media.c2@1.0-service \
    $(LOCAL_MEDIA)/proprietary/vendor/bin/mm-vidc-omx-test:$(TARGET_COPY_OUT_VENDOR)/bin/mm-vidc-omx-test \
    $(LOCAL_MEDIA)/proprietary/vendor/etc/init/vendor.qti.media.c2@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.qti.media.c2@1.0-service.rc \
    $(LOCAL_MEDIA)/proprietary/vendor/etc/media_codecs_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2.xml \
    $(LOCAL_MEDIA)/proprietary/vendor/etc/media_codecs_performance_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_c2.xml \
    $(LOCAL_MEDIA)/proprietary/vendor/etc/seccomp_policy/codec2.vendor.base-arm.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/codec2.vendor.base-arm.policy \
    $(LOCAL_MEDIA)/proprietary/vendor/etc/seccomp_policy/codec2.vendor.ext-arm.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/codec2.vendor.ext-arm.policy \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libOmxSwVdec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libOmxSwVdec.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libOmxSwVencMpeg4.so:$(TARGET_COPY_OUT_VENDOR)/lib/libOmxSwVencMpeg4.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libOmxVideoDSMode.so:$(TARGET_COPY_OUT_VENDOR)/lib/libOmxVideoDSMode.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libfastcrc.so:$(TARGET_COPY_OUT_VENDOR)/lib/libfastcrc.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqcodec2_base.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqcodec2_base.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqcodec2_basecodec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqcodec2_basecodec.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqcodec2_core.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqcodec2_core.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqcodec2_platform.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqcodec2_platform.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqcodec2_utils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqcodec2_utils.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqcodec2_v4l2codec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqcodec2_v4l2codec.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libstreamparser.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstreamparser.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libswvdec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libswvdec.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libvideooptfeature.so:$(TARGET_COPY_OUT_VENDOR)/lib/libvideooptfeature.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libvideoutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libvideoutils.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/vendor.qti.hardware.vpp@1.1.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.qti.hardware.vpp@1.1.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/vendor.qti.hardware.vpp@1.2.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.qti.hardware.vpp@1.2.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/vendor.qti.hardware.vpp@1.3.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.qti.hardware.vpp@1.3.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libOmxSwVdec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libOmxSwVdec.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libOmxSwVencMpeg4.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libOmxSwVencMpeg4.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqcodec2_base.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqcodec2_base.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqcodec2_basecodec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqcodec2_basecodec.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqcodec2_core.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqcodec2_core.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqcodec2_platform.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqcodec2_platform.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqcodec2_utils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqcodec2_utils.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqcodec2_v4l2codec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqcodec2_v4l2codec.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libswvdec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libswvdec.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libvideooptfeature.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libvideooptfeature.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/vendor.qti.hardware.vpp@1.1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.qti.hardware.vpp@1.1.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/vendor.qti.hardware.vpp@1.2.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.qti.hardware.vpp@1.2.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/vendor.qti.hardware.vpp@1.3.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.qti.hardware.vpp@1.3.so

PRODUCT_PACKAGES += \
    libMpeg4SwEncoder \
    c2_manifest_vendor

PRODUCT_COPY_FILES += \
    $(LOCAL_MEDIA)/proprietary/vendor/bin/hw/qconfigservice:$(TARGET_COPY_OUT_VENDOR)/bin/hw/qconfigservice \
    $(LOCAL_MEDIA)/proprietary/vendor/bin/hw/vendor.qti.media.c2audio@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.qti.media.c2audio@1.0-service \
    $(LOCAL_MEDIA)/proprietary/vendor/etc/init/init.qti.media.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.qti.media.rc \
    $(LOCAL_MEDIA)/proprietary/vendor/etc/init/qconfig.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/qconfig.rc \
    $(LOCAL_MEDIA)/proprietary/vendor/etc/init/vendor.qti.media.c2audio@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.qti.media.c2audio@1.0-service.rc \
    $(LOCAL_MEDIA)/proprietary/vendor/etc/seccomp_policy/c2audio.vendor.base-arm.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/c2audio.vendor.base-arm.policy \
    $(LOCAL_MEDIA)/proprietary/vendor/etc/seccomp_policy/c2audio.vendor.base-arm64.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/c2audio.vendor.base-arm64.policy \
    $(LOCAL_MEDIA)/proprietary/vendor/etc/seccomp_policy/c2audio.vendor.ext-arm.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/c2audio.vendor.ext-arm.policy \
    $(LOCAL_MEDIA)/proprietary/vendor/etc/seccomp_policy/c2audio.vendor.ext-arm64.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/c2audio.vendor.ext-arm64.policy \
    $(LOCAL_MEDIA)/proprietary/vendor/etc/seccomp_policy/codec2.vendor.base-arm64.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/codec2.vendor.base-arm64.policy \
    $(LOCAL_MEDIA)/proprietary/vendor/etc/seccomp_policy/codec2.vendor.ext-arm64.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/codec2.vendor.ext-arm64.policy \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libEvrcSwCodec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libEvrcSwCodec.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libQcelp13SwCodec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libQcelp13SwCodec.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqc2audio_base.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqc2audio_base.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqc2audio_basecodec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqc2audio_basecodec.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqc2audio_core.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqc2audio_core.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqc2audio_hooks.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqc2audio_hooks.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqc2audio_hwaudiocodec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqc2audio_hwaudiocodec.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqc2audio_platform.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqc2audio_platform.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqc2audio_swaudiocodec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqc2audio_swaudiocodec.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqc2audio_utils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqc2audio_utils.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqc2colorconvertfilter.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqc2colorconvertfilter.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqc2filter.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqc2filter.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqc2vppfilter.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqc2vppfilter.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqcodec2_filterbase.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqcodec2_filterbase.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqcodec2_hooks.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqcodec2_hooks.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqcodec2_mockfilter.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqcodec2_mockfilter.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqcodec2_mockqc2filter.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqcodec2_mockqc2filter.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libqconfigclient.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqconfigclient.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/libvideotxr.so:$(TARGET_COPY_OUT_VENDOR)/lib/libvideotxr.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/qti.video.utils.videobufferlayout.so:$(TARGET_COPY_OUT_VENDOR)/lib/qti.video.utils.videobufferlayout.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib/vendor.qti.hardware.qconfig@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.qti.hardware.qconfig@1.0.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libEvrcSwCodec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libEvrcSwCodec.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libQcelp13SwCodec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libQcelp13SwCodec.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqc2audio_base.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqc2audio_base.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqc2audio_basecodec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqc2audio_basecodec.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqc2audio_core.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqc2audio_core.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqc2audio_hooks.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqc2audio_hooks.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqc2audio_hwaudiocodec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqc2audio_hwaudiocodec.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqc2audio_platform.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqc2audio_platform.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqc2audio_swaudiocodec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqc2audio_swaudiocodec.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqc2audio_utils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqc2audio_utils.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqc2colorconvertfilter.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqc2colorconvertfilter.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqc2filter.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqc2filter.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqc2vppfilter.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqc2vppfilter.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqcodec2_filterbase.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqcodec2_filterbase.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqcodec2_hooks.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqcodec2_hooks.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqcodec2_mockfilter.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqcodec2_mockfilter.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqcodec2_mockqc2filter.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqcodec2_mockqc2filter.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libqconfigclient.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqconfigclient.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/libvideotxr.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libvideotxr.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/qti.video.utils.videobufferlayout.so:$(TARGET_COPY_OUT_VENDOR)/lib64/qti.video.utils.videobufferlayout.so \
    $(LOCAL_MEDIA)/proprietary/vendor/lib64/vendor.qti.hardware.qconfig@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.qti.hardware.qconfig@1.0.so

PRODUCT_PACKAGES += \
    c2_manifest_vendor_audio \
    vendor.qti.hardware.qconfig@1.0-service

#MM_CORE
MM_CORE := libmm-omxcore
MM_CORE += libOmxCore

PRODUCT_PACKAGES += $(MM_CORE)

MM_VIDEO := ExoplayerDemo
MM_VIDEO += libc2dcolorconvert
MM_VIDEO += libOmxSwVdec
MM_VIDEO += libOmxSwVencMpeg4
MM_VIDEO += libOmxVdec
MM_VIDEO += libOmxVenc
MM_VIDEO += libstagefrighthw
MM_VIDEO += init.qti.media.sh

PRODUCT_PACKAGES += $(MM_VIDEO)

PRODUCT_COPY_FILES += \
    $(LOCAL_MEDIA)/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_MEDIA)/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_kona_vendor.xml \
    $(LOCAL_MEDIA)/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_kona.xml \
    $(LOCAL_MEDIA)/media_codecs_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_kona_vendor.xml \
    $(LOCAL_MEDIA)/media_codecs_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_kona.xml \
    $(LOCAL_MEDIA)/media_codecs_vendor_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_audio.xml \
    $(LOCAL_MEDIA)/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_vendor.xml \
    $(LOCAL_MEDIA)/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_kona.xml \
    $(LOCAL_MEDIA)/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_MEDIA)/system_properties.xml:$(TARGET_COPY_OUT_VENDOR)/etc/system_properties.xml

# Enable CLANG/LLVM integer-overflow sanitization
TARGET_ENABLE_VIDC_INTSAN := true

# Enable DIAG mode for CLANG/LLVM integer-overflow sanitization
# TARGET_ENABLE_VIDC_INTSAN must be set to 'true' before enabling DIAG mode
# NOTE: DIAG mode should be used only for debug builds
TARGET_ENABLE_VIDC_INTSAN_DIAG := false

# Vendor property overrides
  $(warning "Forcing codec2.0 HW for generic odm build variant")
  #Set default ranks and rank Codec 2.0 over OMX codecs
  PRODUCT_ODM_PROPERTIES += debug.stagefright.ccodec=4
  PRODUCT_ODM_PROPERTIES += debug.stagefright.omx_default_rank=1000
  PRODUCT_COPY_FILES += \
    $(LOCAL_MEDIA)/media_profiles.xml:TARGET_COPY_OUT_ODM)/etc/media_profiles_V1_0.xml

# Produce packages addition
PRODUCT_PACKAGES += \
    libcodec2_vndk.vendor \
    libcodec2_hidl@1.0.vendor
