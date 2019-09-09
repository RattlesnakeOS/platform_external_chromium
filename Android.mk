LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := chromiumlib
LOCAL_MODULE_CLASS := APPS
LOCAL_MULTILIB := both
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)
LOCAL_REQUIRED_MODULES := \
        libwebviewchromium_loader \
        libwebviewchromium_plat_support

LOCAL_MODULE_TARGET_ARCH := arm64
my_src_arch := $(call get-prebuilt-src-arch,$(LOCAL_MODULE_TARGET_ARCH))
LOCAL_SRC_FILES := prebuilt/$(my_src_arch)/TrichromeLibrary.apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := chromiumwebview
LOCAL_MODULE_CLASS := APPS
LOCAL_MULTILIB := both
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)
LOCAL_REQUIRED_MODULES := \
        libwebviewchromium_loader \
        libwebviewchromium_plat_support

LOCAL_MODULE_TARGET_ARCH := arm64
my_src_arch := $(call get-prebuilt-src-arch,$(LOCAL_MODULE_TARGET_ARCH))
LOCAL_SRC_FILES := prebuilt/$(my_src_arch)/TrichromeWebView.apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := chromiumchrome
LOCAL_MODULE_CLASS := APPS
LOCAL_MULTILIB := both
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)
LOCAL_REQUIRED_MODULES := \
        libwebviewchromium_loader \
        libwebviewchromium_plat_support

LOCAL_MODULE_TARGET_ARCH := arm64
my_src_arch := $(call get-prebuilt-src-arch,$(LOCAL_MODULE_TARGET_ARCH))
LOCAL_SRC_FILES := prebuilt/$(my_src_arch)/TrichromeChrome.apk
include $(BUILD_PREBUILT)
