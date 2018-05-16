#!/bin/bash
cd ../../../..
cd packages/apps/Settings
patch -p1 -b < ../../../device/Lava/IrisX8/patches/dev_info.patch
git clean -f -d
cd system/core
patch -p1 < ../../device/Lava/IrisX8/patches/system_core.patch
cd ..
cd netd
patch -p1 < ../../device/Lava/IrisX8/patches/system_netd.patch
cd ../..
cd packages/apps/Settings
patch -p1 < ../../../device/Lava/IrisX8/patches/packages_apps_Settings.patch
cd ..
cd Camera2
patch -p1 < ../../../device/Lava/IrisX8/patches/packages_apps_Camera2.patch
cd ../..
cd services/Telephony
patch -p1 < ../../../device/Lava/IrisX8/patches/packages_services_Telephony.patch
cd ../../..
cd external/openssl
patch -p1 < ../../device/Lava/IrisX8/patches/external_openssl.patch
cd ..
cd skia
patch -p1 < ../../device/Lava/IrisX8/patches/external_skia.patch
cd ../..
cd frameworks/base
git apply -v < ../../device/Lava/IrisX8/patches/frameworks_base.patch
cd ..
cd native
patch -p1 < ../../device/Lava/IrisX8/patches/frameworks_native.patch
cd ..
cd opt/telephony
patch -p1 < ../../device/Lava/IrisX8/patches/frameworks_opt_telephony.patch
cd ../../..
echo Patches Applied Successfully! 
