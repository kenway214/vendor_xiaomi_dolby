DOLBY_PATH := vendor/xiaomi/dolby

PRODUCT_SOONG_NAMESPACES += \
    $(DOLBY_PATH)/products

PRODUCT_PACKAGES += \
    init.dolby.rc

DEVICE_MANIFEST_FILE += $(DOLBY_PATH)/products/vintf/dax_manifest.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DOLBY_PATH)/products/vintf/dax_framework_compatibility_matrix.xml

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

BOARD_VENDOR_SEPOLICY_DIRS += $(DOLBY_PATH)/products/sepolicy/vendor

$(call inherit-product, $(DOLBY_PATH)/common/common-vendor.mk)
