# SPDX-License-Identifier: GPL-2.0

# add-overlay defines the target with following naming convention:
# <base>-<board>-dtbs = base.dtb board.dtbo
#
# Combined dtb target is also generated using the fdt_overlay tool.
# dtb-y += <base>-<board>.dtb

add-overlays = $(foreach o,$1,$(foreach b,$2,$(eval $(basename $b)-$(basename $o)-dtbs = $b $o) $(basename $b)-$(basename $o).dtb))

# canoe-dtb-y is list of DTBs to install when doing non-overlay build
# canoe-overlays-dtb-y is list of DTBs and DTBOs to install when doing overlay-supported build
# see DTB_TYPES from scripts/Makefile.dtbinst and install_dtbs from build.config.msm.common
#

ifneq ($(CONFIG_ARCH_QTI_VM), y)

CANOE_BASE_DTB += canoe.dtb canoe-v2.dtb canoe-tp.dtb canoe-tp-v2.dtb alor-interposer.dtb alor-interposer-v2.dtb whale.dtb
CANOE_APQ_BASE_DTB += canoep.dtb canoep-v2.dtb canoep-tp.dtb canoep-tp-v2.dtb whalep.dtb canoep-sg.dtb canoep-sg-v2.dtb

CANOE_BOARDS += \
		canoe-mtp-3.5mm-overlay.dtbo \
		canoe-mtp-kiwi-overlay.dtbo \
		canoe-mtp-mango-overlay.dtbo \
		canoe-mtp-overlay.dtbo \
		canoe-mtp-pdm-mic-overlay.dtbo \
		canoe-mtp-pictor-overlay.dtbo \
		canoe-mtp-qmp1000-overlay.dtbo \
		canoe-mtp-st54l-pandeiro-overlay.dtbo \
		canoe-cdp-kiwi-no-l3k-overlay.dtbo \
		canoe-cdp-kiwi-overlay.dtbo \
		canoe-cdp-overlay.dtbo \
		canoe-cdp-st54l-pandeiro-i2s-overlay.dtbo \
		canoe-cdp-st54l-pandeiro-no-l3k-overlay.dtbo \
		canoe-cdp-st54l-pandeiro-overlay.dtbo \
		canoe-qrd-st54l-kundu-overlay.dtbo \
		canoe-qrd-st54l-pandeiro-overlay.dtbo \
		canoe-rcm-kiwi-overlay.dtbo \
		canoe-rcm-overlay.dtbo \
		canoe-rcm-st54l-pandeiro-overlay.dtbo \
		canoe-atp-overlay.dtbo \
		alor-interposer-qrd-st54l-pandeiro-overlay.dtbo \
		pandora-sm8850-overlay.dtbo \
		popsicle-sm8850-overlay.dtbo \
		myron-sm8850-overlay.dtbo \
		athens-sm8850-overlay.dtbo \
		byron-sm8850-overlay.dtbo \
		pudding-sm8850-overlay.dtbo \
		pecan-sm8850-overlay.dtbo \
		canoep-hdk-no-l3k-overlay.dtbo \
		canoep-hdk-overlay.dtbo \
		alor-interposer-mtp-overlay.dtbo \
		alor-interposer-rcm-overlay.dtbo \
		pixiu-sm8850-overlay.dtbo \
		songyuan-sm8850-overlay.dtbo

NOAPQ_CANOE_BOARDS += \
		canoe-rumi-overlay.dtbo

canoe-dtb-$(CONFIG_ARCH_CANOE) += \
	$(call add-overlays, $(CANOE_BOARDS) $(NOAPQ_CANOE_BOARDS),$(CANOE_BASE_DTB))\
	$(call add-overlays, $(CANOE_BOARDS) $(APQ_CANOE_BOARDS),$(CANOE_APQ_BASE_DTB))
canoe-overlays-dtb-$(CONFIG_ARCH_CANOE) += $(CANOE_BOARDS) $(NOAPQ_CANOE_BOARDS) $(CANOE_BASE_DTB) $(CANOE_APQ_BASE_DTB)

ALOR_BASE_DTB += alor.dtb
ALOR_APQ_BASE_DTB += alorp.dtb alorp-iot.dtb

ALOR_BOARDS += \
	        alor-atp-overlay.dtbo \
		alor-cdp-overlay.dtbo \
		alor-cdp-peach-overlay.dtbo \
		alor-mtp-overlay.dtbo \
		alor-mtp-iot-overlay.dtbo \
		alor-mtp-pmih010x-smb1398-overlay.dtbo \
		alor-mtp-pm7550ba-smb1398-overlay.dtbo \
		alor-rcm-overlay.dtbo \
		alor-rcm-peach-overlay.dtbo \
		alor-qrd-overlay.dtbo \
		alor-qrd-peach-overlay.dtbo \
		alor-qrd-ufcs-overlay.dtbo \
		alor-xr-mtp-overlay.dtbo \
		shuntian-sm8845-overlay.dtbo


NOAPQ_ALOR_BOARDS += \
		alor-rumi-overlay.dtbo

canoe-dtb-$(CONFIG_ARCH_ALOR) += \
	$(call add-overlays, $(ALOR_BOARDS) $(NOAPQ_ALOR_BOARDS),$(ALOR_BASE_DTB))\
	$(call add-overlays, $(ALOR_BOARDS),$(ALOR_APQ_BASE_DTB),$(ALOR_XR_BASE_DTB))
canoe-overlays-dtb-$(CONFIG_ARCH_ALOR) += $(ALOR_BOARDS) $(NOAPQ_ALOR_BOARDS) $(ALOR_BASE_DTB) $(ALOR_APQ_BASE_DTB) $(ALOR_XR_BASE_DTB)


CHORA_BASE_DTB += chora.dtb
CHORA_APQ_BASE_DTB += chorap.dtb

CHORA_BOARDS += \
	        chora-atp-overlay.dtbo \
		chora-atp-st54l-overlay.dtbo \
		chora-cdp-overlay.dtbo \
		chora-cdp-st54l-overlay.dtbo \
		chora-cdp-wcn7750-overlay.dtbo \
		chora-mtp-bonfish-overlay.dtbo \
		chora-mtp-lcd-overlay.dtbo \
		chora-mtp-overlay.dtbo \
		chora-mtp-st54l-overlay.dtbo \
		chora-mtp-wcn7750-bonfish-overlay.dtbo \
		chora-mtp-wcn7750-overlay.dtbo \
		chora-qrd-bonfish-overlay.dtbo \
		chora-qrd-overlay.dtbo \
		chora-qrd-wcn7750-bonfish-overlay.dtbo \
		chora-qrd-wcn7750-overlay.dtbo \
		chora-rcm-overlay.dtbo \
		chora-rcm-st54l-overlay.dtbo \
		chora-rcm-wcn7750-overlay.dtbo

NOAPQ_CHORA_BOARDS += \
		chora-rumi-overlay.dtbo

