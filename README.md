# Vendor_Dolby
Device Specific Dolby Blobs for Redmi Note 10 Pro / Pro Max

## Note for this repo
This repo is specified for Redmi Note 10 Pro / Pro Max

Including these blobs on other platforms is highly discouraged

Because it can causes bootloop, or several other problems

Basically, this is combining OnePlus Dolby blobs and Device specific Dolby blobs

So, if you want to try OnePlus Dolby for your own device, check this repo's proprietary-files.txt as reference:
https://gitlab.com/someone5678/vendor_dolby/-/blob/twelve/proprietary-files.txt

## Note for including Dolby Atmos
First, Remove all duplicated blobs from your device tree

Check this repo's proprietary-files.txt as reference:
https://gitlab.com/someone5678/vendor_dolby/-/blob/twelve/proprietary-files.txt

Then, You need to include the config.mk's path to your device.mk

```$(call inherit-product-if-exists, vendor/dolby/config.mk)```

And, You must change VINTF manifests inclusion method from device.mk by changing

```:=``` to ```+=```

For now required manifest files are
```DEVICE_MANIFEST_FILE += ...```
```DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += ...```

Additionally, You can also set AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP flag to true in your BoardConfig.mk
for better Dolby DS2 support

```AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true```

For other audio configs for better support, please check these github device commits
[[1]](https://github.com/someone5678/device_xiaomi_sweet/commit/05ac47a541976ffc06e9996b28cec62f58b82aa2)
[[2]](https://github.com/someone5678/device_xiaomi_sweet/commit/fdfae8f469bfdc6bb1135eb9e31e7f3311de5e96)
[[3]](https://github.com/someone5678/device_xiaomi_sweet/commit/c247719b9407b8f6ee52a0ffea5e4a53a97b4447)
[[4]](https://github.com/someone5678/device_xiaomi_sweet/commit/d878aa79a24f19076e4db13ca830768874d5c92b)
[[5]](https://github.com/someone5678/device_xiaomi_sweet/commit/49715a8c4a8d7c78d6c5d810f2a7a4880b90cae2)
