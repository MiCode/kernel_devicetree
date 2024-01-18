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

PINEAPPLE_BASE_DTB += pineapple.dtb pineapple-v2.dtb
PINEAPPLE_APQ_BASE_DTB += pineapplep.dtb pineapplep-v2.dtb

PINEAPPLE_BOARDS += \
		 pineapple-mtp-overlay.dtbo \
		 pineapple-mtp-nfc-overlay.dtbo \
		 pineapple-cdp-overlay.dtbo \
		 pineapple-cdp-nfc-overlay.dtbo \
		 pineapple-qrd-overlay.dtbo \
		 pineapple-qrd-sku2-overlay.dtbo \
		 pineapple-rcm-overlay.dtbo \
		 pineapple-atp-overlay.dtbo \
		 pineapplep-hdk-overlay.dtbo \
		 pineapple-dpm-overlay.dtbo \
		 pineapplep-aim500-overlay.dtbo \
		 pineapplep-aim500-v2-overlay.dtbo

NOAPQ_PINEAPPLE_BOARDS += \
		 pineapple-rumi-overlay.dtbo

pineapple-dtb-$(CONFIG_ARCH_PINEAPPLE) += \
	$(call add-overlays, $(PINEAPPLE_BOARDS) $(NOAPQ_PINEAPPLE_BOARDS),$(PINEAPPLE_BASE_DTB))\
	$(call add-overlays, $(PINEAPPLE_BOARDS) $(APQ_PINEAPPLE_BOARDS),$(PINEAPPLE_APQ_BASE_DTB))
pineapple-overlays-dtb-$(CONFIG_ARCH_PINEAPPLE) += $(PINEAPPLE_BOARDS) $(NOAPQ_PINEAPPLE_BOARDS) $(PINEAPPLE_BASE_DTB) $(PINEAPPLE_APQ_BASE_DTB)

CLIFFS_BASE_DTB += cliffs.dtb cliffs7.dtb
CLIFFS_APQ_BASE_DTB += cliffsp.dtb cliffs7p.dtb

CLIFFS_BOARDS += \
		 cliffs-atp-overlay.dtbo \
		 cliffs-cdp-overlay.dtbo \
		 cliffs-mtp-overlay.dtbo \
		 cliffs-qrd-overlay.dtbo \
		 cliffs-rcm-overlay.dtbo \
		 cliffs-mtp-kiwi-2s-nfc-wcd9395-overlay.dtbo \
		 cliffs-mtp-pm8550b-overlay.dtbo \
		 cliffs-mtp-kiwi-2s-nfc-wcd9395-pm8550b-overlay.dtbo \
		 cliffs-rcm-qhdp-overlay.dtbo \
		 cliffs-rcm-fhdp-kiwi-overlay.dtbo \
		 cliffs-rcm-qhdp-kiwi-overlay.dtbo

NOAPQ_CLIFFS_BOARDS += \
		 cliffs-rumi-overlay.dtbo

pineapple-dtb-$(CONFIG_ARCH_CLIFFS) += \
	$(call add-overlays, $(CLIFFS_BOARDS) $(NOAPQ_CLIFFS_BOARDS),$(CLIFFS_BASE_DTB))\
	$(call add-overlays, $(CLIFFS_BOARDS),$(CLIFFS_APQ_BASE_DTB))
pineapple-overlays-dtb-$(CONFIG_ARCH_CLIFFS) += $(CLIFFS_BOARDS) $(NOAPQ_CLIFFS_BOARDS) $(CLIFFS_BASE_DTB) $(CLIFFS_APQ_BASE_DTB)

VOLCANO_BASE_DTB += volcano.dtb

NOAPQ_VOLCANO_BOARDS += \
		volcano-rumi-overlay.dtbo

pineapple-dtb-$(CONFIG_ARCH_VOLCANO) += \
	$(call add-overlays, $(NOAPQ_VOLCANO_BOARDS),$(VOLCANO_BASE_DTB))
pineapple-overlays-dtb-$(CONFIG_ARCH_VOLCANO) += $(NOAPQ_VOLCANO_BOARDS) $(VOLCANO_BASE_DTB)

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

NIOBE_BASE_DTB += niobe.dtb

NOAPQ_NIOBE_BOARDS += \
		 niobe-rumi-overlay.dtbo

