Device configuration for the HTC Marvel

Copyright (C) 2011 The CyanogenMod Project

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

------------------------------------------------------------------
* Description

  This repository is for CM7 on HTC marvel.
  It is still a work in progress.

* How To Build CM7 for HTC marvel

  Make a workspace

  $ cd ~
  $ mkdir android
  $ cd android
  $ mkdir system
  $ cd system


  Do repo init & sync

  $ repo init -u git://github.com/CyanogenMod/android.git -b gingerbread
  
  add followings to an xml file inside local_manifests directory
```
    <?xml version="1.0" encoding="UTF-8"?>
    <manifest>
      <remote  name="aosp"
               fetch="https://android.googlesource.com"
               review="review.source.android.com" />
    <remove-project name="CyanogenMod/android_external_svox" />
    <remove-project name="CyanogenMod/android_hardware_ti_wpan" />
    <remove-project name="CyanogenMod/android_vendor_cyanogen" />
    <remove-project name="CyanogenMod/android_external_webkit" />
    <remove-project name="CyanogenMod/android_system_su" />
  
    <project path="external/webkit" name="mstfkaratas/android_external_webkit" />
    <project path="vendor/htc/marvel" name="mstfkaratas/proprietary_vendor_htc_marvel" />
    <project path="device/htc/marvel" name="mstfkaratas/android_device_htc_marvel" />
    <project path="external/svox" name="platform/external/svox" remote="aosp" revision="gingerbread-release" />
    <project path="vendor/cyanogen" name="mstfkaratas/android_vendor_cyanogen" />
  </manifest>

```
  
  $ repo sync -j20

  Setup environment

  $ source build/envsetup.sh
  $ lunch
  (select cyanogen_marvel-eng)

  Build CM7

  $ make acp
  (to avoid errors on distributed building)

  $ make -j4 bacon

* Thanks

  Cyanogen
  attn1
  jznomoney (who booted the first marvel on Gingerbread and contributes tons to this device)
  CyanogenMod team
  
------------------------------------------------------------------
if you have problems with make:
Setting up make
The build process requires an older version of make. The 4.0 branch is shipped with Ubuntu 14.10, so you’ll need to fetch the previous version first. You can download Make 3.81 from : http://packages.ubuntu.com/trusty/make

First, remove the previous version (if installed) and install the package you just downloaded. You can do that with the command, making sure to first cd into the directory you downloaded it to:

  $ sudo apt-get purge make -y
  
  $ sudo dpkg -i make*.deb

IMPORTANT This process may remove other packages that depend on make. Note them carefully and reinstall them after running these commands.

from: https://bradb.net/building-firefox-os-for-the-flatfish-tablet-from-ubuntu/#toc_3
------------------------------------------------------------------
----
EOF
