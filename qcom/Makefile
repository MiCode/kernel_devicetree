# SPDX-License-Identifier: GPL-2.0

# add-overlay defines the target with following naming convention:
# <base>-<board>-dtbs = base.dtb board.dtbo
#
# Combined dtb target is also generated using the fdt_overlay tool.
# dtb-y += <base>-<board>.dtb

add-overlays = $(foreach o,$1,$(foreach b,$2,$(eval $(basename $b)-$(basename $o)-dtbs = $b $o) $(basename $b)-$(basename $o).dtb))

# sun-dtb-y is list of DTBs to install when doing non-overlay build
# sun-overlays-dtb-y is list of DTBs and DTBOs to install when doing overlay-supported build
# see DTB_TYPES from scripts/Makefile.dtbinst and install_dtbs from build.config.msm.common
#

ifneq ($(CONFIG_ARCH_QTI_VM), y)

SUN_BASE_DTB += sun.dtb sun-v2.dtb sun-tp.dtb sun-tp-v2.dtb
SUN_APQ_BASE_DTB += sunp.dtb sunp-v2.dtb sunp-tp.dtb sunp-tp-v2.dtb

SUN_BOARDS += \
		sun-mtp-3.5mm-kiwi-v8-overlay.dtbo \
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
		haotian-sm8750-overlay.dtbo \
		dada-sm8750-overlay.dtbo \
		xuanyuan-sm8750-overlay.dtbo \
		miro-sm8750-overlay.dtbo \
		sun-rcm-overlay.dtbo \
		sun-rcm-v8-overlay.dtbo \
		sun-atp-overlay.dtbo \
		sunp-hdk-overlay.dtbo

NOAPQ_SUN_BOARDS += \
		 sun-rumi-overlay.dtbo

sun-dtb-$(CONFIG_ARCH_SUN) += \
	$(call add-overlays, $(SUN_BOARDS) $(NOAPQ_SUN_BOARDS),$(SUN_BASE_DTB))\
	$(call add-overlays, $(SUN_BOARDS) $(APQ_SUN_BOARDS),$(SUN_APQ_BASE_DTB))
sun-overlays-dtb-$(CONFIG_ARCH_SUN) += $(SUN_BOARDS) $(NOAPQ_SUN_BOARDS) $(SUN_BASE_DTB) $(SUN_APQ_BASE_DTB)

TUNA_BASE_DTB += tuna.dtb tuna7.dtb
TUNA_APQ_BASE_DTB += tunap.dtb
TUNA_BOARDS += \
		tuna-atp-overlay.dtbo \
		tuna-cdp-overlay.dtbo \
		tuna-mtp-kiwi-harmonium-overlay.dtbo \
		tuna-mtp-kiwi-overlay.dtbo \
		tuna-mtp-nfc-overlay.dtbo \
		tuna-mtp-overlay.dtbo \
		tuna-mtp-qmp1000-overlay.dtbo \
		tuna-mtp-kiwi-pmd802x-overlay.dtbo \
		tuna-qrd-overlay.dtbo \
		tuna-rcm-kiwi-overlay.dtbo \
		tuna-rcm-overlay.dtbo \
		onyx-sm8735-overlay.dtbo \

NOAPQ_TUNA_BOARDS += \
		tuna-rumi-overlay.dtbo

sun-dtb-$(CONFIG_ARCH_TUNA) +=  \
        $(call add-overlays, $(TUNA_BOARDS) $(NOAPQ_TUNA_BOARDS),$(TUNA_BASE_DTB)) \
	$(call add-overlays, $(TUNA_BOARDS) $(APQ_TUNA_BOARDS),$(TUNA_APQ_BASE_DTB))
sun-overlays-dtb-$(CONFIG_ARCH_TUNA) += $(TUNA_BOARDS) $(NOAPQ_TUNA_BOARDS) $(TUNA_BASE_DTB) $(TUNA_APQ_BASE_DTB)
dtb-y += $(sun-dtb-y)

