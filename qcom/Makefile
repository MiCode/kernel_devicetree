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

CANOE_BASE_DTB += canoe.dtb canoe-v2.dtb canoe-tp.dtb canoe-tp-v2.dtb alor-interposer.dtb alor-interposer-v2.dtb
CANOE_APQ_BASE_DTB += canoep.dtb canoep-v2.dtb canoep-tp.dtb canoep-tp-v2.dtb

CANOE_BOARDS += \
		canoe-mtp-3.5mm-overlay.dtbo \
		canoe-mtp-kiwi-overlay.dtbo \
		canoe-mtp-mango-overlay.dtbo \
		canoe-mtp-overlay.dtbo \
		canoe-mtp-pdm-mic-overlay.dtbo \
		canoe-mtp-pictor-overlay.dtbo \
		canoe-mtp-qmp1000-overlay.dtbo \
		canoe-mtp-st54l-pandeiro-overlay.dtbo \
		canoe-cdp-kiwi-overlay.dtbo \
		canoe-cdp-overlay.dtbo \
		canoe-cdp-st54l-pandeiro-i2s-overlay.dtbo \
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
		pudding-sm8850-overlay.dtbo \
		canoep-hdk-overlay.dtbo \
		alor-interposer-mtp-overlay.dtbo \
		alor-interposer-rcm-overlay.dtbo

NOAPQ_CANOE_BOARDS += \
		canoe-rumi-overlay.dtbo

canoe-dtb-$(CONFIG_ARCH_CANOE) += \
	$(call add-overlays, $(CANOE_BOARDS) $(NOAPQ_CANOE_BOARDS),$(CANOE_BASE_DTB))\
	$(call add-overlays, $(CANOE_BOARDS) $(APQ_CANOE_BOARDS),$(CANOE_APQ_BASE_DTB))
canoe-overlays-dtb-$(CONFIG_ARCH_CANOE) += $(CANOE_BOARDS) $(NOAPQ_CANOE_BOARDS) $(CANOE_BASE_DTB) $(CANOE_APQ_BASE_DTB)

ALOR_BASE_DTB += alor.dtb

ALOR_BOARDS += \
	        alor-atp-overlay.dtbo \
		alor-cdp-overlay.dtbo \
		alor-cdp-peach-overlay.dtbo \
		alor-mtp-overlay.dtbo \
		alor-mtp-pmih010x-smb1398-overlay.dtbo \
		alor-mtp-pm7550ba-smb1398-overlay.dtbo \
		alor-rcm-overlay.dtbo \
		alor-rcm-peach-overlay.dtbo \
		alor-qrd-overlay.dtbo \
		alor-qrd-peach-overlay.dtbo \
		alor-qrd-ufcs-overlay.dtbo

NOAPQ_ALOR_BOARDS += \
		alor-rumi-overlay.dtbo

canoe-dtb-$(CONFIG_ARCH_ALOR) += \
	$(call add-overlays, $(ALOR_BOARDS) $(NOAPQ_ALOR_BOARDS),$(ALOR_BASE_DTB))
canoe-overlays-dtb-$(CONFIG_ARCH_ALOR) += $(ALOR_BOARDS) $(NOAPQ_ALOR_BOARDS) $(ALOR_BASE_DTB)

CHORA_BASE_DTB += chora.dtb

NOAPQ_CHORA_BOARDS += \
		chora-rumi-overlay.dtbo

canoe-dtb-$(CONFIG_ARCH_CHORA) += \
	$(call add-overlays, $(NOAPQ_CHORA_BOARDS),$(CHORA_BASE_DTB))
canoe-overlays-dtb-$(CONFIG_ARCH_CHORA) += $(NOAPQ_CHORA_BOARDS) $(CHORA_BASE_DTB)

MALABAR_BASE_DTB += malabar.dtb

NOAPQ_MALABAR_BOARDS += \
		malabar-rumi-overlay.dtbo

canoe-dtb-$(CONFIG_ARCH_MALABAR) += \
	$(call add-overlays,$(NOAPQ_MALABAR_BOARDS), $(MALABAR_BASE_DTB))
