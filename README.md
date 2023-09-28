# Vendor_Xiaomi_Dolby
Device Specific Dolby Blobs for Redmi Note 10 Pro / Pro Max

## Note for this repo
This repo is specified for Redmi Note 10 Pro / Pro Max

Including these blobs on other platforms is highly discouraged

Because it can causes bootloop, or several other problems

Basically, this is combining OnePlus Dolby blobs and Device specific Dolby blobs

So, if you want to try OnePlus Dolby for your own device, check this repo's proprietary-files.txt as reference:<br>
https://gitlab.com/someone5678/vendor_xiaomi_dolby/-/blob/thirteen/proprietary-files.txt

## Note for including Dolby Atmos
First, Remove all duplicated blobs from your device tree

Check this repo's proprietary-files.txt as reference:<br>
https://gitlab.com/someone5678/vendor_xiaomi_dolby/-/blob/thirteen/proprietary-files.txt

Then, You need to include the dolby.mk's path to your device.mk

```$(call inherit-product-if-exists, vendor/xiaomi/dolby/products/dolby.mk)```

And, You must change VINTF manifests inclusion method from BoardConfig.mk by changing

```:=``` to ```+=```

For now required manifest files are
```DEVICE_MANIFEST_FILE += ...```
```DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += ...```

Additionally, You can also set AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP flag to true in your BoardConfig.mk
for better Dolby DS2 support

```AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true```

For other audio configs for better support, please refer to `example` branch of this repo.<br>
https://gitlab.com/someone5678/vendor_xiaomi_dolby/-/tree/example?ref_type=heads
