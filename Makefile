INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = lower

lower_FILES = Tweak.x
lower_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
