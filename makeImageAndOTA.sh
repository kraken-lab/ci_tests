#! /bin/bash

if [ "$1" = "" ]
then
  echo ### make dist...
  ts=`date +%Y%m%d`
  make -j9 dist
  echo ### done.
else
  ts=$1
fi

echo date=$ts

#./build/tools/releasetools/ota_from_target_files.py out/target/product/trizeps7_6dq/trizeps7_6dq-target_files-YYYYMMDD.zip Voxter_E+_Android_OTA.zip

./build/tools/releasetools/ota_from_target_files.py out/target/product/trizeps7_6dq/trizeps7_6dq-target_files-$ts.zip Voxter_E+_Android_OTA.zip

zip -j Voxter_E+_Android.zip out/target/product/trizeps7_6dq/boot.img out/target/product/trizeps7_6dq/recovery.img out/target/product/trizeps7_6dq/system.img out/target/product/trizeps7_6dq/u-boot.imx
