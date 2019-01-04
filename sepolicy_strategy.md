# Split/treble/vndk

Set `PRODUCT_SEPOLICY_SPLIT := true` on platform/device configs so that we can
test treble stuff on older devices
Even if no FULL_TREBLE is there, sepolicy should be ready

# Commits

<!-- - qcom.devup, with accompanying change in device-sony-common -->
  <!-- FIXME: see to it that sys.qcom.devup is removed from common! -->
<!-- - sysfs_bus_esoc -->
<!-- - qcrilam -->
<!-- - timekeep(one for .c, one for .java) -->
<!-- - bluetooth properties, hal_bluetooth_default -->
<!-- - rtc label -->
- rtc permissions
<!-- - cashsvr -->
- input device names
<!-- - cameraserver -->
<!-- - new props -->
- ipacm socket
<!-- - wifi_vendor_data_file deprecation and hostapd(remove file as well), wpa(_supplicant) -->
- proc_kernel_sched
- printk(only vendor_init)
- init, vendor_init including mounts

# Meantime
- Try to keep the thingy working in the meantime, make one giant commit and
  forcepush(and keep a different local branch)
- Add comments about bus_esoc stuff

# Testing
- Get more logs for unproven denials
- tama, loire are the opposite ends of spectrum, check both
- init, vendor_init especially!

# Later
- Figure out cpuset problem
- remove ioctls and replace with more specific allowxperm
- cleanup unused policy
- mounts, bind-mounts, persist etc
