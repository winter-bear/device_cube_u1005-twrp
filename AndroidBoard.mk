LOCAL_PATH := $(call my-dir)

ifneq ($(filter U1005,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
