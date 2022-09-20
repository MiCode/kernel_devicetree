
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


KALAMA_BASE_DTB += kalama.dtb kalama-v2.dtb kalama-sg.dtb
KALAMA_APQ_BASE_DTB += kalamap.dtb kalamap-v2.dtb kalamap-sg.dtb

KALAMA_BOARDS += \
		 kalama-mtp-overlay.dtbo \
		 kalama-mtp-nfc-overlay.dtbo \
		 kalama-cdp-overlay.dtbo \
		 kalama-cdp-wsa883x-overlay.dtbo \
		 kalama-cdp-nfc-overlay.dtbo \
		 kalama-atp-overlay.dtbo \
		 kalama-rcm-overlay.dtbo \
		 kalama-qrd-overlay.dtbo \
		 kalama-sg-hhg-overlay.dtbo \
		 kalamap-hdk-overlay.dtbo \
		 kalamap-sg-hhg-overlay.dtbo

NOAPQ_KALAMA_BOARDS += \
		 kalama-rumi-overlay.dtbo \
		 kalama-pinn-cdp-overlay.dtbo \
		 kalama-pinn-mtp-overlay.dtbo

kalama-dtb-$(CONFIG_ARCH_KALAMA) += \
	$(call add-overlays, $(KALAMA_BOARDS) $(NOAPQ_KALAMA_BOARDS),$(KALAMA_BASE_DTB))\
	$(call add-overlays, $(KALAMA_BOARDS) $(APQ_KALAMA_BOARDS),$(KALAMA_APQ_BASE_DTB))
kalama-overlays-dtb-$(CONFIG_ARCH_KALAMA) += $(KALAMA_BOARDS) $(NOAPQ_KALAMA_BOARDS) $(KALAMA_BASE_DTB) $(KALAMA_APQ_BASE_DTB)
dtb-y += $(kalama-dtb-y)

KHAJE_BASE_DTB += khaje.dtb khajep.dtb khajeq.dtb khajeg.dtb

KHAJE_BOARDS += \
                 khaje-idp-overlay.dtbo \
                 khaje-qrd-overlay.dtbo \
		 khaje-qrd-hvdcp3p5-overlay.dtbo \
		 khaje-qrd-nowcd9375-overlay.dtbo \
                 khaje-idp-nopmi-overlay.dtbo \
                 khaje-qrd-nopmi-overlay.dtbo \
                 khaje-idps-display-90hz-overlay.dtbo \
                 khaje-atp-overlay.dtbo \
                 khaje-idp-usbc-overlay.dtbo \
                 khaje-idp-pm8010-overlay.dtbo \
                 khajep-atp-overlay.dtbo \
                 khajep-qrd-overlay.dtb \
                 khajep-qrd-hvdcp3p5-overlay.dtbo \
                 khajep-qrd-nowcd9375-overlay.dtbo \
                 khajep-qrd-nopmi-overlay.dtbo \
                 khajep-idp-overlay.dtbo \
                 khajep-idp-nopmi-overlay.dtbo \
                 khajep-idp-usbc-overlay.dtbo \
                 khajep-idp-pm8010-overlay.dtbo \
                 khajep-idps-display-90hz-overlay.dtbo \
                 khajeq-atp-overlay.dtbo \
                 khajeq-qrd-overlay.dtbo \
                 khajeq-qrd-hvdcp3p5-overlay.dtbo \
                 khajeq-qrd-nowcd9375-overlay.dtbo \
                 khajeq-qrd-nopmi-overlay.dtbo \
                 khajeq-idp-overlay.dtbo \
                 khajeq-idp-nopmi-overlay.dtbo \
                 khajeq-idp-usbc-overlay.dtbo \
                 khajeq-idp-pm8010-overlay.dtbo \
                 khajeq-idps-display-90hz-overlay.dtbo \
                 khajeg-atp-overlay.dtbo \
		 khajeg-qrd-overlay.dtbo \
		 khajeg-qrd-hvdcp3p5-overlay.dtbo \
		 khajeg-qrd-nowcd9375-overlay.dtbo \
		 khajeg-qrd-nopmi-overlay.dtbo \
		 khajeg-idp-overlay.dtbo \
		 khajeg-idp-nopmi-overlay.dtbo \
		 khajeg-idp-usbc-overlay.dtbo \
		 khajeg-idp-pm8010-overlay.dtbo \
		 khajeg-idps-display-90hz-overlay.dtbo



bengal-dtb-$(CONFIG_ARCH_KHAJE) += \
        $(call add-overlays, $(KHAJE_BOARDS) ,$(KHAJE_BASE_DTB))
bengal-overlays-dtb-$(CONFIG_ARCH_KHAJE) += $(KHAJE_BOARDS) $(KHAJE_BASE_DTB)
dtb-y += $(bengal-dtb-y)

MONACO_BASE_DTB += monaco.dtb monacop.dtb

MONACO_BOARDS += \
        monaco-idp-v1-overlay.dtbo \
        monaco-idp-v2-overlay.dtbo \
        monaco-idp-v3-overlay.dtbo

