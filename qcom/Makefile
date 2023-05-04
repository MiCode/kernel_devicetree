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
		 pineapple-atp-overlay.dtbo

NOAPQ_PINEAPPLE_BOARDS += \
		 pineapple-rumi-overlay.dtbo

pineapple-dtb-$(CONFIG_ARCH_PINEAPPLE) += \
	$(call add-overlays, $(PINEAPPLE_BOARDS) $(NOAPQ_PINEAPPLE_BOARDS),$(PINEAPPLE_BASE_DTB))\
	$(call add-overlays, $(PINEAPPLE_BOARDS) $(APQ_PINEAPPLE_BOARDS),$(PINEAPPLE_APQ_BASE_DTB))
pineapple-overlays-dtb-$(CONFIG_ARCH_PINEAPPLE) += $(PINEAPPLE_BOARDS) $(NOAPQ_PINEAPPLE_BOARDS) $(PINEAPPLE_BASE_DTB) $(PINEAPPLE_APQ_BASE_DTB)

CLIFFS_BASE_DTB += cliffs.dtb

NOAPQ_CLIFFS_BOARDS += \
		 cliffs-rumi-overlay.dtbo

pineapple-dtb-$(CONFIG_ARCH_CLIFFS) += \
	$(call add-overlays, $(NOAPQ_CLIFFS_BOARDS),$(CLIFFS_BASE_DTB))
pineapple-overlays-dtb-$(CONFIG_ARCH_CLIFFS) += $(NOAPQ_CLIFFS_BOARDS) $(CLIFFS_BASE_DTB)

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

BLAIR_BASE_DTB += blair.dtb

BLAIR_BOARDS += \
		 blair-mtp-overlay.dtbo \
		 blair-qrd-overlay.dtbo \
		 blair-cdp-overlay.dtbo \
		 blair-atp-overlay.dtbo \
		 blair-mtp-usbc-overlay.dtbo \
		 blair-mtp-nopmi-overlay.dtbo \
		 blair-qrd-nopmi-overlay.dtbo

blair-dtb-$(CONFIG_ARCH_BLAIR) += \
	$(call add-overlays, $(BLAIR_BOARDS),$(BLAIR_BASE_DTB))
blair-overlays-dtb-$(CONFIG_ARCH_BLAIR) += $(BLAIR_BOARDS) $(BLAIR_BASE_DTB)
dtb-y += $(blair-dtb-y)
endif

ifeq ($(CONFIG_ARCH_PINEAPPLE), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
pineapple_tuivm-dtb-$(CONFIG_ARCH_QTI_VM) += pineapple-vm-rumi.dtb \
				pineapple-vm-mtp.dtb \
				pineapple-vm-cdp.dtb \
				pineapple-vm-qrd.dtb \
				pineapple-oemvm-cdp.dtb \
				pineapple-oemvm-mtp.dtb \
				pineapple-oemvm-qrd.dtb \
				pineapple-oemvm-rumi.dtb
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

DIREWOLF_LA_GVM_BASE_DTB += direwolf-vm-la.dtb

DIREWOLF_LA_GVM_BOARDS += \
                   direwolf-vm-la-overlay.dtbo

SA8155_LA_GVM_BASE_DTB += sa8155-vm-la.dtb

SA8155_LA_GVM_BOARDS += \
		   sa8155-vm-la-overlay.dtbo

SA8195_LA_GVM_BASE_DTB += sa8195-vm-la.dtb

SA8195_LA_GVM_BOARDS += \
                   sa8195-vm-la-overlay.dtbo

autogvm-dtb-$(CONFIG_QTI_QUIN_GVM) += \
	$(call add-overlays, $(SA8155_LA_GVM_BOARDS),$(SA8155_LA_GVM_BASE_DTB)) \
	$(call add-overlays, $(SA8195_LA_GVM_BOARDS),$(SA8195_LA_GVM_BASE_DTB)) \
	$(call add-overlays, $(DIREWOLF_LA_GVM_BOARDS),$(DIREWOLF_LA_GVM_BASE_DTB)) \
	$(call add-overlays, $(LEMANS_LA_GVM_BOARDS),$(LEMANS_LA_GVM_BASE_DTB))

autogvm-overlays-dtb-$(CONFIG_QTI_QUIN_GVM) += \
	$(SA8155_LA_GVM_BOARDS) $(SA8155_LA_GVM_BASE_DTB) \
	$(SA8195_LA_GVM_BOARDS) $(SA8195_LA_GVM_BASE_DTB) \
	$(DIREWOLF_LA_GVM_BOARDS) $(DIREWOLF_LA_GVM_BASE_DTB) \
	$(LEMANS_LA_GVM_BOARDS) $(LEMANS_LA_GVM_BASE_DTB)

dtb-y += $(autogvm-dtb-y)

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

always-y        := $(dtb-y)
subdir-y        := $(dts-dirs)
clean-files     := *.dtb *.dtbo