canoe-dtb-$(CONFIG_ARCH_CHORA) += \
	$(call add-overlays, $(CHORA_BOARDS) $(NOAPQ_CHORA_BOARDS),$(CHORA_BASE_DTB)) \
	$(call add-overlays, $(CHORA_BOARDS),$(CHORA_APQ_BASE_DTB))
canoe-overlays-dtb-$(CONFIG_ARCH_CHORA) += $(CHORA_BOARDS) $(NOAPQ_CHORA_BOARDS) $(CHORA_BASE_DTB) $(CHORA_APQ_BASE_DTB)

RAVELIN_BASE_DTB += ravelin.dtb ravelinp.dtb ravelin-sg.dtb ravelinp-sg.dtb
RAVELIN_4GB_BASE_DTB += ravelin-4gb.dtb ravelinp-4gb.dtb ravelin-sg.dtb ravelinp-sg.dtb

RAVELIN_BOARDS += \
		ravelin-atp-overlay.dtbo \
		ravelin-idp-overlay.dtbo \
		ravelin-idp-wcn3950-amoled-rcm-overlay.dtbo \
		ravelin-qrd-overlay.dtbo

RAVELIN_4GB_BOARDS += ravelin-idp-wcn3988-4gb-overlay.dtbo \
		      ravelin-qrd-4gb-overlay.dtbo

canoe-dtb-$(CONFIG_ARCH_RAVELIN) += \
	$(call add-overlays, $(RAVELIN_BOARDS) ,$(RAVELIN_BASE_DTB)) \
	$(call add-overlays, $(RAVELIN_4GB_BOARDS) ,$(RAVELIN_4GB_BASE_DTB))
canoe-overlays-dtb-$(CONFIG_ARCH_RAVELIN) += $(RAVELIN_BOARDS) $(RAVELIN_BASE_DTB) $(RAVELIN_4GB_BOARDS) $(RAVELIN_4GB_BASE_DTB)

dtb-y += $(canoe-dtb-y) $(canoe-overlays-dtb-y)

MALABAR_BASE_DTB += malabar.dtb malabar-4gb.dtb
MALABAR_APQ_BASE_DTB += malabarp.dtb

MALABAR_BOARDS += \
		malabar-atp-overlay.dtbo \
		malabar-cdp-overlay.dtbo \
		malabar-cdp-lcd-overlay.dtbo \
		malabar-mtp-overlay.dtbo \
		malabar-mtp-wcn3950-overlay.dtbo \
		malabar-qrd-overlay.dtbo \
		malabar-rcm-overlay.dtbo \
		malabar-cdp-4gb-overlay.dtbo \
		malabar-qrd-4gb-overlay.dtbo \
		malabar-mtp-4gb-overlay.dtbo \
		malabar-cdp-emmc-overlay.dtbo \
		malabar-mtp-emmc-overlay.dtbo

NOAPQ_MALABAR_BOARDS += \
		malabar-rumi-overlay.dtbo

malabar-dtb-$(CONFIG_ARCH_MALABAR) += \
	$(call add-overlays, $(MALABAR_BOARDS) $(NOAPQ_MALABAR_BOARDS),$(MALABAR_BASE_DTB)) \
	$(call add-overlays, $(MALABAR_BOARDS),$(MALABAR_APQ_BASE_DTB))
malabar-overlays-dtb-$(CONFIG_ARCH_MALABAR) += $(MALABAR_BOARDS) $(NOAPQ_MALABAR_BOARDS) $(MALABAR_BASE_DTB) $(MALABAR_APQ_BASE_DTB)

dtb-y += $(malabar-dtb-y) $(malabar-overlays-dtb-y)

KHAJE_BASE_DTB += khaje.dtb khajep.dtb khajeq.dtb khajeg.dtb khaje-3gb.dtb


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
		khajep-qrd-overlay.dtbo \
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

dtb-y += $(bengal-dtb-y) $(bengal-overlays-dtb-y)

BENGAL_BASE_DTB += bengal.dtb bengalp.dtb bengal-1gb.dtb bengal-2gb.dtb

BENGAL_BOARDS += \
		bengal-idp-overlay.dtbo\
		bengal-rumi-overlay.dtbo \
		bengal-qrd-overlay.dtbo \
		bengal-idp-nopmi-overlay.dtbo \
		bengal-idp-usbc-overlay.dtbo \
		bengalp-idp-overlay.dtbo \
		bengal-idp-1gb-overlay.dtbo \
		bengal-idp-2gb-overlay.dtbo \
		bengal-idp-usbc-1gb-overlay.dtbo \
		bengal-idp-usbc-2gb-overlay.dtbo

bengal-dtb-$(CONFIG_ARCH_BENGAL) += \
        $(call add-overlays, $(BENGAL_BOARDS) ,$(BENGAL_BASE_DTB))
bengal-overlays-dtb-$(CONFIG_ARCH_BENGAL) += $(BENGAL_BOARDS) $(BENGAL_BASE_DTB)

dtb-y += $(bengal-dtb-y) $(bengal-overlays-dtb-y)

YUPIK_BASE_DTB += yupik-iot.dtb katmai.dtb katmai-fp2.dtb katmai-fp2p5.dtb katmai-fp3.dtb yupik.dtb yupik-hsp.dtb
YUPIK_APQ_BASE_DTB += yupikp-iot.dtb katmaip.dtb katmaip-fp2.dtb katmaip-fp2p5.dtb katmaip-fp3.dtb  yupikp-hsp.dtb

YUPIK_BOARDS += \
		yupikp-iot-idp-overlay.dtbo \
		yupikp-iot-idp-pm7250b-overlay.dtbo \
		yupikp-iot-qrd-overlay.dtbo \
		yupikp-iot-hsp-overlay.dtbo \
		yupikp-iot-hsp-pm7250b-overlay.dtbo \
		yupikp-iot-idps-amoled-overlay.dtbo \
		katmaip-hsp-overlay.dtbo \
		katmaip-hsp-pm7250b-overlay.dtbo \
		yupikp-idp-overlay.dtbo \
		yupikp-qrd-overlay.dtbo \
		yupikp-idps-amoled-overlay.dtbo \
		yupikp-atp-overlay.dtbo \
		yupikp-idp-hsp-overlay.dtbo


NOAPQ_YUPIK_BOARDS += \
		yupik-iot-idp-overlay.dtbo \
		yupik-iot-idp-pm7250b-overlay.dtbo \
		yupik-iot-qrd-overlay.dtbo \
		yupik-iot-hsp-overlay.dtbo \
		yupik-iot-hsp-pm7250b-overlay.dtbo \
		yupik-iot-idps-amoled-overlay.dtbo \
		katmai-hsp-overlay.dtbo \
		katmai-hsp-pm7250b-overlay.dtbo \
		yupik-rumi-overlay.dtbo \
		yupik-idp-overlay.dtbo \
		yupik-qrd-overlay.dtbo \
		yupik-idp-pm7250b-overlay.dtbo \
		yupik-idps-amoled-overlay.dtbo \
		yupik-atp-overlay.dtbo \
		yupik-idp-hsp-overlay.dtbo