canoe-overlays-dtb-$(CONFIG_ARCH_MALABAR) += $(NOAPQ_MALABAR_BOARDS) $(MALABAR_BASE_DTB)

dtb-y += $(canoe-dtb-y) $(canoe-overlays-dtb-y)

YUPIK_BASE_DTB += yupik-iot.dtb katmai.dtb katmai-fp2.dtb katmai-fp2p5.dtb katmai-fp3.dtb
YUPIK_APQ_BASE_DTB += yupikp-iot.dtb katmaip.dtb katmaip-fp2.dtb katmaip-fp2p5.dtb katmaip-fp3.dtb

YUPIK_BOARDS += \
		yupikp-iot-idp-overlay.dtbo \
		yupikp-iot-idp-pm7250b-overlay.dtbo \
		yupikp-iot-qrd-overlay.dtbo \
		yupikp-iot-hsp-overlay.dtbo \
		yupikp-iot-hsp-pm7250b-overlay.dtbo \
		yupikp-iot-idps-amoled-overlay.dtbo \
		katmaip-hsp-overlay.dtbo \
		katmaip-hsp-pm7250b-overlay.dtbo \
		katmaip-fp2-hsp-overlay.dtbo \
		katmaip-fp2-hsp-pm7250b-overlay.dtbo \
		katmaip-fp2p5-hsp-overlay.dtbo \
		katmaip-fp2p5-hsp-pm7250b-overlay.dtbo \
		katmaip-fp3-hsp-overlay.dtbo \
		katmaip-fp3-hsp-pm7250b-overlay.dtbo

NOAPQ_YUPIK_BOARDS += \
		yupik-iot-idp-overlay.dtbo \
		yupik-iot-idp-pm7250b-overlay.dtbo \
		yupik-iot-qrd-overlay.dtbo \
		yupik-iot-hsp-overlay.dtbo \
		yupik-iot-hsp-pm7250b-overlay.dtbo \
		yupik-iot-idps-amoled-overlay.dtbo \
		katmai-hsp-overlay.dtbo \
		katmai-hsp-pm7250b-overlay.dtbo \
		katmai-fp2-hsp-overlay.dtbo \
		katmai-fp2-hsp-pm7250b-overlay.dtbo \
		katmai-fp2p5-hsp-overlay.dtbo \
		katmai-fp2p5-hsp-pm7250b-overlay.dtbo \
		katmai-fp3-hsp-overlay.dtbo \
		katmai-fp3-hsp-pm7250b-overlay.dtbo

lahaina-dtb-$(CONFIG_ARCH_YUPIK) += \
	$(call add-overlays, $(NOAPQ_YUPIK_BOARDS),$(YUPIK_BASE_DTB)) \
	$(call add-overlays, $(YUPIK_BOARDS),$(YUPIK_APQ_BASE_DTB))
lahaina-overlays-dtb-$(CONFIG_ARCH_YUPIK) += $(NOAPQ_YUPIK_BOARDS) $(YUPIK_BASE_DTB) $(YUPIK_APQ_BASE_DTB) $(YUPIK_BOARDS)

dtb-y += $(lahaina-dtb-y) $(lahaina-overlays-dtb-y)

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

VIENNA_BASE_DTB += vienna.dtb
VIENNA_APQ_BASE_DTB += viennap.dtb

VIENNA_BOARDS += \
		 vienna-atp-overlay.dtbo \
		 vienna-atp-no-cam-overlay.dtbo \
		 vienna-idp-overlay.dtbo \
		 vienna-idp-no-cam-overlay.dtbo \
		 vienna-rcm-overlay.dtbo \
		 vienna-rcm-no-cam-overlay.dtbo \
		 vienna-wdp-overlay.dtbo \
		 vienna-wdp-ddsip-overlay.dtbo \
		 vienna-wdp-no-cam-overlay.dtbo \
		 vienna-wrd-overlay.dtbo \
		 vienna-wrd-ddsip-overlay.dtbo \
		 vienna-wrd-no-cam-overlay.dtbo

