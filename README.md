<p align="center">
![cmlogo](https://llaverotecnologico.files.wordpress.com/2015/06/wpid-wp-1435340344758.jpeg)
<p align="center">
#CyanogenMod 12.1 Device Configuration for the Samsung Galaxy Core Prime (G360T1).
In order to build CyanogenMod yourself, you must first setup a build environment. Instructions to do that can be found [here](https://source.android.com/source/initializing.html).

Once you setup a build environment, initialize the CyanogenMod repo in your working directory using this command:
> repo init -u https://github.com/CyanogenMod/android.git -b cm-12.1

Next, initialize the device repositories, using this command:
> curl --create-dirs -L -o .repo/local_manifests/local_manifest.xml -O -L https://raw.githubusercontent.com/PlatinumMaster/android_local_manifest/cm-12.1/local_manifest.xml

Finally, to start syncing, run this command:
> repo sync


Once you finished syncing, to build CyanogenMod, run these commands:
> . build/envsetup.sh && brunch cm_cprimeltemtr-userdebug