lahaina-dtb-$(CONFIG_ARCH_YUPIK) += \
	$(call add-overlays, $(NOAPQ_YUPIK_BOARDS),$(YUPIK_BASE_DTB)) \
	$(call add-overlays, $(YUPIK_BOARDS),$(YUPIK_APQ_BASE_DTB))
lahaina-overlays-dtb-$(CONFIG_ARCH_YUPIK) += $(NOAPQ_YUPIK_BOARDS) $(YUPIK_BASE_DTB) $(YUPIK_APQ_BASE_DTB) $(YUPIK_BOARDS)

LAHAINA_BASE_DTB += lahaina.dtb lahaina-v2.dtb lahaina-v2.1.dtb
LAHAINA_APQ_BASE_DTB += lahainap.dtb lahainap-v2.dtb lahainap-v2.1.dtb

LAHAINA_BOARDS += \
		lahainap-hhg-hsp-pro-overlay.dtbo \
		lahainap-mtp-overlay.dtbo \
		lahainap-atp-overlay.dtbo \
		lahainap-qrd-overlay.dtbo

NOAPQ_LAHAINA_BOARDS += \
		lahaina-rumi-overlay.dtbo \
		lahaina-mtp-overlay.dtbo \
		lahaina-mtp-hsp-overlay.dtbo \
		lahaina-atp-overlay.dtbo \
		lahaina-hdk-overlay.dtbo \
		lahaina-hhg-overlay.dtbo \
		lahaina-qrd-overlay.dtbo \
		lahaina-qrd-hsp-overlay.dtbo \
		lahaina-qrd-module-overlay.dtbo \
		lahaina-mtp-hsp-pro-overlay.dtbo \
		lahaina-qrd-hsp-pro-overlay.dtbo \
		lahaina-mtp-v2-overlay.dtbo \
		lahaina-mtp-v2.1-overlay.dtbo

lahaina-dtb-$(CONFIG_ARCH_LAHAINA) += \
	$(call add-overlays, $(NOAPQ_LAHAINA_BOARDS),$(LAHAINA_BASE_DTB)) \
	$(call add-overlays, $(LAHAINA_BOARDS),$(LAHAINA_APQ_BASE_DTB))
lahaina-overlays-dtb-$(CONFIG_ARCH_LAHAINA) += $(NOAPQ_LAHAINA_BOARDS) $(LAHAINA_BASE_DTB) $(LAHAINA_APQ_BASE_DTB) $(LAHAINA_BOARDS)

dtb-y += $(lahaina-dtb-y) $(lahaina-overlays-dtb-y)

MONACO_BASE_DTB += monaco.dtb monacop.dtb

MONACO_BOARDS += \
        monaco-idp-v1-overlay.dtbo \
        monaco-standalone-idp-v1-overlay.dtbo \
        monaco-idp-v2-overlay.dtbo \
        monaco-standalone-idp-v2-overlay.dtbo \
        monaco-idp-v3-overlay.dtbo \
        monaco-standalone-idp-v3-overlay.dtbo \
        monaco-idp-v1.1-overlay.dtbo \
        monaco-wdp-v1-overlay.dtbo \
        monaco-wdp-v1.1-overlay.dtbo \
        monaco-standalone-wdp-v1-overlay.dtbo \
        monaco-atp-v1-overlay.dtbo \
        monaco-standalone-atp-v1-overlay.dtbo

monaco-dtb-$(CONFIG_ARCH_MONACO) += \
        $(call add-overlays, $(MONACO_BOARDS) ,$(MONACO_BASE_DTB))
monaco-overlays-dtb-$(CONFIG_ARCH_MONACO) += $(MONACO_BOARDS) $(MONACO_BASE_DTB)
dtb-y += $(monaco-dtb-y)

SA8155_BASE_DTB += sa8155.dtb sa8155-v2.dtb
SA8155P_BASE_DTB += sa8155p.dtb sa8155p-v2.dtb

SA8155_BOARDS += \
		sa8155-adp-star-overlay.dtbo \
		sa8155-adp-air-overlay.dtbo

SA8155P_BOARDS += \
		sa8155p-adp-star-overlay.dtbo \
		sa8155p-adp-air-overlay.dtbo


gen3auto-dtb-$(CONFIG_ARCH_SA8155) += \
	$(call add-overlays, $(SA8155_BOARDS),$(SA8155_BASE_DTB)) \
	$(call add-overlays, $(SA8155P_BOARDS),$(SA8155P_BASE_DTB))
gen3auto-overlays-dtb-$(CONFIG_ARCH_SA8155) += $(SA8155_BOARDS) $(SA8155P_BOARDS) $(SA8155_BASE_DTB) $(SA8155P_BASE_DTB)


dtb-y += $(gen3auto-dtb-y)


SUN_BASE_DTB += sun.dtb sun-v2.dtb sun-tp.dtb sun-tp-v2.dtb
SUN_APQ_BASE_DTB += sunp.dtb sunp-v2.dtb sunp-tp.dtb sunp-tp-v2.dtb

SUN_BOARDS += \
		sun-mtp-3.5mm-overlay.dtbo \
		sun-mtp-kiwi-overlay.dtbo \
		sun-mtp-kiwi-v8-overlay.dtbo \
		sun-mtp-nfc-overlay.dtbo \
		sun-mtp-overlay.dtbo \
		sun-mtp-qmp1000-overlay.dtbo \
		sun-mtp-qmp1000-v8-overlay.dtbo \
		sun-mtp-v8-overlay.dtbo \
		sun-cdp-kiwi-overlay.dtbo \
		sun-cdp-kiwi-v8-overlay.dtbo \
		sun-cdp-nfc-overlay.dtbo \
		sun-cdp-no-display-overlay.dtbo \
		sun-cdp-overlay.dtbo \
		sun-cdp-v8-overlay.dtbo \
		sun-qrd-sku1-overlay.dtbo \
		sun-qrd-sku1-v8-overlay.dtbo \
		sun-qrd-sku2-v8-overlay.dtbo \
		sun-rcm-kiwi-overlay.dtbo \
		sun-rcm-kiwi-v8-overlay.dtbo \
		sun-rcm-overlay.dtbo \
		sun-rcm-v8-overlay.dtbo \
		sun-atp-overlay.dtbo \
		sunp-hdk-overlay.dtbo \
		haotian-sm8750-overlay.dtbo

NOAPQ_SUN_BOARDS += \
		 sun-rumi-overlay.dtbo

sun-dtb-$(CONFIG_ARCH_SUN) += \
	$(call add-overlays, $(SUN_BOARDS) $(NOAPQ_SUN_BOARDS),$(SUN_BASE_DTB))\
	$(call add-overlays, $(SUN_BOARDS) $(APQ_SUN_BOARDS),$(SUN_APQ_BASE_DTB))
