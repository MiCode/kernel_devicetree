ifneq ($(CONFIG_ARCH_QTI_VM), y)
dtbo-y += display/waipio-sde.dtbo \
		display/waipio-sde-display-mtp-overlay.dtbo \
		display/waipio-sde-display-cphy-mtp-overlay.dtbo \
		display/waipio-sde-display-cdp-overlay.dtbo \
		display/waipio-sde-display-qrd-overlay.dtbo \
		display/zeus-sde-display-mtp-overlay.dtbo \
		display/cupid-sde-display-mtp-overlay.dtbo \
		display/waipio-sde-display-hdk-overlay.dtbo \
		display/waipio-sde-display-waipio-lemur-cdp-overlay.dtbo \
		display/waipio-sde-display-waipio-lemur-mtp-overlay.dtbo \
		display/waipio-sde-display-rumi-overlay.dtbo
else
dtbo-y += display/trustedvm-waipio-sde-display-mtp-overlay.dtbo \
	  display/trustedvm-waipio-sde-display-cdp-overlay.dtbo \
	  display/trustedvm-waipio-sde-display-rumi-overlay.dtbo \
	  display/trustedvm-waipio-sde-display-qrd-overlay.dtbo
endif
always-y    := $(dtb-y) $(dtbo-y)
subdir-y    := $(dts-dirs)
clean-files    := *.dtb *.dtbo
