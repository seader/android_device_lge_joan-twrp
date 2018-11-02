# android_device_lge_joan
Tree for building decryption enabled TWRP for LGE V30 (Joan)

Also there's a local_manifest, maybe it helps for an easy start.

Here are the links to keymaster 3 & 4 and enable fde commits:
https://gerrit.omnirom.org/c/android_bootable_recovery/+/32610
https://gerrit.omnirom.org/c/android_bootable_recovery/+/32645

There's a bootable_recovery-twrp repo in my profile, which has all needed commits for decrypting V30 and maybe other QCOM devices. If you don't want IntSD incl. in databackups, just revert the relevant commits.

## TWRP device tree for Joan (LG V30)
https://github.com/seader/android_device_lge_joan-twrp/tree/encrypt-8.1

## Kernel Sources
https://github.com/SGCMarkus/android_kernel_lge_msm8998/tree/twrp-7.1

## How to compile

```sh
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch omni_joan-eng
make -j# recoveryimage (where # = number of possible threads of your cpu + 1)
```

## Device specifications

| Device       | LG V30                                          |
| -----------: | :---------------------------------------------- |
| SoC          | Qualcomm MSM8998 Snapdragon 835                 |
| CPU          | Quad-core 2.45GHz Kryo & quad-core 1.9GHz Kryo  |
| GPU          | 710MHz Adreno 540                               |
| Memory       | 4GB RAM (LPDDR4X)                               |
| Shipped Android version | 7.1.1                                |
| Storage      | 64GB / 128GB (UFS 2.1 Flash) + microSD Card     |
| Battery      | Non-removable Li-Po 3300 mAh                    |
| Dimensions   | 151.7 x 75.4 x 7.3 mm                           |
| Display      | 2880 x 1440 (18:9), 6 inch POLED, HDR10         |
| Dust and Water resistance | IP68, MIL-STD-810G                 |
| Rear camera 1 | 16MP (hi553), 1-micron pixels, f/1.6, 3-axis OIS, PDAF, LED flash, 4K 30 fps, 1080p 60 fps, 720p 240 fps video |
| Rear camera 2 | 13MP (IMX 351), 1-micron pixels, f/1.9, no AF       |
| Front camera | 5MP (s5k3m3), 1.12-micron pixels, f/2.2 1080p 30 fps video |

## Device picture

![LG V30](http://www.lg.com/us/mobile-phones/v30/assets/images/SpecsPage/IntroModule/phone-front.png "LG V30 in Silver")