niobe-dtb-$(CONFIG_ARCH_NIOBE) += \
	$(call add-overlays, $(NOAPQ_NIOBE_BOARDS),$(NIOBE_BASE_DTB))\
	$(call add-overlays, $(APQ_NIOBE_BOARDS),$(NIOBE_APQ_BASE_DTB))
niobe-overlays-dtb-$(CONFIG_ARCH_NIOBE) += $(NOAPQ_NIOBE_BOARDS) $(NIOBE_BASE_DTB) $(NIOBE_APQ_BASE_DTB)
dtb-y += $(niobe-dtb-y)

BLAIR_BASE_DTB += blair.dtb
BLAIR_APQ_BASE_DTB += blairp.dtb

BLAIR_BOARDS += \
		 blair-mtp-overlay.dtbo \
		 blair-qrd-overlay.dtbo \
		 blair-cdp-overlay.dtbo \
		 blair-atp-overlay.dtbo \
		 blair-mtp-usbc-overlay.dtbo \
		 blair-mtp-nopmi-overlay.dtbo \
		 blair-qrd-nopmi-overlay.dtbo

APQ_BLAIR_BOARDS += \
		 blairp-mtp-overlay.dtbo \
		 blairp-qrd-overlay.dtbo \
		 blairp-cdp-overlay.dtbo \
		 blairp-atp-overlay.dtbo \
		 blairp-mtp-usbc-overlay.dtbo \
		 blairp-mtp-nopmi-overlay.dtbo \
		 blairp-qrd-nopmi-overlay.dtbo

blair-dtb-$(CONFIG_ARCH_BLAIR) += \
	$(call add-overlays, $(BLAIR_BOARDS),$(BLAIR_BASE_DTB))\
	$(call add-overlays, $(APQ_BLAIR_BOARDS),$(BLAIR_APQ_BASE_DTB))
blair-overlays-dtb-$(CONFIG_ARCH_BLAIR) += $(BLAIR_BOARDS) $(APQ_BLAIR_BOARDS) $(BLAIR_BASE_DTB) $(BLAIR_APQ_BASE_DTB)
dtb-y += $(blair-dtb-y)

HOLI_BASE_DTB += holi.dtb

HOLI_BOARDS += \
		 holi-mtp-overlay.dtbo \
		 holi-qrd-overlay.dtbo \
		 holi-cdp-overlay.dtbo \
		 holi-cdp-lcd-overlay.dtbo \
		 holi-atp-overlay.dtbo \
		 holi-mtp-usbc-overlay.dtbo \
		 holi-mtp-pm6125-overlay.dtbo \
		 holi-cdp-pm6125-overlay.dtbo \
		 holi-mtp-usbc-pm6125-overlay.dtbo \
		 holi-mtp-pm6125-nopmi-overlay.dtbo \
		 holi-qrd-pm6125-overlay.dtbo \
		 holi-cdp-lcd-pm6125-overlay.dtbo \
		 holi-qrd-pm6125-nopmi-overlay.dtbo

holi-dtb-$(CONFIG_ARCH_HOLI) += \
	$(call add-overlays, $(HOLI_BOARDS),$(HOLI_BASE_DTB))
holi-overlays-dtb-$(CONFIG_ARCH_HOLI) += $(HOLI_BOARDS) $(HOLI_BASE_DTB)
dtb-y += $(holi-dtb-y)

# pitti-dtb
PITTI_BASE_DTB += pitti.dtb pitti-3gb.dtb pitti-4gb.dtb

PITTI_BOARDS += \
		 pitti-atp-overlay.dtbo \
		 pitti-idp-overlay.dtbo \
		 pitti-qrd-overlay.dtbo \
		 pitti-idp-pmiv0104-overlay.dtbo \
		 pitti-idp-apache-overlay.dtbo \
		 pitti-idp-amoled-overlay.dtbo \
		 pitti-idp-3gb-overlay.dtbo \
		 pitti-qrd-3gb-overlay.dtbo \
		 pitti-atp-4gb-overlay.dtbo \
		 pitti-idp-4gb-overlay.dtbo \
		 pitti-idp-pmiv0104-3gb-overlay.dtbo \
		 pitti-idp-pmiv0104-4gb-overlay.dtbo \
		 pitti-idp-pmiv0104-apache-overlay.dtbo \
		 pitti-qrd-4gb-overlay.dtbo