sun-overlays-dtb-$(CONFIG_ARCH_SUN) += $(SUN_BOARDS) $(NOAPQ_SUN_BOARDS) $(SUN_BASE_DTB) $(SUN_APQ_BASE_DTB)
dtb-y += $(sun-dtb-y) $(sun-overlays-dtb-y)

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
		 pineapple-atp-overlay.dtbo

NOAPQ_PINEAPPLE_BOARDS += \
		 pineapple-rumi-overlay.dtbo

pineapple-dtb-$(CONFIG_ARCH_PINEAPPLE) += \
	$(call add-overlays, $(PINEAPPLE_BOARDS) $(NOAPQ_PINEAPPLE_BOARDS),$(PINEAPPLE_BASE_DTB))\
	$(call add-overlays, $(PINEAPPLE_BOARDS) $(APQ_PINEAPPLE_BOARDS),$(PINEAPPLE_APQ_BASE_DTB))
pineapple-overlays-dtb-$(CONFIG_ARCH_PINEAPPLE) += $(PINEAPPLE_BOARDS) $(NOAPQ_PINEAPPLE_BOARDS) $(PINEAPPLE_BASE_DTB) $(PINEAPPLE_APQ_BASE_DTB)
dtb-y += $(pineapple-dtb-y)

SERAPH_BASE_DTB += seraph.dtb
SERAPH_APQ_BASE_DTB += seraphp.dtb

SERAPH_BOARDS += \
		seraph-atp-overlay.dtbo \
		seraph-idp-overlay.dtbo \
		seraph-idp-dtof-overlay.dtbo \
		seraph-idp-no-display-overlay.dtbo \
		seraph-idp-no-display-no-gpu-overlay.dtbo \
		seraphp-atp-overlay.dtbo \
		seraphp-idp-overlay.dtbo \
		seraphp-idp-dtof-overlay.dtbo \
		seraphp-idp-no-display-overlay.dtbo \
		seraphp-idp-no-display-no-gpu-overlay.dtbo \
		seraphp-qar-camera-audio-overlay.dtbo \
		seraphp-qar-overlay.dtbo

NOAPQ_SERAPH_BOARDS += \
                  seraph-rumi-overlay.dtbo

seraph-dtb-$(CONFIG_ARCH_SERAPH) += \
	$(call add-overlays, $(SERAPH_BOARDS) $(NOAPQ_SERAPH_BOARDS),$(SERAPH_BASE_DTB))\
	$(call add-overlays, $(SERAPH_BOARDS) $(APQ_SERAPH_BOARDS),$(SERAPH_APQ_BASE_DTB))
seraph-overlays-dtb-$(CONFIG_ARCH_SERAPH) += $(NOAPQ_SERAPH_BOARDS) $(SERAPH_BASE_DTB) $(SERAPH_APQ_BASE_DTB)

PIKACHU_BASE_DTB += pikachu.dtb
PIKACHU_APQ_BASE_DTB += pikachup.dtb

PIKACHU_BOARDS += \
		pikachu-atp-overlay.dtbo \
		pikachu-idp-overlay.dtbo \
		pikachu-idp-dtof-overlay.dtbo \
		pikachup-atp-overlay.dtbo \
		pikachup-idp-overlay.dtbo \
		pikachup-idp-dtof-overlay.dtbo

NOAPQ_PIKACHU_BOARDS += \
		pikachu-rumi-overlay.dtbo

seraph-dtb-$(CONFIG_ARCH_PIKACHU) += \
	$(call add-overlays, $(PIKACHU_BOARDS) $(NOAPQ_PIKACHU_BOARDS),$(PIKACHU_BASE_DTB))\
	$(call add-overlays, $(PIKACHU_BOARDS) $(APQ_PIKACHU_BOARDS),$(PIKACHU_APQ_BASE_DTB))
seraph-overlays-dtb-$(CONFIG_ARCH_PIKACHU) += $(NOAPQ_PIKACHU_BOARDS) $(PIKACHU_BASE_DTB) $(PIKACHU_APQ_BASE_DTB)

dtb-y += $(seraph-dtb-y) $(seraph-overlays-dtb-y)

VIENNA_BASE_DTB += vienna.dtb
VIENNA_APQ_BASE_DTB += viennap.dtb

VIENNA_BOARDS += \
		 vienna-atp-overlay.dtbo \
		 vienna-atp-overlay-pmw6100-v2.dtbo \
		 vienna-atp-no-cam-overlay.dtbo \
		 vienna-atp-no-cam-overlay-pmw6100-v2.dtbo \
		 vienna-idp-overlay.dtbo \
		 vienna-idp-overlay-pmw6100-v2.dtbo \
		 vienna-idp-no-cam-overlay.dtbo \
                 vienna-idp-no-cam-overlay-pmw6100-v2.dtbo \
		 vienna-idp-se8-overlay.dtbo \
		 vienna-idp-se8-overlay-pmw6100-v2.dtbo \
		 vienna-rcm-overlay.dtbo \
		 vienna-rcm-overlay-pmw6100-v2.dtbo \
		 vienna-rcm-no-cam-overlay.dtbo \
		 vienna-rcm-no-cam-overlay-pmw6100-v2.dtbo \
		 vienna-wdp-overlay.dtbo \
		 vienna-wdp-overlay-pmw6100-v2.dtbo \
		 vienna-wdp-ddsip-overlay.dtbo \
		 vienna-wdp-ddsip-overlay-pmw6100-v2.dtbo \
		 vienna-wdp-no-cam-overlay.dtbo \
		 vienna-wdp-no-cam-overlay-pmw6100-v2.dtbo \
		 vienna-wdp-se8-overlay.dtbo \
		 vienna-wdp-se8-overlay-pmw6100-v2.dtbo \
		 vienna-wrd-overlay.dtbo \
		 vienna-wrd-overlay-pmw6100-v2.dtbo \
		 vienna-wrd-ddsip-overlay.dtbo \
		 vienna-wrd-ddsip-overlay-pmw6100-v2.dtbo \
		 vienna-wrd-no-cam-overlay.dtbo \
		 vienna-wrd-no-cam-overlay-pmw6100-v2.dtbo

NOAPQ_VIENNA_BOARDS += \
		 vienna-rumi-overlay.dtbo \
		 vienna-rumi-overlay-pmw6100-v2.dtbo

vienna-dtb-$(CONFIG_ARCH_VIENNA) += \
	$(call add-overlays, $(VIENNA_BOARDS) $(NOAPQ_VIENNA_BOARDS),$(VIENNA_BASE_DTB))\
	$(call add-overlays, $(VIENNA_BOARDS) $(APQ_VIENNA_BOARDS),$(VIENNA_APQ_BASE_DTB))
