PRODUCT_SOONG_NAMESPACES += \
    vendor/dolby/products

PRODUCT_PACKAGES += \
    init.dolby.rc

DEVICE_MANIFEST_FILE += vendor/dolby/products/vintf/dax_manifest.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += vendor/dolby/products/vintf/dax_framework_compatibility_matrix.xml

PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.product.device.db=OP_DEVICE \
    ro.vendor.product.manufacturer.db=OP_PHONE \
    vendor.product.device=OP_PHONE \
    vendor.product.manufacturer=OPD \
    vendor.audio.dolby.ds2.enabled=true \
    vendor.audio.dolby.ds2.hardbypass=false \
    persist.vendor.audio_fx.current=dolby \
    ro.audio.monitorRotation=true \
    ro.vendor.dolby.dax.version=DAX3_3.6.0.12_r1

PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.df.effect.conflict=1 \
    ro.vendor.audio.dolby.dax.support=true \
    persist.vendor.audio.delta.refresh=true \
    ro.vendor.audio.dolby.surround.enable=true

BOARD_VENDOR_SEPOLICY_DIRS += vendor/dolby/products/sepolicy/vendor

$(call inherit-product, vendor/dolby/common/common-vendor.mk)
