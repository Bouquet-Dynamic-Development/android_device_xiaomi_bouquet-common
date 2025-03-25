#! /vendor/bin/sh

# Check if /proc/cmdline exists and contains the target string
if [ -f /vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so ] && grep -q "androidboot.hwdevice=whyred" /proc/cmdline; then
  # Remount /vendor as read-write
  mount -o remount,rw /vendor

  # Remove the specified files
  rm -rf /vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so \
         /vendor/bin/hw/android.hardware.keymaster@3.0-service-qti \
         /vendor/bin/hw/android.hardware.gatekeeper@1.0-service-qti \
         /vendor/etc/init/android.hardware.keymaster@3.0-service-qti.rc \
         /vendor/etc/init/android.hardware.gatekeeper@1.0-service-qti.rc \
         /vendor/lib/hw/android.hardware.gatekeeper@1.0-impl-qti.so \
         /vendor/lib/hw/android.hardware.keymaster@3.0-impl-qti.so \
         /vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so \
         /vendor/lib64/hw/android.hardware.keymaster@3.0-impl-qti.so

  # Remount /vendor as read-only
  mount -o remount,ro /vendor
fi