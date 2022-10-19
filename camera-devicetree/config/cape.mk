dtbo-$(CONFIG_ARCH_WAIPIO)		+= waipio-camera.dtbo
dtbo-$(CONFIG_ARCH_WAIPIO)		+= waipio-camera-overlay-v2.dtbo
dtbo-$(CONFIG_ARCH_WAIPIO)		+= waipio-camera-sensor-mtp.dtbo \
                                             waipio-camera-sensor-cdp.dtbo \
                                             waipio-camera-sensor-qrd.dtbo \
                                             thor-sm8450-camera-sensor.dtbo \
                                             loki-sm8450-camera-sensor.dtbo \
											 zizhan-sm8450-camera-sensor.dtbo

dtbo-$(CONFIG_ARCH_CAPE) += cape-camera.dtbo
dtbo-$(CONFIG_ARCH_CAPE) += cape-camera-sensor-mtp.dtbo \
				cape-camera-sensor-cdp.dtbo \
				cape-camera-sensor-qrd.dtbo \
				thor-sm8475-camera-sensor.dtbo \
				zizhan-sm8475-camera-sensor.dtbo \
				diting-sm8475-camera-sensor.dtbo \
				mayfly-sm8475-camera-sensor.dtbo \
				unicorn-sm8475-camera-sensor.dtbo \
				mondrian-sm8475-camera-sensor.dtbo