NOAPQ_PITTI_BOARDS += \
		 pitti-rumi-overlay.dtbo

pitti-dtb-$(CONFIG_ARCH_PITTI) += \
	$(call add-overlays, $(PITTI_BOARDS) $(NOAPQ_PITTI_BOARDS),$(PITTI_BASE_DTB))
pitti-overlays-dtb-$(CONFIG_ARCH_PITTI) += $(PITTI_BOARDS) $(NOAPQ_PITTI_BOARDS) $(PITTI_BASE_DTB)
dtb-y += $(pitti-dtb-y)

endif

MONACO_AUTO_BASE_DTB	+= monaco_auto.dtb
MONACO_AUTO_IVI_BASE_DTB	+= monaco_auto-ivi.dtb
MONACO_AUTO_ADAS_BASE_DTB	+= monaco_auto-adas.dtb

MONACO_AUTO_BOARDS	+= monaco_auto-rumi-overlay.dtbo
MONACO_AUTO_IVI_BOARDS	+= monaco_auto-ivi-adp-star-overlay.dtbo \
			   monaco_auto-ivi-adp-air-overlay.dtbo
MONACO_AUTO_ADAS_BOARDS	+= monaco_auto-adas-adp-star-overlay.dtbo \
			   monaco_auto-adas-adp-air-overlay.dtbo

gen4auto-dtb-$(CONFIG_ARCH_MONACO_AUTO) += \
	$(call add-overlays, $(MONACO_AUTO_BOARDS),$(MONACO_AUTO_BASE_DTB))\
	$(call add-overlays, $(MONACO_AUTO_IVI_BOARDS),$(MONACO_AUTO_IVI_BASE_DTB))\
	$(call add-overlays, $(MONACO_AUTO_ADAS_BOARDS),$(MONACO_AUTO_ADAS_BASE_DTB))

gen4auto-overlays-dtb-$(CONFIG_ARCH_MONACO_AUTO) +=  \
	$(MONACO_AUTO_BOARDS) $(MONACO_AUTO_BASE_DTB)\
	$(MONACO_AUTO_IVI_BOARDS),$(MONACO_AUTO_IVI_BASE_DTB)\
	$(MONACO_AUTO_ADAS_BOARDS),$(MONACO_AUTO_ADAS_BASE_DTB)

dtb-y += $(gen4auto-dtb-y)

