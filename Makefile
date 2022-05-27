TARGET = iphone:latest:10.0
PACKAGE_VERSION = 1.0.0
DEBUG = 0

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SpringAlloc

SpringAlloc_FILES = Tweak.xm
SpringAlloc_CFLAGS = -fobjc-arc -w

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall SpringBoard"