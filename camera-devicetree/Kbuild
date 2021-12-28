ifeq ($(CONFIG_BUILD_ARM64_DT_OVERLAY), y)
# Use the current MSM_ARCH as the target config/ Makefile
# Since Kernel SI can support multiple ARCH's this allows only the current selected target ARCH
# to compile.
ifeq ($(MSM_ARCH), $(filter $(MSM_ARCH), zeus cupid ingres zizhan thor))
    CAMERA_DTBO_CONFIG_MK=waipio
else
    CAMERA_DTBO_CONFIG_MK=MSM_ARCH
endif
include $(CAMERA_DEVICETREE_ROOT)/config/$(CAMERA_DTBO_CONFIG_MK).mk

else
$(error CONFIG_BUILD_ARM64_DT_OVERLAY is: $(CONFIG_BUILD_ARM64_DT_OVERLAY))
endif

always-y	:= $(dtbo-y) $(dtb-y)
subdir-y	:= $(dts-dirs)
clean-files	:= *.dtb *.dtbo
