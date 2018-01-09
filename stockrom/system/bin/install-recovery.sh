#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/hi_mci.0/by-name/recovery:22908928:f6a5935700d776728a92d2b7d204373c45a88604; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/hi_mci.0/by-name/boot:21950464:e402c68d59a0420391fadfb320ca44044b3194be EMMC:/dev/block/platform/hi_mci.0/by-name/recovery f6a5935700d776728a92d2b7d204373c45a88604 22908928 e402c68d59a0420391fadfb320ca44044b3194be:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