KERA_BASE_DTB += kera.dtb
KERA_APQ_BASE_DTB += kerap.dtb
KERA_BOARDS += \
		kera-atp-overlay.dtbo \
		kera-mtp-qca6750-ufs4-overlay.dtbo \
		kera-mtp-qca6750-ufs3-overlay.dtbo \
		kera-mtp-qca6750-qmp1000-overlay.dtbo \
		kera-mtp-wcn7750-qmp1000-overlay.dtbo \
		kera-mtp-wcn7750-ufs4-overlay.dtbo \
		kera-mtp-wcn7750-ufs3-overlay.dtbo \
		kera-cdp-qca6750-ufs2-overlay.dtbo \
		kera-cdp-qca6750-ufs3-overlay.dtbo \
		kera-cdp-qca6750-ufs4-overlay.dtbo \
		kera-iot-cdp-qca6750-ufs4-overlay.dtbo \
		kera-cdp-qca6750-ufs4-slt-overlay.dtbo \
		kera-qrd-wcn7750-ufs4-overlay.dtbo \
		kera-qrd-wcn7750-ufs2-overlay.dtbo \
		kera-qrd-wcn7750-ufs3-overlay.dtbo \
		kera-qrd-qca6750-ufs2-overlay.dtbo \
		kera-rcm-qca6750-ufs4-overlay.dtbo \
		kera-rcm-qca6750-ufs2-overlay.dtbo \
		kera-rcm-qca6750-ufs3-overlay.dtbo \
		kera-rcm-wcn7750-ufs2-overlay.dtbo \
		kera-rcm-wcn7750-ufs3-overlay.dtbo \
		kera-rcm-wcn7750-ufs4-overlay.dtbo

NOAPQ_KERA_BOARDS += \
		kera-rumi-overlay.dtbo

sun-dtb-$(CONFIG_ARCH_KERA) +=  \
	$(call add-overlays, $(KERA_BOARDS) $(NOAPQ_KERA_BOARDS),$(KERA_BASE_DTB)) \
	$(call add-overlays, $(KERA_BOARDS) $(APQ_KERA_BOARDS),$(KERA_APQ_BASE_DTB))
sun-overlays-dtb-$(CONFIG_ARCH_KERA) += $(KERA_BOARDS) $(NOAPQ_KERA_BOARDS) $(KERA_BASE_DTB) $(KERA_APQ_BASE_DTB)

dtb-y += $(sun-dtb-y)

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

PARROT_BASE_DTB += parrot.dtb parrotp.dtb parrot-sg.dtb parrotp-sg.dtb
PARROT_4GB_BASE_DTB += parrot-4gb.dtb

PARROT_BOARDS += \
		 parrot-rumi-overlay.dtbo \
		 parrot-atp-overlay.dtbo \
		 parrot-idp-overlay.dtbo \
		 parrot-idp-wcn3990-overlay.dtbo \
		 parrot-idp-wcn3990-amoled-rcm-overlay.dtbo \
		 parrot-idp-wcn6750-amoled-rcm-overlay.dtbo \
		 parrot-idp-wcn6750-amoled-overlay.dtbo \
		 parrot-idp-nopmi-overlay.dtbo \
		 parrot-idp-pm8350b-overlay.dtbo \
		 parrot-qrd-overlay.dtbo \
		 parrot-qrd-wcn6750-overlay.dtbo \
		 parrot-qrd-nopmi-overlay.dtbo   \
		 parrot-qrd-pm8350b-overlay.dtbo \
		 parrot-idp-wcn6755-overlay.dtbo \
		 parrot-idp-wcn6755-amoled-rcm-overlay.dtbo \
		 parrot-qrd-wcn6755-overlay.dtbo \
		 parrot-idp-wcn6755-pm8350b-overlay.dtbo \
		 parrot-idp-wcn6755-nopmi-overlay.dtbo

PARROT_4GB_BOARDS += \
		 parrot-idp-4gb-overlay.dtbo \
		 parrot-idp-wcn3990-4gb-overlay.dtbo \
		 parrot-idp-wcn3990-amoled-rcm-4gb-overlay.dtbo \
		 parrot-idp-wcn6750-amoled-rcm-4gb-overlay.dtbo \
		 parrot-idp-wcn6750-amoled-4gb-overlay.dtbo \
		 parrot-qrd-4gb-overlay.dtbo \
		 parrot-qrd-wcn6750-4gb-overlay.dtbo \


parrot-dtb-$(CONFIG_ARCH_PARROT) += \
	$(call add-overlays, $(PARROT_BOARDS),$(PARROT_BASE_DTB)) \
	$(call add-overlays, $(PARROT_4GB_BOARDS),$(PARROT_4GB_BASE_DTB))
parrot-overlays-dtb-$(CONFIG_ARCH_PARROT) += $(PARROT_BOARDS) $(PARROT_BASE_DTB) $(PARROT_4GB_BOARDS) $(PARROT_4GB_BASE_DTB)
dtb-y += $(parrot-dtb-y)

RAVELIN_BASE_DTB += ravelin.dtb ravelinp.dtb ravelin-sg.dtb ravelinp-sg.dtb
RAVELIN_4GB_BASE_DTB += ravelin-4gb.dtb ravelinp-4gb.dtb ravelin-sg.dtb ravelinp-sg.dtb

RAVELIN_BOARDS += \
		 ravelin-rumi-overlay.dtbo \
		 ravelin-atp-overlay.dtbo \
		 ravelin-idp-overlay.dtbo \
		 ravelin-idp-wcn3950-amoled-rcm-overlay.dtbo \
		 ravelin-qrd-overlay.dtbo \

