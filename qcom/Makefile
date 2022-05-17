
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


KALAMA_BASE_DTB += kalama.dtb kalama-v2.dtb
KALAMA_APQ_BASE_DTB += kalamap.dtb kalamap-v2.dtb

KALAMA_BOARDS += \
		 kalama-mtp-overlay.dtbo \
		 kalama-mtp-nfc-overlay.dtbo \
		 kalama-cdp-overlay.dtbo \
		 kalama-cdp-wsa883x-overlay.dtbo \
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

cinder-dtb-$(CONFIG_ARCH_CINDER) += cinder-rumi.dtb \
	cinder-ru-idp.dtb \
	cinder-du-idp.dtb \
	cinder-du-x100.dtb
dtb-y += $(cinder-dtb-y)

SA8155_BASE_DTB += sa8155.dtb sa8155-v2.dtb
SA8155P_BASE_DTB += sa8155p.dtb sa8155p-v2.dtb
SA8195P_BASE_DTB += sa8195p.dtb

SA8155_BOARDS += \
		 sa8155-adp-star-overlay.dtbo \
		 sa8155-adp-air-overlay.dtbo

SA8155P_BOARDS += \
		       sa8155p-adp-star-overlay.dtbo \
		       sa8155p-adp-air-overlay.dtbo

SA8195P_BOARDS += sa8195p-adp-star-overlay.dtbo \
		  sa8195p-adp-air-overlay.dtbo

gen3auto-dtb-$(CONFIG_ARCH_SA8155) += \
	$(call add-overlays, $(SA8155_BOARDS),$(SA8155_BASE_DTB))\
	$(call add-overlays, $(SA8155P_BOARDS),$(SA8155P_BASE_DTB))
gen3auto-overlays-dtb-$(CONFIG_ARCH_SA8155) += $(SA8155_BOARDS) $(SA8155P_BOARDS) $(SA8155_BASE_DTB) $(SA8155P_BASE_DTB)

gen3auto-dtb-$(CONFIG_ARCH_SA8195) += \
		$(call add-overlays, $(SA8195P_BOARDS),$(SA8195P_BASE_DTB))
gen3auto-overlays-dtb-$(CONFIG_ARCH_SA8195) += $(SA8195P_BOARDS) $(SA8195P_BASE_DTB)

dtb-y += $(gen3auto-dtb-y)

SA6155_BASE_DTB += sa6155.dtb
SA6155P_BASE_DTB += sa6155p.dtb

SA6155_BOARDS += sa6155-adp-star-overlay.dtbo \
		sa6155-adp-air-overlay.dtbo

SA6155P_BOARDS += sa6155p-adp-star-overlay.dtbo \
		sa6155p-adp-air-overlay.dtbo

sdmsteppeauto-dtb-$(CONFIG_ARCH_SA6155) += \
	$(call add-overlays, $(SA6155_BOARDS),$(SA6155_BASE_DTB))\
	$(call add-overlays, $(SA6155P_BOARDS),$(SA6155P_BASE_DTB))
sdmsteppeauto-overlays-dtb-$(CONFIG_ARCH_SA6155) += $(SA6155_BOARDS) $(SA6155P_BOARDS) $(SA6155_BASE_DTB) $(SA6155P_BASE_DTB)

dtb-y += $(sdmsteppeauto-dtb-y)

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

ifeq ($(CONFIG_ARCH_WAIPIO), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
waipio_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += waipio-vm-mtp.dtb \
        waipio-vm-cdp.dtb \
        waipio-vm-qrd.dtb \
        waipio-vm-rumi.dtb \
	waipio-oemvm-cdp.dtb \
	waipio-oemvm-mtp.dtb \
	waipio-oemvm-qrd.dtb \
	waipio-oemvm-rumi.dtb
dtb-y += $(waipio_tuivm-dtb-y)
endif
endif

always-y        := $(dtb-y)
subdir-y        := $(dts-dirs)
clean-files     := *.dtb *.dtbo