vienna-overlays-dtb-$(CONFIG_ARCH_VIENNA) += $(VIENNA_BOARDS) $(NOAPQ_VIENNA_BOARDS) $(VIENNA_BASE_DTB) $(VIENNA_APQ_BASE_DTB)
dtb-y += $(vienna-dtb-y)

X1P42100_BASE_DTB += x1p42100.dtb

X1P42100_BOARDS += \
		   x1p42100-crd-overlay.dtbo

x1p42100-dtb-$(CONFIG_ARCH_X1P42100) += \
	$(call add-overlays, $(X1P42100_BOARDS),$(X1P42100_BASE_DTB))
x1p42100-overlays-dtb-$(CONFIG_ARCH_X1P42100) += $(X1P42100_BOARDS) $(X1P42100_BASE_DTB)
dtb-y += $(x1p42100-dtb-y)

X1E80100_BASE_DTB += x1e80100.dtb

X1E80100_BOARDS += \
		   x1e80100-crd-overlay.dtbo \
		   x1e80100-qcb-overlay.dtbo \
		   x1e80100-qcp-overlay.dtbo

x1e80100-dtb-$(CONFIG_ARCH_X1E80100) += \
	$(call add-overlays, $(X1E80100_BOARDS),$(X1E80100_BASE_DTB)) \
        $(call add-overlays, $(X1E80100_BOARDS),$(HAMOA_LA_BASE_DTB))
x1e80100-overlays-dtb-$(CONFIG_ARCH_X1E80100) += $(X1E80100_BOARDS) $(X1E80100_BASE_DTB) $(HAMOA_LA_BASE_DTB)
dtb-y += $(x1e80100-dtb-y)

HAMOA_LA_BASE_DTB += hamoa_la.dtb

SHIKRA_BASE_DTB += shikra-cqm.dtb shikra-lite-cqm.dtb
SHIKRA_APQ_BASE_DTB += shikra-cqs.dtb shikra-lite-cqs.dtb

SHIKRA_BOARDS += \
		 shikra-evk-kunlun-nfc-overlay.dtbo \
		 shikra-evk-kunlun-nfc-atp-overlay.dtbo \
		 shikra-evk-kunlun-nfc-imxcam-overlay.dtbo \
		 shikra-lite-evk-eSMPS-nfc-overlay.dtbo \
		 shikra-lite-evk-eSMPS-nfc-imxcam-overlay.dtbo

NOAPQ_SHIKRA_BOARDS += \
		 shikra-rumi-overlay.dtbo

shikra-dtb-$(CONFIG_ARCH_SHIKRA) += \
	$(call add-overlays, $(SHIKRA_BOARDS) $(NOAPQ_SHIKRA_BOARDS),$(SHIKRA_BASE_DTB)) \
	$(call add-overlays, $(SHIKRA_BOARDS) $(APQ_SHIKRA_BOARDS),$(SHIKRA_APQ_BASE_DTB))
shikra-overlays-dtb-$(CONFIG_ARCH_SHIKRA) += $(SHIKRA_BOARDS) $(NOAPQ_SHIKRA_BOARDS) $(SHIKRA_BASE_DTB) $(SHIKRA_APQ_BASE_DTB)
dtb-y += $(shikra-dtb-y)
endif

