# Sony Open Devices
# SELinux policy variable definitions
LOCAL_SEPOLICY := device/sony/sepolicy

BOARD_VENDOR_SEPOLICY_DIRS += \
    $(LOCAL_SEPOLICY)/vendor

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    $(LOCAL_SEPOLICY)/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    $(LOCAL_SEPOLICY)/private

# Add sepolicy version to support OS upgrade and backward compatibility
BOARD_SEPOLICY_VERS := \
    $(PLATFORM_SDK_VERSION).0

# Legacy devices do not have a vndbinder PeripheralManager
ifeq ($(BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED),true)
BOARD_SEPOLICY_M4DEFS += target_legacy_per_mgr=false
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(LOCAL_SEPOLICY)/vendor-current
else
BOARD_SEPOLICY_M4DEFS += target_legacy_per_mgr=true
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    $(LOCAL_SEPOLICY)/private-legacy
endif
