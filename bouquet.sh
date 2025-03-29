#!/system/bin/sh

# Check if the device is whyred
if grep -q 'androidboot.hwdevice=whyred' /proc/cmdline; then
  mount /dev/block/dm-1 /mnt/vendor -o rw; rm -f /mnt/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so; rm -f /mnt/vendor/bin/hw/android.hardware.keymaster@3.0-service-qti; rm -f /mnt/vendor/bin/hw/android.hardware.gatekeeper@1.0-service-qti; rm -f /mnt/vendor/etc/init/android.hardware.keymaster@3.0-service-qti.rc; rm -f /mnt/vendor/etc/init/android.hardware.gatekeeper@1.0-service-qti.rc; rm -f /mnt/vendor/lib/hw/android.hardware.gatekeeper@1.0-impl-qti.so; rm -f /mnt/vendor/lib/hw/android.hardware.keymaster@3.0-impl-qti.so; rm -f /mnt/vendor/lib64/hw/android.hardware.keymaster@3.0-impl-qti.so
fi
