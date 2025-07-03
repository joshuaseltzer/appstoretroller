TARGET := iphone:clang:16.5:14.5
INSTALL_TARGET_PROCESSES = SpringBoard
ARCHS = arm64 arm64e

PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = appstoretroller
appstoretroller_FILES = Tweak.xm
appstoretroller_CFLAGS = -fobjc-arc -Wno-deprecated-declarations

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += appstoretrollerPrefs
SUBPROJECTS += appstoretrollerKiller
include $(THEOS_MAKE_PATH)/aggregate.mk
