LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),aio_row)

ifeq ($(USE_MTK_CAMERA_WRAPPER),true)
include $(CLEAR_VARS)
LOCAL_MODULE := libcam2halsensor
LOCAL_SRC_FILES_64 := proprietary/lib64/libcam2halsensor.so
LOCAL_SRC_FILES_32 := proprietary/lib/libcam2halsensor.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcameracustom
LOCAL_SRC_FILES_64 := proprietary/lib64/libcameracustom.so
LOCAL_SRC_FILES_32 := proprietary/lib/libcameracustom.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := libmtkcamera_client
LOCAL_SRC_FILES_64 := proprietary/lib64/libmtkcamera_client.so
LOCAL_SRC_FILES_32 := proprietary/lib/libmtkcamera_client.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libdpframework
LOCAL_SRC_FILES_64 := proprietary/lib64/libdpframework.so
LOCAL_SRC_FILES_32 := proprietary/lib/libdpframework.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libion_mtk
LOCAL_SRC_FILES_64 := proprietary/lib64/libion_mtk.so
LOCAL_SRC_FILES_32 := proprietary/lib/libion_mtk.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

endif
