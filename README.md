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

And, You must change VINTF manifests inclusion method from BoardConfig.mk by changing

```:=``` to ```+=```

For now required manifest files are
```DEVICE_MANIFEST_FILE += ...```
```DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += ...```

Additionally, You can also set AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP flag to true in your BoardConfig.mk
for better Dolby DS2 support

```AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true```

For other audio configs for better support, please check these github device commits
[[1]](https://github.com/someone5678/device_xiaomi_sweet/commit/b10c3485a9ab1a0617f8c7bb3b311edeaf79624b)
[[2]](https://github.com/someone5678/device_xiaomi_sweet/commit/52e0eb33443e9cff034e9868dce5043444d4256c)
[[3]](https://github.com/someone5678/device_xiaomi_sweet/commit/8a7ca332cab6becbbfca652b5123a54d1299b0ca)
[[4]](https://github.com/someone5678/device_xiaomi_sweet/commit/61184dd16f56955a1c70ec80d2bf5c4f7da9d7d6)
[[5]](https://github.com/someone5678/device_xiaomi_sweet/commit/64d9aa79f6b95760ef6d9ae62b0bdc491ebee6c8)
[[6]](https://github.com/someone5678/device_xiaomi_sweet/commit/1f813265261b82147e7c79359e49dc3a44d605c8)