NOAPQ_VIENNA_BOARDS += \
		 vienna-rumi-overlay.dtbo

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
canoe_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += canoe-vm-rumi.dtb \
				canoe-vm-mtp.dtb \
				canoe-vm-cdp.dtb \
				canoe-vm-qrd.dtb \
				canoe-vm-rcm.dtb \
				canoe-vm-base.dtb \
				canoep-vm-hdk.dtb \
				canoe-oemvm-rumi.dtb \
				canoe-oemvm-mtp.dtb \
				canoe-oemvm-cdp.dtb \
				canoe-oemvm-qrd.dtb \
				canoe-oemvm-rcm.dtb \
				canoe-oemvm-base.dtb \
				canoep-oemvm-hdk.dtb \
				alor-interposer-vm-mtp.dtb \
				alor-interposer-vm-rcm.dtb \
				alor-interposer-oemvm-mtp.dtb \
				alor-interposer-oemvm-rcm.dtb \
				alor-interposer-vm-qrd.dtb \
				alor-interposer-oemvm-qrd.dtb \
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

LEMANS_MULTI_GVM_BASE_DTB += lemans-vm-lv-mt.dtb

LEMANS_MULTI_GVM_BOARDS += \
		lemans-vm-lv-mt-overlay.dtbo

autogvm-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(call add-overlays, $(LEMANS_LA_GVM_BOARDS),$(LEMANS_LA_GVM_BASE_DTB)) \
	$(call add-overlays, $(LEMANS_MULTI_GVM_BOARDS),$(LEMANS_MULTI_GVM_BASE_DTB))

autogvm-overlays-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(LEMANS_LA_GVM_BOARDS) $(LEMANS_LA_GVM_BASE_DTB) \
	$(LEMANS_MULTI_GVM_BOARDS) $(LEMANS_MULTI_GVM_BASE_DTB)

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
SA8797P_GH_LA_GVM_QAM_BASE_DTB += sa8797p-gunyah-vm-qam.dtb
SA8797P_GH_LA_GVM_QAM_BOARDS += sa8797p-gunyah-vm-qam-overlay.dtbo

autogvm-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(call add-overlays, $(SA8797P_GH_LA_GVM_QAM_BOARDS),$(SA8797P_GH_LA_GVM_QAM_BASE_DTB)) \

autogvm-overlays-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(SA8797P_GH_LA_GVM_QAM_BOARDS) $(SA8797P_GH_LA_GVM_QAM_BASE_DTB) \

SA8797P_LA_GVM_BOARDS += \
		sa8797p-sdp8-vm-la-overlay.dtbo

SA8797P_LA_GVM_BASE_DTB += sa8797p-sdp8-vm-la.dtb

autogvm-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(call add-overlays, $(SA8797P_LA_GVM_BOARDS),$(SA8797P_LA_GVM_BASE_DTB)) \

autogvm-overlays-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(SA8797P_LA_GVM_BOARDS) $(SA8797P_LA_GVM_BASE_DTB) \

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

autogvm-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(call add-overlays, $(MONACO_LA_GVM_BOARDS),$(MONACO_LA_GVM_BASE_DTB)) \
	$(call add-overlays, $(MONACO_FLEX_MULTI_GVM_BOARDS),$(MONACO_FLEX_MULTI_GVM_BASE_DTB)) \
	$(call add-overlays, $(MONACO_MULTI_GVM_BOARDS),$(MONACO_MULTI_GVM_BASE_DTB))

autogvm-overlays-dtb-$(CONFIG_ARCH_QTI_VM) += \
	$(MONACO_LA_GVM_BOARDS) $(MONACO_LA_GVM_BASE_DTB) \
	$(MONACO_FLEX_MULTI_GVM_BOARDS) $(MONACO_FLEX_MULTI_GVM_BASE_DTB) \
	$(MONACO_MULTI_GVM_BOARDS) $(MONACO_MULTI_GVM_BASE_DTB)

dtb-y += $(autogvm-dtb-y)

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

always-y        := $(dtb-y)
subdir-y        := $(dts-dirs)
clean-files     := *.dtb *.dtbo