ifeq ($(CONFIG_ARCH_PINEAPPLE), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
pineapple_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += pineapple-vm-rumi.dtb \
				pineapple-vm-mtp.dtb \
				pineapple-vm-cdp.dtb \
				pineapple-vm-qrd.dtb \
				pineapple-vm-rcm.dtb \
				pineapple-oemvm-cdp.dtb \
				pineapple-oemvm-mtp.dtb \
				pineapple-oemvm-qrd.dtb \
				pineapple-oemvm-rumi.dtb \
				pineapple-oemvm-rcm.dtb
dtb-y += $(pineapple_tuivm-dtb-y)

endif
endif

ifeq ($(CONFIG_ARCH_SERAPH), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
seraph_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += seraph-vm-base.dtb \
				seraph-vm-atp-overlay.dtbo \
				seraph-vm-idp-overlay.dtbo \
				seraph-vm-idp-no-display-overlay.dtbo \
				seraph-vm-idp-no-display-no-gpu-overlay.dtbo \
				seraph-vm-idp-dtof-overlay.dtbo

dtb-y += $(seraph_tuivm-dtb-y)
endif
endif

ifeq ($(CONFIG_ARCH_PIKACHU), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
seraph_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += pikachu-vm-idp-overlay.dtbo \
				pikachu-vm-atp-overlay.dtbo

dtb-y += $(seraph_tuivm-dtb-y)
endif
endif

ifeq ($(CONFIG_ARCH_SUN), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
sun_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += sun-vm-rumi.dtb \
				sun-vm-mtp.dtb \
				sun-vm-mtp-v8.dtb \
				sun-vm-cdp.dtb \
				sun-vm-qrd.dtb \
				sun-vm-rcm.dtb \
				sunp-vm-hdk.dtb \
				sun-oemvm-rumi.dtb \
				sun-oemvm-mtp.dtb \
				sun-oemvm-mtp-v8.dtb \
				sun-oemvm-cdp.dtb \
				sun-oemvm-qrd.dtb \
				sun-oemvm-rcm.dtb \
				sunp-oemvm-hdk.dtb
dtb-y += $(sun_tuivm-dtb-y)

endif
endif

ifeq ($(CONFIG_ARCH_CANOE), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
canoe_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += canoe-vm-base.dtb \
				canoe-oemvm-base.dtb \
				canoe-vm-mtp-overlay.dtbo \
				canoe-vm-qrd-overlay.dtbo \
				canoe-vm-rcm-overlay.dtbo \
				canoe-vm-cdp-overlay.dtbo \
				alor-interposer-vm-mtp-overlay.dtbo \
				alor-interposer-vm-qrd-overlay.dtbo \
				alor-interposer-vm-rcm-overlay.dtbo \
				canoe-oemvm-mtp-overlay.dtbo \
				canoe-oemvm-qrd-overlay.dtbo \
				canoe-oemvm-rcm-overlay.dtbo \
				canoe-oemvm-cdp-overlay.dtbo \
				alor-interposer-oemvm-mtp-overlay.dtbo \
				alor-interposer-oemvm-qrd-overlay.dtbo \
				alor-interposer-oemvm-rcm-overlay.dtbo

dtb-y += $(canoe_tuivm-dtb-y)

endif
endif

ifeq ($(CONFIG_ARCH_LEMANS), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
LEMANS_LA_GVM_BASE_DTB += lemans-vm-la.dtb

LEMANS_LA_GVM_BOARDS += \
		lemans-vm-la-overlay.dtbo

LEMANS_LV_GVM_BASE_DTB += lemans-vm-lv.dtb

LEMANS_LV_GVM_BOARDS += \
                lemans-vm-lv-overlay.dtbo

LEMANS_MULTI_GVM_BASE_DTB += lemans-vm-lv-mt.dtb

LEMANS_MULTI_GVM_BOARDS += \
		lemans-vm-lv-mt-overlay.dtbo

LEMANS_GH_LV_GVM_QAM_BASE_DTB += lemans-gh-vm-lv-qam-ridesx.dtb
LEMANS_GH_LV_GVM_QAM_BOARDS += lemans-gh-vm-lv-qam-ridesx-overlay.dtbo

LEMANS_SDP8_LA_GVM_BASE_DTB += sa8255p-sdp8-vm-la.dtb

LEMANS_SDP8_LA_GVM_BOARDS += sa8255p-sdp8-vm-la-overlay.dtbo

LEMANS_FLEX_SDP8_LA_GVM_BASE_DTB += sa8775p-sdp8-vm-la.dtb

LEMANS_FLEX_SDP8_LA_GVM_BOARDS += sa8775p-sdp8-vm-la-overlay.dtbo

LEMANS_SDP8_MULTI_GVM_BASE_DTB += sa8255p-sdp8-vm-la-mt.dtb

LEMANS_SDP8_MULTI_GVM_BASE_DTB += sa8255p-sdp8-vm-lv-mt.dtb

LEMANS_SDP8_MULTI_GVM_BOARDS += sa8255p-sdp8-vm-la-mt-overlay.dtbo

LEMANS_SDP8_MULTI_GVM_BOARDS += sa8255p-sdp8-vm-lv-mt-overlay.dtbo

LEMANS_FLEX_SDP8_MULTI_GVM_BASE_DTB += sa8775p-sdp8-vm-la-mt.dtb

LEMANS_FLEX_SDP8_MULTI_GVM_BASE_DTB += sa8775p-sdp8-vm-lv-mt.dtb

LEMANS_FLEX_SDP8_MULTI_GVM_BOARDS += sa8775p-sdp8-vm-la-mt-overlay.dtbo

LEMANS_FLEX_SDP8_MULTI_GVM_BOARDS += sa8775p-sdp8-vm-lv-mt-overlay.dtbo

autogvm-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(call add-overlays, $(LEMANS_LA_GVM_BOARDS),$(LEMANS_LA_GVM_BASE_DTB)) \
	$(call add-overlays, $(LEMANS_LV_GVM_BOARDS),$(LEMANS_LV_GVM_BASE_DTB)) \
	$(call add-overlays, $(LEMANS_MULTI_GVM_BOARDS),$(LEMANS_MULTI_GVM_BASE_DTB)) \
	$(call add-overlays, $(LEMANS_GH_LV_GVM_QAM_BOARDS),$(LEMANS_GH_LV_GVM_QAM_BASE_DTB)) \
	$(call add-overlays, $(LEMANS_SDP8_LA_GVM_BOARDS),$(LEMANS_SDP8_LA_GVM_BASE_DTB)) \
	$(call add-overlays, $(LEMANS_FLEX_SDP8_LA_GVM_BOARDS),$(LEMANS_FLEX_SDP8_LA_GVM_BASE_DTB)) \
	$(call add-overlays, $(LEMANS_SDP8_MULTI_GVM_BOARDS),$(LEMANS_SDP8_MULTI_GVM_BASE_DTB)) \
	$(call add-overlays, $(LEMANS_FLEX_SDP8_MULTI_GVM_BOARDS),$(LEMANS_FLEX_SDP8_MULTI_GVM_BASE_DTB))

autogvm-overlays-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(LEMANS_LA_GVM_BOARDS) $(LEMANS_LA_GVM_BASE_DTB) \
	$(LEMANS_LV_GVM_BOARDS) $(LEMANS_LV_GVM_BASE_DTB) \
	$(LEMANS_MULTI_GVM_BOARDS) $(LEMANS_MULTI_GVM_BASE_DTB) \
	$(LEMANS_GH_LV_GVM_QAM_BOARDS) $(LEMANS_GH_LV_GVM_QAM_BASE_DTB) \
	$(LEMANS_SDP8_LA_GVM_BOARDS) $(LEMANS_SDP8_LA_GVM_BASE_DTB) \
	$(LEMANS_FLEX_SDP8_LA_GVM_BOARDS) $(LEMANS_FLEX_SDP8_LA_GVM_BASE_DTB) \
	$(LEMANS_SDP8_MULTI_GVM_BOARDS) $(LEMANS_SDP8_MULTI_GVM_BASE_DTB) \
	$(LEMANS_FLEX_SDP8_MULTI_GVM_BOARDS) $(LEMANS_FLEX_SDP8_MULTI_GVM_BASE_DTB)

dtb-y += $(autogvm-dtb-y)

endif
endif

ifeq ($(CONFIG_ARCH_DIREWOLF), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
DIREWOLF_LA_GVM_BASE_DTB += direwolf-vm-la.dtb

DIREWOLF_LA_GVM_BOARDS += \
                   direwolf-vm-la-overlay.dtbo

autogvm-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(call add-overlays, $(DIREWOLF_LA_GVM_BOARDS),$(DIREWOLF_LA_GVM_BASE_DTB))

autogvm-overlays-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(DIREWOLF_LA_GVM_BOARDS) $(DIREWOLF_LA_GVM_BASE_DTB)

dtb-y += $(autogvm-dtb-y)

endif
endif

ifeq ($(CONFIG_ARCH_NORD), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
SA8797P_GH_LA_GVM_QAM_BASE_DTB += \
		sa8797p-gunyah-vm-qam.dtb \
		sa8797p-gunyah-vm-qam-star.dtb \
		sa8797p-v2-gunyah-vm-qam.dtb \
		sa8797p-v2-gunyah-vm-qam-star.dtb
SA8797P_GH_LA_GVM_QAM_BOARDS += sa8797p-gunyah-vm-qam-overlay.dtbo

SA8797P_GH_LV_GVM_QAM_BASE_DTB += sa8797p-gunyah-vm-lv-qam.dtb
SA8797P_GH_LV_GVM_QAM_BOARDS += sa8797p-gunyah-vm-lv-qam-overlay.dtbo

autogvm-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(call add-overlays, $(SA8797P_GH_LA_GVM_QAM_BOARDS),$(SA8797P_GH_LA_GVM_QAM_BASE_DTB)) \
	$(call add-overlays, $(SA8797P_GH_LV_GVM_QAM_BOARDS),$(SA8797P_GH_LV_GVM_QAM_BASE_DTB))

autogvm-overlays-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(SA8797P_GH_LA_GVM_QAM_BOARDS) $(SA8797P_GH_LA_GVM_QAM_BASE_DTB) \
	$(SA8797P_GH_LV_GVM_QAM_BOARDS) $(SA8797P_GH_LV_GVM_QAM_BASE_DTB)

SA8797P_LA_GVM_BOARDS += \
		sa8797p-sdp8-vm-la-overlay.dtbo sa8797p-v2-sdp8-vm-la-overlay.dtbo

SA8797P_LA_GVM_BASE_DTB += sa8797p-sdp8-vm-la.dtb sa8797p-v2-sdp8-vm-la.dtb

SA8797P_MULTI_GVM_BOARDS += \
		sa8797p-sdp8-vm-lv-mt-overlay.dtbo \
		sa8797p-sdp8-vm-la-mt-overlay.dtbo sa8797p-v2-sdp8-vm-la-mt-overlay.dtbo

SA8797P_MULTI_GVM_BASE_DTB += sa8797p-sdp8-vm-lv-mt.dtb \
		sa8797p-sdp8-vm-la-mt.dtb sa8797p-v2-sdp8-vm-la-mt.dtb

autogvm-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(call add-overlays, $(SA8797P_LA_GVM_BOARDS),$(SA8797P_LA_GVM_BASE_DTB)) \
	$(call add-overlays, $(SA8797P_MULTI_GVM_BOARDS),$(SA8797P_MULTI_GVM_BASE_DTB)) \

autogvm-overlays-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(SA8797P_LA_GVM_BOARDS) $(SA8797P_LA_GVM_BASE_DTB) \
	$(SA8797P_MULTI_GVM_BOARDS) $(SA8797P_MULTI_GVM_BASE_DTB) \

dtb-y += $(autogvm-dtb-y) $(autogvm-overlays-dtb-y)

endif
endif

ifeq ($(CONFIG_ARCH_MONACO_AUTO), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
MONACO_LA_GVM_BASE_DTB += monaco-vm-la.dtb

MONACO_LA_GVM_BOARDS += \
		monaco-vm-la-overlay.dtbo

MONACO_FLEX_MULTI_GVM_BASE_DTB += \
		monaco-vm-flex-lv-mt.dtb

MONACO_FLEX_MULTI_GVM_BOARDS += \
		monaco-vm-flex-lv-mt-overlay.dtbo

MONACO_MULTI_GVM_BASE_DTB += \
		monaco-vm-lv-mt.dtb

MONACO_MULTI_GVM_BOARDS += \
		monaco-vm-lv-mt-overlay.dtbo

MONACO_LV_GVM_BASE_DTB += monaco-sdp8-vm-lv.dtb

MONACO_LV_GVM_BOARDS += \
                   monaco-sdp8-vm-lv-overlay.dtbo

MONACO_LV_GVM_HEADLESS_BASE_DTB += \
		monaco-sdp8-vm-lv-headless-mt.dtb

MONACO_LV_GVM_HEADLESS_BOARDS += \
		monaco-sdp8-vm-lv-headless-mt-overlay.dtbo

MONACO_SDP8_LA_GVM_BASE_DTB += sa7255p-sdp8-vm-la.dtb

MONACO_SDP8_LA_GVM_BOARDS += sa7255p-sdp8-vm-la-overlay.dtbo

MONACO_FLEX_SDP8_LA_GVM_BASE_DTB += sa7775p-sdp8-vm-la.dtb

MONACO_FLEX_SDP8_LA_GVM_BOARDS += sa7775p-sdp8-vm-la-overlay.dtbo

MONACO_SDP8_MULTI_GVM_BASE_DTB += sa7255p-sdp8-vm-la-mt.dtb

MONACO_SDP8_MULTI_GVM_BASE_DTB += sa7255p-sdp8-vm-lv-mt.dtb

MONACO_SDP8_MULTI_GVM_BOARDS += sa7255p-sdp8-vm-la-mt-overlay.dtbo

MONACO_SDP8_MULTI_GVM_BOARDS += sa7255p-sdp8-vm-lv-mt-overlay.dtbo

MONACO_FLEX_SDP8_MULTI_GVM_BASE_DTB += sa7775p-sdp8-vm-la-mt.dtb

MONACO_FLEX_SDP8_MULTI_GVM_BASE_DTB += sa7775p-sdp8-vm-lv-mt.dtb

MONACO_FLEX_SDP8_MULTI_GVM_BOARDS += sa7775p-sdp8-vm-la-mt-overlay.dtbo

MONACO_FLEX_SDP8_MULTI_GVM_BOARDS += sa7775p-sdp8-vm-lv-mt-overlay.dtbo

autogvm-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(call add-overlays, $(MONACO_LA_GVM_BOARDS),$(MONACO_LA_GVM_BASE_DTB)) \
	$(call add-overlays, $(MONACO_LV_GVM_BOARDS),$(MONACO_LV_GVM_BASE_DTB)) \
	$(call add-overlays, $(MONACO_LV_GVM_HEADLESS_BOARDS),$(MONACO_LV_GVM_HEADLESS_BASE_DTB)) \
	$(call add-overlays, $(MONACO_FLEX_MULTI_GVM_BOARDS),$(MONACO_FLEX_MULTI_GVM_BASE_DTB)) \
	$(call add-overlays, $(MONACO_MULTI_GVM_BOARDS),$(MONACO_MULTI_GVM_BASE_DTB)) \
	$(call add-overlays, $(MONACO_SDP8_LA_GVM_BOARDS),$(MONACO_SDP8_LA_GVM_BASE_DTB)) \
	$(call add-overlays, $(MONACO_FLEX_SDP8_LA_GVM_BOARDS),$(MONACO_FLEX_SDP8_LA_GVM_BASE_DTB)) \
	$(call add-overlays, $(MONACO_SDP8_MULTI_GVM_BOARDS),$(MONACO_SDP8_MULTI_GVM_BASE_DTB)) \
	$(call add-overlays, $(MONACO_FLEX_SDP8_MULTI_GVM_BOARDS),$(MONACO_FLEX_SDP8_MULTI_GVM_BASE_DTB))

autogvm-overlays-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(MONACO_LA_GVM_BOARDS) $(MONACO_LA_GVM_BASE_DTB) \
	$(MONACO_LV_GVM_BOARDS) $(MONACO_LV_GVM_BASE_DTB) \
	$(MONACO_LV_GVM_HEADLESS_BOARDS) $(MONACO_LV_GVM_HEADLESS_BASE_DTB) \
	$(MONACO_FLEX_MULTI_GVM_BOARDS) $(MONACO_FLEX_MULTI_GVM_BASE_DTB) \
	$(MONACO_MULTI_GVM_BOARDS) $(MONACO_MULTI_GVM_BASE_DTB) \
	$(MONACO_SDP8_LA_GVM_BOARDS) $(MONACO_SDP8_LA_GVM_BASE_DTB) \
	$(MONACO_FLEX_SDP8_LA_GVM_BOARDS) $(MONACO_FLEX_SDP8_LA_GVM_BASE_DTB) \
	$(MONACO_SDP8_MULTI_GVM_BOARDS) $(MONACO_SDP8_MULTI_GVM_BASE_DTB) \
	$(MONACO_FLEX_SDP8_MULTI_GVM_BOARDS) $(MONACO_FLEX_SDP8_MULTI_GVM_BASE_DTB)

dtb-y += $(autogvm-dtb-y)

endif
endif

ifeq ($(CONFIG_ARCH_LEMANS), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)

LEMANS_GH_LA_GVM_QAM_BASE_DTB += lemans-gh-vm-la-qam-ridesx.dtb
LEMANS_GH_LA_GVM_QAM_BOARDS += lemans-gh-vm-la-qam-ridesx-overlay.dtbo

LEMANS_GH_LA_GVM_FLEX_QAM_BASE_DTB += lemans-gh-vm-la-flex-qam-ridesx.dtb
LEMANS_GH_LA_GVM_FLEX_QAM_BOARDS += lemans-gh-vm-la-flex-qam-ridesx-overlay.dtbo

autogvm-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(call add-overlays, $(LEMANS_GH_LA_GVM_QAM_BOARDS),$(LEMANS_GH_LA_GVM_QAM_BASE_DTB)) \
	$(call add-overlays, $(LEMANS_GH_LA_GVM_FLEX_QAM_BOARDS),$(LEMANS_GH_LA_GVM_FLEX_QAM_BASE_DTB))

autogvm-overlays-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(LEMANS_GH_LA_GVM_QAM_BOARDS) $(LEMANS_GH_LA_GVM_QAM_BASE_DTB) \
	$(LEMANS_GH_LA_GVM_FLEX_QAM_BOARDS) $(LEMANS_GH_LA_GVM_FLEX_QAM_BASE_DTB)

dtb-y += $(autogvm-dtb-y) $(autogvm-overlays-dtb-y)
endif
endif

ifeq ($(CONFIG_ARCH_ALOR), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
canoe_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += alor-vm-atp-overlay.dtbo \
				alor-vm-mtp-overlay.dtbo \
				alor-vm-qrd-overlay.dtbo \
				alor-vm-rcm-overlay.dtbo \
				alor-vm-cdp-overlay.dtbo \
				alor-oemvm-atp-overlay.dtbo \
				alor-oemvm-mtp-overlay.dtbo \
				alor-oemvm-qrd-overlay.dtbo \
				alor-oemvm-rcm-overlay.dtbo \
				alor-oemvm-cdp-overlay.dtbo
dtb-y += $(canoe_tuivm-dtb-y)

endif
endif

ifeq ($(CONFIG_ARCH_CHORA), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
canoe_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += chora-vm-atp-overlay.dtbo \
				chora-vm-mtp-overlay.dtbo \
				chora-vm-mtp-lcd-overlay.dtbo \
				chora-vm-qrd-overlay.dtbo \
				chora-vm-rcm-overlay.dtbo \
				chora-vm-cdp-overlay.dtbo \
				chora-oemvm-atp-overlay.dtbo \
				chora-oemvm-mtp-overlay.dtbo \
				chora-oemvm-qrd-overlay.dtbo \
				chora-oemvm-rcm-overlay.dtbo \
				chora-oemvm-cdp-overlay.dtbo
dtb-y += $(canoe_tuivm-dtb-y)

endif
endif

ifeq ($(CONFIG_ARCH_MALABAR), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
malabar_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += malabar-vm-base.dtb \
				malabar-vm-atp-overlay.dtbo \
				malabar-vm-mtp-overlay.dtbo \
				malabar-vm-qrd-overlay.dtbo \
				malabar-vm-rcm-overlay.dtbo \
				malabar-vm-cdp-overlay.dtbo \
				malabar-oemvm-base.dtb \
				malabar-oemvm-atp-overlay.dtbo \
				malabar-oemvm-mtp-overlay.dtbo \
				malabar-oemvm-qrd-overlay.dtbo \
				malabar-oemvm-rcm-overlay.dtbo \
				malabar-oemvm-cdp-overlay.dtbo
dtb-y += $(malabar_tuivm-dtb-y)

endif
endif

ifeq ($(CONFIG_ARCH_LEMANS), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
LEMANS_MULTI_GVM_BASE_DTB += \
                lemans-vm-la-mt.dtb

LEMANS_MULTI_GVM_BOARDS += \
                lemans-vm-la-mt-overlay.dtbo

autogvm-dtb-$(CONFIG_ARCH_QTI_VM) += \
                $(call add-overlays, $(LEMANS_MULTI_GVM_BOARDS),$(LEMANS_MULTI_GVM_BASE_DTB))

autogvm-overlays-dtb-$(CONFIG_ARCH_QTI_VM) += \
                $(LEMANS_MULTI_GVM_BOARDS) $(LEMANS_MULTI_GVM_BASE_DTB)

dtb-y += $(autogvm-dtb-y)

endif
endif

ifeq ($(CONFIG_ARCH_MONACO_AUTO), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
LEMANS_MULTI_GVM_BASE_DTB += \
                monaco-vm-la-mt.dtb

LEMANS_MULTI_GVM_BOARDS += \
                monaco-vm-la-mt-overlay.dtbo

autogvm-dtb-$(CONFIG_ARCH_QTI_VM) += \
                $(call add-overlays, $(MONACO_MULTI_GVM_BOARDS),$(MONACO_MULTI_GVM_BASE_DTB))

autogvm-overlays-dtb-$(CONFIG_ARCH_QTI_VM) += \
                $(MONACO_MULTI_GVM_BOARDS) $(MONACO_MULTI_GVM_BASE_DTB)

dtb-y += $(autogvm-dtb-y)

endif
endif

ifeq ($(CONFIG_ARCH_MONACO_AUTO), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)

MONACO_GH_LA_GVM_QAM_BASE_DTB += monaco-gh-vm-la-qam-ridesx.dtb
MONACO_GH_LA_GVM_QAM_BOARDS += monaco-gh-vm-la-qam-ridesx-overlay.dtbo

MONACO_GH_LV_GVM_QAM_BASE_DTB += monaco-gh-vm-lv-qam-ridesx.dtb
MONACO_GH_LV_GVM_QAM_BOARDS += monaco-gh-vm-lv-qam-ridesx-overlay.dtbo

autogvm-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(call add-overlays, $(MONACO_GH_LA_GVM_QAM_BOARDS),$(MONACO_GH_LA_GVM_QAM_BASE_DTB)) \
	$(call add-overlays, $(MONACO_GH_LV_GVM_QAM_BOARDS),$(MONACO_GH_LV_GVM_QAM_BASE_DTB))

autogvm-overlays-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(MONACO_GH_LA_GVM_QAM_BOARDS) $(MONACO_GH_LA_GVM_QAM_BASE_DTB) \
	$(MONACO_GH_LV_GVM_QAM_BOARDS) $(MONACO_GH_LV_GVM_QAM_BASE_DTB)

dtb-y += $(autogvm-dtb-y)

endif
endif

always-y        := $(dtb-y)
subdir-y        := $(dts-dirs)
clean-files     := *.dtb *.dtbo
