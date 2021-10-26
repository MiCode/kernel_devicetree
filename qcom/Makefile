
# add-overlay defines the target with following naming convention:
# <base>-<board>-dtbs = base.dtb board.dtbo
#
# Combined dtb target is also generated using the fdt_overlay tool.
# dtb-y += <base>-<board>.dtb

add-overlays = $(foreach o,$1,$(foreach b,$2,$(eval $(basename $b)-$(basename $o)-dtbs = $b $o) $(basename $b)-$(basename $o).dtb))


ifneq ($(CONFIG_ARCH_QTI_VM), y)

WAIPIO_BASE_DTB += waipio.dtb waipio-v2.dtb
WAIPIO_APQ_BASE_DTB += waipiop.dtb waipiop-v2.dtb

WAIPIO_BOARDS += \
		 waipio-rumi-overlay.dtbo \
		 waipio-mtp-pm8008-overlay.dtbo \
		 waipio-cdp-pm8008-overlay.dtbo \
		 waipio-qrd-pm8008-overlay.dtbo \
		 waipio-atp-pm8008-overlay.dtbo \
		 waipio-mtp-pm8010-overlay.dtbo \
		 waipio-cdp-pm8010-overlay.dtbo \
		 waipio-qrd-pm8010-overlay.dtbo \
		 waipio-qrd-pm8010-2s-overlay.dtbo \
		 waipio-atp-pm8010-overlay.dtbo

NOAPQ_WAIPIO_BOARDS += \
		       waipiop-hdk-pm8010-overlay.dtbo \
		       waipio-lemur-mtp-pm8008-overlay.dtbo \
		       waipio-lemur-mtp-pm8010-overlay.dtbo \
		       waipio-lemur-cdp-pm8008-overlay.dtbo \
		       waipio-lemur-cdp-pm8010-overlay.dtbo \
		       waipio-kiwi-mtp-pm8008-overlay.dtbo \
		       waipio-kiwi-mtp-pm8010-overlay.dtbo

dtb-$(CONFIG_ARCH_WAIPIO) += \
	$(call add-overlays, $(WAIPIO_BOARDS) $(NOAPQ_WAIPIO_BOARDS),$(WAIPIO_BASE_DTB))\
	$(call add-overlays, $(WAIPIO_BOARDS) $(APQ_WAIPIO_BOARDS),$(WAIPIO_APQ_BASE_DTB))


KALAMA_BASE_DTB += kalama.dtb
KALAMA_APQ_BASE_DTB += kalamap.dtb

KALAMA_BOARDS += \
		 kalama-mtp-overlay.dtbo \
		 kalama-cdp-overlay.dtbo \
		 kalama-qrd-overlay.dtbo

NOAPQ_KALAMA_BOARDS += \
		 kalama-rumi-overlay.dtbo

dtb-$(CONFIG_ARCH_KALAMA) += \
	$(call add-overlays, $(KALAMA_BOARDS) $(NOAPQ_KALAMA_BOARDS),$(KALAMA_BASE_DTB))\
	$(call add-overlays, $(KALAMA_BOARDS) $(APQ_KALAMA_BOARDS),$(KALAMA_APQ_BASE_DTB))

ifeq ($(CONFIG_BUILD_ARM64_DT_OVERLAY),y)
CINDER_BASE_DTB += cinder.dtb
CINDER_BOARDS += cinder-rumi-overlay.dtbo \
	cinder-idp-overlay.dtbo

dtb-$(CONFIG_ARCH_CINDER) += \
	$(call add-overlays, $(CINDER_BOARDS), $(CINDER_BASE_DTB))
else
dtb-$(CONFIG_ARCH_CINDER) += cinder-rumi.dtb \
	     cinder-idp.dtb
endif

endif

ifeq ($(CONFIG_ARCH_KALAMA), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
dtb-$(CONFIG_ARCH_QTI_VM) += kalama-vm-rumi.dtb
endif
endif

always-y        := $(dtb-y)
subdir-y        := $(dts-dirs)
clean-files     := *.dtb *.dtbo