monaco-dtb-$(CONFIG_ARCH_MONACO) += \
        $(call add-overlays, $(MONACO_BOARDS) ,$(MONACO_BASE_DTB))
monaco-overlays-dtb-$(CONFIG_ARCH_MONACO) += $(MONACO_BOARDS) $(MONACO_BASE_DTB)
dtb-y += $(monaco-dtb-y)

cinder-dtb-$(CONFIG_ARCH_CINDER) += cinder-ru-rumi.dtb \
	cinder-du-rumi.dtb \
	cinder-ru-idp.dtb \
	cinder-ru-idp-2gb.dtb \
	cinder-du-idp.dtb \
	cinder-du-x100.dtb \
	cinder-v2-ru-idp.dtb \
	cinder-v2-ru-idp-2gb.dtb \
	cinder-v2-du-idp.dtb \
	cinder-v2-du-x100.dtb
dtb-y += $(cinder-dtb-y)


kaka-dtb-$(CONFIG_ARCH_KAKA) += kaka-rumi.dtb
dtb-y += $(kaka-dtb-y)

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

LEMANS_BASE_DTB		+= lemans.dtb
LEMANS_IVI_BASE_DTB	+= lemans-ivi.dtb
LEMANS_ADAS_HIGH_BASE_DTB += lemans-adas-high.dtb

LEMANS_BOARDS		+= lemans-rumi-overlay.dtbo
LEMANS_IVI_BOARDS	+= lemans-ivi-adp-air-overlay.dtbo \
			   lemans-ivi-adp-star-overlay.dtbo
LEMANS_ADAS_HIGH_BOARDS += lemans-adas-high-adp-air-overlay.dtbo \
			   lemans-adas-high-adp-star-overlay.dtbo

gen4auto-dtb-$(CONFIG_ARCH_LEMANS) += \
	$(call add-overlays, $(LEMANS_IVI_BOARDS),$(LEMANS_IVI_BASE_DTB))\
	$(call add-overlays, $(LEMANS_ADAS_HIGH_BOARDS),$(LEMANS_ADAS_HIGH_BASE_DTB))

gen4auto-overlays-dtb-$(CONFIG_ARCH_LEMANS) +=  \
	$(LEMANS_IVI_BOARDS) $(LEMANS_ADAS_HIGH_BOARDS) $(LEMANS_IVI_BASE_DTB) $(LEMANS_ADAS_HIGH_BASE_DTB)

dtb-y += $(gen4auto-dtb-y)

sdxpinn-dtb-$(CONFIG_ARCH_SDXPINN) += sdxpinn-rumi.dtb sa525m-rumi.dtb \
		sdxpinn-idp-mbb.dtb
dtb-y += $(sdxpinn-dtb-y)

sa410m_auto-dtb-$(CONFIG_ARCH_SA410M) += \
				sa410m-rumi.dtb \
				sa410m-nand-idp.dtb \
				sa410m-emmc-idp.dtb \
				sa410m-nand-ccard.dtb \
				sa410m-emmc-ccard.dtb
dtb-y += $(sa410m_auto-dtb-y)

SA8155_LA_GVM_BASE_DTB += sa8155-vm-la.dtb

SA8155_LA_GVM_BOARDS += \
		   sa8155-vm-la-overlay.dtbo

autogvm-dtb-$(CONFIG_QTI_QUIN_GVM) += \
	$(call add-overlays, $(SA8155_LA_GVM_BOARDS),$(SA8155_LA_GVM_BASE_DTB))
autogvm-overlays-dtb-$(CONFIG_QTI_QUIN_GVM) += $(SA8155_LA_GVM_BOARDS) $(SA8155_LA_GVM_BASE_DTB)

dtb-y += $(autogvm-dtb-y)

scuba_auto-dtb-$(CONFIG_ARCH_SCUBA_AUTO) += \
				scuba_auto-idp.dtb \
				scuba_auto-qrd.dtb
dtb-y += $(scuba_auto-dtb-y)

endif

ifeq ($(CONFIG_ARCH_KALAMA), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
kalama_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += kalama-vm-rumi.dtb \
                 kalama-vm-mtp.dtb \
                 kalama-vm-cdp.dtb \
                 kalama-vm-qrd.dtb \
                 kalamap-vm-hdk.dtb \
                 kalamap-vm-hhg.dtb \
                 kalama-oemvm-cdp.dtb \
                 kalama-oemvm-mtp.dtb \
                 kalama-oemvm-qrd.dtb \
                 kalama-oemvm-rumi.dtb \
                 kalamap-oemvm-hdk.dtb \
                 kalamap-oemvm-hhg.dtb
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

sdxbaagha-dtb-$(CONFIG_ARCH_SDXBAAGHA) += sdxbaagha-rumi.dtb \
	sdxbaagha-mtp.dtb \
	sdxbaagha-cdp.dtb
dtb-y += $(sdxbaagha-dtb-y)

always-y        := $(dtb-y)
subdir-y        := $(dts-dirs)
clean-files     := *.dtb *.dtbo
