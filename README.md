## microG AOSP Based Build System

## Disclaimer
1. **Use this at your own risk.** Cyanogenmod received a cease and desist letter from Google when they included Google Apps in their ROM. See: [A Note on Google Apps for Android](http://android-developers.blogspot.com/2009/09/note-on-google-apps-for-android.html)
2. **This project is in no way affiliated with, sponsored by, or related to Google.**

## Getting started
**1. Download And Install Git LFS**

Download git lfs:

```
https://git-lfs.github.com
```

[Download v3.0.1 (Linux)](https://github.com/git-lfs/git-lfs/releases/download/v3.0.1/git-lfs-linux-amd64-v3.0.1.tar.gz)

Install git lfs:

```
tar -xz -f git-lfs-linux-amd64-v3.0.1.tar.gz -C lfs
cd lfs
sudo ./install.sh
```

**2. Clone Build System**

```
git clone https://github.com/BiTGApps/microG-Build.git vendor/gapps
```

**3. Check Build System**

Check size of cloned sources using below command:

```
du -h -s vendor/gapps/sources
```

It should be 90MB, if not then you need to integrate `git lfs` inside the source by using below commands:

```
cd vendor/gapps
git lfs install --local
git lfs pull
```

**4. Include GApps Make File**

The `gapps.mk` file will make the Android build system build the necessary packages, and include the necessary files.

In `device/manufacturer/product/device.mk` file, towards the end, declare gapps makefile:
```
$(call inherit-product, vendor/gapps/gapps.mk)
```

**5. Build Android**

There are no additional targets to declare.

**6. PlayStoreOverlay**

Prebuilt PlayStoreOverlay APK taken from OpenGApps. [Source](https://gitlab.opengapps.org/opengapps/all/-/commit/36c9eb21f93d2649cc5dcc29d308fb244859f533) with build instructions.

## License

The BiTGApps Project itself is licensed under the [GPLv3](https://www.gnu.org/licenses/gpl-3.0.txt).
