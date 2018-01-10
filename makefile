#
## Makefile for P8-Lite
#
#
## The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# All vendor apks needed
#local-phone-apps := NfcNci PrintSpooler PacProcessor CertInstaller GoogleCamera KeyChain \
#	Stk qcrilmsgtunnel TimeService UserDictionaryProvider talkback Bluetooth BluetoothMidiService \

#local-phone-priv-apps := Shell FusedLocation ProxyHandler ExternalStorageProvider TagGoogle \
#	SharedStorageBackup DMService ConnMO DiagMon DCMO InputDevices CellBroadcastReceiver \
#	BackupRestoreConfirmation

include phoneapps.mk

local-density := XHDPI
local-target-bit := 64

local-miui-modified-apps := InCallUI

local-miui-removed-apps := FM

local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone
include $(PORT_BUILD)/porting.mk

local-pre-zip-misc:
	@echo copying nesp custom files
	cp -rf nesp_custom/system $(ZIP_DIR)/
	@echo delete miui prebuilt binaries!
	rm -rf $(ZIP_DIR)/system/bin/app_process32_vendor
	cp -rf stockrom/system/bin/app_process32 $(ZIP_DIR)/system/bin/app_process32
nesp:
	@bash nesp_custom/nesp_custom.sh

#pre-zip-misc:= local-pre-zip-misc