RAVELIN_4GB_BOARDS += \
		 ravelin-idp-wcn3988-4gb-overlay.dtbo \
		 ravelin-qrd-4gb-overlay.dtbo \

parrot-dtb-$(CONFIG_ARCH_RAVELIN) += \
	$(call add-overlays, $(RAVELIN_BOARDS),$(RAVELIN_BASE_DTB)) \
	$(call add-overlays, $(RAVELIN_4GB_BOARDS),$(RAVELIN_4GB_BASE_DTB))
parrot-overlays-dtb-$(CONFIG_ARCH_RAVELIN) += $(RAVELIN_BOARDS) $(RAVELIN_BASE_DTB) $(RAVELIN_4GB_BOARDS) $(RAVELIN_4GB_BASE_DTB)
dtb-y += $(parrot-dtb-y)

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

ifeq ($(CONFIG_ARCH_SDXKOVA), y)
sdxkova-dtb-$(CONFIG_ARCH_SDXKOVA) += sdxkova-idp-cpe.dtb \
				sdxkova-idp-mbb.dtb \
				sdxkova-idp-m2.dtb

sdxkova-cpe-wkk-dtb-$(CONFIG_ARCH_SDXKOVA) += sdxkova-idp-cpe.dtb

dtb-y += $($(MSM_ARCH)-dtb-y)

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

ifeq ($(CONFIG_ARCH_TUNA), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
tuna_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += tuna-vm-rumi.dtb \
				tuna-vm-atp.dtb \
				tuna-vm-cdp.dtb \
				tuna-vm-mtp.dtb \
				tuna-vm-mtp-kiwi.dtb \
				tuna-vm-mtp-qmp1000.dtb \
				tuna-vm-qrd.dtb \
				tuna-vm-rcm.dtb \
				tuna-vm-rcm-kiwi.dtb \
				tuna-oemvm-rumi.dtb \
				tuna-oemvm-atp.dtb \
				tuna-oemvm-cdp.dtb \
				tuna-oemvm-mtp.dtb \
				tuna-oemvm-mtp-kiwi.dtb \
				tuna-oemvm-mtp-qmp1000.dtb \
				tuna-oemvm-qrd.dtb \
				tuna-oemvm-rcm.dtb \
				tuna-oemvm-rcm-kiwi.dtb
dtb-y += $(tuna_tuivm-dtb-y)
endif
endif

ifeq ($(CONFIG_ARCH_KERA), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
kera_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += kera-vm-rumi.dtb \
				kera-vm-atp.dtb \
				kera-vm-cdp-qca6750.dtb \
				kera-vm-mtp-qca6750.dtb \
				kera-vm-mtp-wcn7750.dtb \
				kera-vm-qrd-wcn7750.dtb \
				kera-vm-rcm-qca6750.dtb \
				kera-vm-rcm-wcn7750.dtb \
				kera-oemvm-rumi.dtb \
				kera-oemvm-atp.dtb \
				kera-oemvm-cdp-qca6750.dtb \
				kera-oemvm-mtp-qca6750.dtb \
				kera-oemvm-mtp-wcn7750.dtb \
				kera-oemvm-qrd-wcn7750.dtb \
				kera-oemvm-rcm-qca6750.dtb \
				kera-oemvm-rcm-wcn7750.dtb
dtb-y += $(kera_tuivm-dtb-y)
endif
endif

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

ifeq ($(CONFIG_ARCH_PARROT), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
parrot_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += parrot-vm-rumi.dtb \
			parrot-vm-atp.dtb \
			parrot-vm-idp.dtb \
			parrot-vm-idp-wcn3990.dtb \
			parrot-vm-idp-wcn3990-amoled-rcm.dtb \
			parrot-vm-idp-wcn6750-amoled.dtb \
			parrot-vm-idp-wcn6750-amoled-rcm.dtb \
			parrot-vm-qrd.dtb \
			parrot-vm-qrd-wcn6750.dtb

dtb-y += $(parrot_tuivm-dtb-y)

endif
endif

ifeq ($(CONFIG_ARCH_RAVELIN), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
parrot_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) +=  ravelin-vm-rumi.dtb \
			ravelin-vm-atp.dtb \
			ravelin-vm-idp.dtb \
			ravelin-vm-idp-wcn3988.dtb \
			ravelin-vm-idp-wcn3950-amoled-rcm.dtb \
			ravelin-vm-qrd.dtb

dtb-y += $(parrot_tuivm-dtb-y)

endif
endif

always-y        := $(dtb-y)
subdir-y        := $(dts-dirs)
clean-files     := *.dtb *.dtbo
