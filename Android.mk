LOCAL_PATH := $(call my-dir)

ifeq ($(BOARD_MAGISK_INIT),true)

include $(CLEAR_VARS)
LOCAL_MODULE       := magiskprebuilts
LOCAL_MODULE_TAGS  := optional

MAGISK_VERSION := 20.4
MAGISK_HOST_BIN := $(LOCAL_PATH)/x86-linux

$(shell cp $(LOCAL_PATH)/$(TARGET_ARCH)-target/magiskinit $(PRODUCT_OUT)/magiskinit)
$(shell cp $(LOCAL_PATH)/$(TARGET_ARCH)-target/magiskboot $(PRODUCT_OUT)/magiskboot)

endif
