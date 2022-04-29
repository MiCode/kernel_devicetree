# add-overlay defines the target with following naming convention:
# <base>-<board>-dtbs = base.dtb board.dtbo
#
# Combined dtb target is also generated using the fdt_overlay tool.
# dtb-y += <base>-<board>.dtb

add-overlays = $(foreach o,$1,$(foreach b,$2,$(eval $(basename $b)-$(basename $o)-dtbs = $b $o) $(basename $b)-$(basename $o).dtb))

# pineapple-dtb-y is list of DTBs to install when doing non-overlay build
# pineapple-overlays-dtb-y is list of DTBs and DTBOs to install when doing overlay-supported build
# see DTB_TYPES from scripts/Makefile.dtbinst and install_dtbs from build.config.msm.common
#

ifneq ($(CONFIG_ARCH_QTI_VM), y)

PINEAPPLE_BASE_DTB += pineapple.dtb

PINEAPPLE_BOARDS += \
		 pineapple-mtp-overlay.dtbo \
		 pineapple-cdp-overlay.dtbo \
		 pineapple-qrd-overlay.dtbo

NOAPQ_PINEAPPLE_BOARDS += \
		 pineapple-rumi-overlay.dtbo

pineapple-dtb-$(CONFIG_ARCH_PINEAPPLE) += \
	$(call add-overlays, $(PINEAPPLE_BOARDS) $(NOAPQ_PINEAPPLE_BOARDS),$(PINEAPPLE_BASE_DTB))\
	$(call add-overlays, $(PINEAPPLE_BOARDS) $(APQ_PINEAPPLE_BOARDS),$(PINEAPPLE_APQ_BASE_DTB))
pineapple-overlays-dtb-$(CONFIG_ARCH_PINEAPPLE) += $(PINEAPPLE_BOARDS) $(NOAPQ_PINEAPPLE_BOARDS) $(PINEAPPLE_BASE_DTB) $(PINEAPPLE_APQ_BASE_DTB)
dtb-y += $(pineapple-dtb-y)

KALAMA_BASE_DTB += kalama.dtb kalama-v2.dtb
KALAMA_APQ_BASE_DTB += kalamap.dtb kalamap-v2.dtb

KALAMA_BOARDS += \
		 kalama-mtp-overlay.dtbo \
		 kalama-mtp-nfc-overlay.dtbo \
		 kalama-cdp-overlay.dtbo \
		 kalama-cdp-wsa883x-overlay.dtbo \
		 kalama-cdp-nfc-overlay.dtbo \
		 kalama-atp-overlay.dtbo \
		 kalama-rcm-overlay.dtbo \
		 kalama-qrd-overlay.dtbo

NOAPQ_KALAMA_BOARDS += \
		 kalama-rumi-overlay.dtbo

kalama-dtb-$(CONFIG_ARCH_KALAMA) += \
	$(call add-overlays, $(KALAMA_BOARDS) $(NOAPQ_KALAMA_BOARDS),$(KALAMA_BASE_DTB))\
	$(call add-overlays, $(KALAMA_BOARDS) $(APQ_KALAMA_BOARDS),$(KALAMA_APQ_BASE_DTB))
kalama-overlays-dtb-$(CONFIG_ARCH_KALAMA) += $(KALAMA_BOARDS) $(NOAPQ_KALAMA_BOARDS) $(KALAMA_BASE_DTB) $(KALAMA_APQ_BASE_DTB)
dtb-y += $(kalama-dtb-y)
endif

ifeq ($(CONFIG_ARCH_KALAMA), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
kalama_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += kalama-vm-rumi.dtb \
                 kalama-vm-mtp.dtb \
                 kalama-vm-cdp.dtb \
                 kalama-vm-qrd.dtb \
                 kalama-oemvm-cdp.dtb \
                 kalama-oemvm-mtp.dtb \
                 kalama-oemvm-qrd.dtb \
                 kalama-oemvm-rumi.dtb
dtb-y += $(kalama_tuivm-dtb-y)
endif
endif

always-y        := $(dtb-y)
subdir-y        := $(dts-dirs)
clean-files     := *.dtb *.dtbo
