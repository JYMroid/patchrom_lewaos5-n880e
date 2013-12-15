#
# Makefile for ZTE N880E
#

# The original zip file, MUST be specified by each product
local-zip-file := stockrom.zip

# The output zip file of LEWA rom, the default is porting_lewa.zip if not specified
local-out-zip-file := LEWA_N880E.zip

# the location for local-ota to save target-file
local-previous-target-dir := ~/workspace/ota_base/N880E_4.1

# All apps from original ZIP, but has smali files chanded
local-modified-apps := 

local-modified-jars := 

# All apks from LEWA
local-lewa-removed-apps := LewaFlashlight LatinIME

local-lewa-modified-apps := Phone Settings LewaLauncherX

local-lewa-device := N880E_JB

local-lewa-partner := Lewa

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := HDPI

include phoneapps.mk

# To include the local targets before and after zip the final ZIP file,
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
pre_install_data_packages := $(TMP_DIR)/pre_install_apk_pkgname.txt

local-pre-zip-misc: add-prebuilt-lewa-sqlite-library
	cp other/apns-conf.xml $(ZIP_DIR)/system/etc/
	cp other/install-apk $(ZIP_DIR)/system/etc/install-apk.sh
	rm -rf $(ZIP_DIR)/system/etc/calllocation.db
	rm -rf $(ZIP_DIR)/system/etc/defaultTheme.btp
	rm -rf $(ZIP_DIR)/system/etc/fallback_fonts-ja.xml
	rm -rf $(ZIP_DIR)/system/etc/localTheme01.btp
	rm -rf $(ZIP_DIR)/system/etc/onlinephonebook.db
	rm -rf $(ZIP_DIR)/data/media/preinstall_apps/BaiduMap.apk
	rm -rf $(ZIP_DIR)/data/media/preinstall_apps/Calendar365.apk
	rm -rf $(ZIP_DIR)/data/media/preinstall_apps/huohua_videoplayer.apk
	rm -rf $(ZIP_DIR)/data/media/preinstall_apps/iReader.apk
	rm -rf $(ZIP_DIR)/data/media/preinstall_apps/VoiceAssistant.apk
	mkdir $(ZIP_DIR)//system/hundan/
	cp other/boot.img $(ZIP_DIR)/boot.img
	cp other/hundan $(ZIP_DIR)/system/bin/
