
# add-overlay defines the target with following naming convention:
# <base>-<board>-dtbs = base.dtb board.dtbo
#
# Combined dtb target is also generated using the fdt_overlay tool.
# dtb-y += <base>-<board>.dtb

add-overlays = $(foreach o,$1,$(foreach b,$2,$(eval $(basename $b)-$(basename $o)-dtbs = $b $o) $(basename $b)-$(basename $o).dtb))

# kalama-dtb-y is list of DTBs to install when doing non-overlay build
# kalama-overlays-dtb-y is list of DTBs and DTBOs to install when doing overlay-supported build
# see DTB_TYPES from scripts/Makefile.dtbinst and install_dtbs from build.config.msm.common

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

waipio-dtb-$(CONFIG_ARCH_WAIPIO) += \
	$(call add-overlays, $(WAIPIO_BOARDS) $(NOAPQ_WAIPIO_BOARDS),$(WAIPIO_BASE_DTB))\
	$(call add-overlays, $(WAIPIO_BOARDS) $(APQ_WAIPIO_BOARDS),$(WAIPIO_APQ_BASE_DTB))
waipio-overlays-dtb-$(CONFIG_ARCH_WAIPIO) += $(WAIPIO_BOARDS) $(NOAPQ_WAIPIO_BOARDS) $(WAIPIO_BASE_DTB) $(WAIPIO_APQ_BASE_DTB)
dtb-y += $(waipio-dtb-y)


KALAMA_BASE_DTB += kalama.dtb
KALAMA_APQ_BASE_DTB += kalamap.dtb

KALAMA_BOARDS += \
		 kalama-mtp-overlay.dtbo \
		 kalama-cdp-overlay.dtbo \
		 kalama-qrd-overlay.dtbo

NOAPQ_KALAMA_BOARDS += \
		 kalama-rumi-overlay.dtbo

kalama-dtb-$(CONFIG_ARCH_KALAMA) += \
	$(call add-overlays, $(KALAMA_BOARDS) $(NOAPQ_KALAMA_BOARDS),$(KALAMA_BASE_DTB))\
	$(call add-overlays, $(KALAMA_BOARDS) $(APQ_KALAMA_BOARDS),$(KALAMA_APQ_BASE_DTB))
kalama-overlays-dtb-$(CONFIG_ARCH_KALAMA) += $(KALAMA_BOARDS) $(NOAPQ_KALAMA_BOARDS) $(KALAMA_BASE_DTB) $(KALAMA_APQ_BASE_DTB)
dtb-y += $(kalama-dtb-y)

CINDER_BASE_DTB += cinder.dtb
CINDER_BOARDS += cinder-rumi-overlay.dtbo \
	cinder-idp-overlay.dtbo

cinder-dtb-$(CONFIG_ARCH_CINDER) += \
	$(call add-overlays, $(CINDER_BOARDS), $(CINDER_BASE_DTB))
cinder-overlays-dtb-$(CONFIG_ARCH_CINDER) += $(CINDER_BASE_DTB) $(CINDER_BOARDS)
dtb-y += $(cinder-dtb-y)

endif

ifeq ($(CONFIG_ARCH_KALAMA), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
kalama_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += kalama-vm-rumi.dtb \
                 kalama-vm-mtp.dtb \
                 kalama-vm-cdp.dtb \
                 kalama-vm-qrd.dtb
dtb-y += $(kalama_tuivm-dtb-y)
endif
endif

ifeq ($(CONFIG_ARCH_WAIPIO), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
waipio_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += waipio-vm-mtp.dtb \
        waipio-vm-cdp.dtb \
        waipio-vm-qrd.dtb \
        waipio-vm-rumi.dtb
dtb-y += $(waipio_tuivm-dtb-y)
endif
endif

always-y        := $(dtb-y)
subdir-y        := $(dts-dirs)
clean-files     := *.dtb *.dtbo
