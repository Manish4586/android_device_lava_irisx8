 #!/bin/bash
 
 cd ../../../..
 cd packages/apps/Settings
 patch -p1 -b < ../../../device/Lava/IrisX8/patches/dev_info.patch
 git clean -f -d
 cd ../..
 cd system/core
 patch -p1 < ../../device/Lava/IrisX8/patches/system_core.patch
 cd ../..
 cd system/bt
 patch -p1 < ../../device/Lava/IrisX8/patches/system_bt.patch
 cd ..
 cd netd
 patch -p1 < ../../device/Lava/IrisX8/patches/system_netd.patch
 cd ..
 cd vold
 patch -p1 < ../../device/Lava/IrisX8/patches/system_vold.patch
 cd ../..
 cd frameworks/av
 patch -p1 < ../../device/Lava/IrisX8/patches/frameworks_av.patch
 cd ..
 cd base
 patch -p1 < ../../device/Lava/IrisX8/patches/frameworks_base.patch
 cd ..
 cd rs
 patch -p1 < ../../device/Lava/IrisX8/patches/frameworks_rs.patch
 cd ..
 cd native
 patch -p1 < ../../device/Lava/IrisX8/patches/frameworks_native.patch
 cd ..
 cd opt/telephony/
 patch -p1 < ../../../device/Lava/IrisX8/patches/frameworks_opt_telephony.patch
 cd ../../..
 cd external/sepolicy
 patch -p1 < ../../device/Lava/IrisX8/patches/external_sepolicy.patch
 cd ..
 cd wpa_supplicant_8
 patch -p1 < ../../device/Lava/IrisX8/patches/external_wpa_supplicant_8.patch
 cd ../..
 echo Cleaning For Building
 echo PATCHED (^_^) brunch IrisX8 
 by Manish_4586!
