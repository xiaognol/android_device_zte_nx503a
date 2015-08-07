    git clone https://github.com/xiaognol/android_device_zte_nx503a.git -b kk_mkt device/zte/nx503a
    git clone https://github.com/xiaognol/android_kernel_zte_nx503a.git -b kk_mkt kernel/zte/nx503a
    git clone https://github.com/xiaognol/vendor_zte_nx503a.git -b kk_mkt vendor/zte/nx503a
    # or edit .repo/local_manifests/roomservice.xml

    mkdir -p .repo/local_manifests/
    cp ../../device/zte/nx503a/roomservice.xml .repo/local_manifests/

    # Compile
    . build/envsetup.sh
    lunch mk_nx503a-userdebug
    mka otapackage

    ### Also useful
    # mka installclean
    # mka bootimage
    # mka recoveryimage