ifeq ($(CONFIG_ARCH_PINEAPPLE), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
pineapple_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += pineapple-vm-rumi.dtb \
				pineapple-vm-mtp.dtb \
				pineapple-vm-cdp.dtb \
				pineapple-vm-qrd.dtb \
				pineapple-vm-rcm.dtb \
				pineapplep-vm-hdk.dtb \
				pineapple-oemvm-cdp.dtb \
				pineapple-oemvm-mtp.dtb \
				pineapple-oemvm-qrd.dtb \
				pineapple-oemvm-rumi.dtb \
				pineapple-oemvm-rcm.dtb \
				pineapplep-oemvm-hdk.dtb
dtb-y += $(pineapple_tuivm-dtb-y)

endif
endif

ifeq ($(CONFIG_ARCH_CLIFFS), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
pineapple_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += cliffs-vm-rumi.dtb \
		cliffs-vm-atp.dtb \
		cliffs-vm-cdp.dtb \
		cliffs-vm-mtp.dtb \
		cliffs-vm-qrd.dtb \
		cliffs-vm-rcm.dtb \
		cliffs-vm-rcm-fhdp-kiwi.dtb \
		cliffs-vm-rcm-qhdp.dtb \
		cliffs-vm-rcm-qhdp-kiwi.dtb \
		cliffs-vm-mtp-kiwi-2s-nfc-wcd9395.dtb \
		cliffs-oemvm-atp.dtb \
		cliffs-oemvm-cdp.dtb \
		cliffs-oemvm-mtp.dtb \
		cliffs-oemvm-qrd.dtb \
		cliffs-oemvm-rcm.dtb \
		cliffs-oemvm-rumi.dtb \
		cliffs-oemvm-rcm-fhdp-kiwi.dtb \
		cliffs-oemvm-rcm-qhdp.dtb \
		cliffs-oemvm-rcm-qhdp-kiwi.dtb \
		cliffs-oemvm-mtp-kiwi-2s-nfc-wcd9395.dtb

dtb-y += $(pineapple_tuivm-dtb-y)
endif
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

LEMANS_LA_GVM_BASE_DTB += lemans-vm-la.dtb

LEMANS_LA_GVM_BOARDS += \
		lemans-vm-la-overlay.dtbo

LEMANS_LV_GVM_BASE_DTB += lemans-vm-lv.dtb

LEMANS_LV_GVM_BOARDS += \
		lemans-vm-lv-overlay.dtbo

LEMANS_MULTI_GVM_BASE_DTB += \
		lemans-vm-la-mt.dtb \
		lemans-vm-lv-mt.dtb

LEMANS_MULTI_GVM_BOARDS += \
		lemans-vm-la-mt-overlay.dtbo \
		lemans-vm-lv-mt-overlay.dtbo

LEMANS_MULTI_LA_GVM_BASE_DTB += \
		lemans-vm-la1-mt.dtb

LEMANS_MULTI_LA_GVM_BOARDS += \
		lemans-vm-la1-mt-overlay.dtbo

DIREWOLF_LA_GVM_BASE_DTB += direwolf-vm-la.dtb

DIREWOLF_LA_GVM_BOARDS += \
                   direwolf-vm-la-overlay.dtbo

DIREWOLF_LV_GVM_BASE_DTB += direwolf-vm-lv.dtb

DIREWOLF_LV_GVM_BOARDS += \
                   direwolf-vm-lv-overlay.dtbo

SA8155_LA_GVM_BASE_DTB += sa8155-vm-la.dtb

SA8155_LA_GVM_BOARDS += \
		   sa8155-vm-la-overlay.dtbo

SA6155P_LA_GVM_BASE_DTB += sa6155p-vm-la.dtb

SA6155P_LA_GVM_BOARDS += \
		sa6155p-vm-la-overlay.dtbo

SA8195_LA_GVM_BASE_DTB += sa8195-vm-la.dtb

SA8195_LA_GVM_BOARDS += \
                   sa8195-vm-la-overlay.dtbo

MONACO_LA_GVM_BASE_DTB += monaco-vm-la.dtb

MONACO_LA_GVM_BOARDS += \
		monaco-vm-la-overlay.dtbo

MONACO_LV_GVM_BASE_DTB += monaco-vm-lv.dtb

MONACO_LV_GVM_BOARDS += \
                   monaco-vm-lv-overlay.dtbo

autogvm-dtb-$(CONFIG_QTI_QUIN_GVM) += \
	$(call add-overlays, $(SA8155_LA_GVM_BOARDS),$(SA8155_LA_GVM_BASE_DTB)) \
	$(call add-overlays, $(SA6155P_LA_GVM_BOARDS),$(SA6155P_LA_GVM_BASE_DTB)) \
	$(call add-overlays, $(SA8195_LA_GVM_BOARDS),$(SA8195_LA_GVM_BASE_DTB)) \
	$(call add-overlays, $(DIREWOLF_LA_GVM_BOARDS),$(DIREWOLF_LA_GVM_BASE_DTB)) \
	$(call add-overlays, $(DIREWOLF_LV_GVM_BOARDS),$(DIREWOLF_LV_GVM_BASE_DTB)) \
	$(call add-overlays, $(LEMANS_LV_GVM_BOARDS),$(LEMANS_LV_GVM_BASE_DTB)) \
	$(call add-overlays, $(LEMANS_LA_GVM_BOARDS),$(LEMANS_LA_GVM_BASE_DTB)) \
	$(call add-overlays, $(LEMANS_MULTI_GVM_BOARDS),$(LEMANS_MULTI_GVM_BASE_DTB)) \
	$(call add-overlays, $(LEMANS_MULTI_LA_GVM_BOARDS),$(LEMANS_MULTI_LA_GVM_BASE_DTB)) \
	$(call add-overlays, $(MONACO_LV_GVM_BOARDS),$(MONACO_LV_GVM_BASE_DTB)) \
	$(call add-overlays, $(MONACO_LA_GVM_BOARDS),$(MONACO_LA_GVM_BASE_DTB))

autogvm-overlays-dtb-$(CONFIG_QTI_QUIN_GVM) += \
	$(SA8155_LA_GVM_BOARDS) $(SA8155_LA_GVM_BASE_DTB) \
	$(SA6155P_LA_GVM_BOARDS) $(SA6155P_LA_GVM_BASE_DTB) \
	$(SA8195_LA_GVM_BOARDS) $(SA8195_LA_GVM_BASE_DTB) \
	$(DIREWOLF_LA_GVM_BOARDS) $(DIREWOLF_LA_GVM_BASE_DTB) \
	$(DIREWOLF_LV_GVM_BOARDS) $(DIREWOLF_LV_GVM_BASE_DTB) \
	$(LEMANS_LV_GVM_BOARDS) $(LEMANS_LV_GVM_BASE_DTB) \
	$(LEMANS_LA_GVM_BOARDS) $(LEMANS_LA_GVM_BASE_DTB) \
	$(LEMANS_MULTI_GVM_BOARDS) $(LEMANS_MULTI_GVM_BASE_DTB) \
	$(LEMANS_MULTI_LA_GVM_BOARDS) $(LEMANS_MULTI_LA_GVM_BASE_DTB) \
	$(MONACO_LV_GVM_BOARDS) $(MONACO_LV_GVM_BASE_DTB) \
	$(MONACO_LA_GVM_BOARDS) $(MONACO_LA_GVM_BASE_DTB)

dtb-y += $(autogvm-dtb-y)

ifeq ($(CONFIG_ARCH_LEMANS), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)

LEMANS_GH_LA_GVM_QAM_BASE_DTB += lemans-gunyah-vm-qam.dtb
LEMANS_GH_LA_GVM_QAM_BOARDS += lemans-gunyah-vm-qam-overlay.dtbo

LEMANS_GH_LA_GVM_VP_BASE_DTB += lemans-gunyah-vm-vp.dtb
LEMANS_GH_LA_GVM_VP_BOARDS += lemans-gunyah-vm-vp-overlay.dtbo

LEMANS_GH_LA_GVM_COB_BASE_DTB += lemans-gunyah-vm-cob.dtb
LEMANS_GH_LA_GVM_COB_BOARDS += lemans-gunyah-vm-cob-overlay.dtbo

autoghgvm-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(call add-overlays, $(LEMANS_GH_LA_GVM_QAM_BOARDS),$(LEMANS_GH_LA_GVM_QAM_BASE_DTB)) \
	$(call add-overlays, $(LEMANS_GH_LA_GVM_VP_BOARDS),$(LEMANS_GH_LA_GVM_VP_BASE_DTB)) \
	$(call add-overlays, $(LEMANS_GH_LA_GVM_COB_BOARDS),$(LEMANS_GH_LA_GVM_COB_BASE_DTB))

autoghgvm-overlays-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(LEMANS_GH_LA_GVM_QAM_BOARDS) $(LEMANS_GH_LA_GVM_QAM_BASE_DTB) \
	$(LEMANS_GH_LA_GVM_VP_BOARDS) $(LEMANS_GH_LA_GVM_VP_BASE_DTB) \
	$(LEMANS_GH_LA_GVM_COB_BOARDS) $(LEMANS_GH_LA_GVM_COB_BASE_DTB)

dtb-y += $(autoghgvm-dtb-y)
endif
endif


SA8155_BASE_DTB += sa8155.dtb sa8155-v2.dtb
SA8155P_BASE_DTB += sa8155p.dtb sa8155p-v2.dtb
SA8195P_BASE_DTB += sa8195p.dtb

SA8155_BOARDS += \
		 sa8155-adp-star-overlay.dtbo \
		 sa8155-adp-air-overlay.dtbo

SA8155P_BOARDS += \
		       sa8155p-adp-star-overlay.dtbo \
		       sa8155p-adp-air-overlay.dtbo

SA8195P_BOARDS += \
		sa8195p-adp-star-overlay.dtbo \
		sa8195p-adp-air-overlay.dtbo

gen3auto-dtb-$(CONFIG_ARCH_SA8155) += \
	$(call add-overlays, $(SA8155_BOARDS),$(SA8155_BASE_DTB)) \
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

always-y        := $(dtb-y)
subdir-y        := $(dts-dirs)
clean-files     := *.dtb *.dtbo
