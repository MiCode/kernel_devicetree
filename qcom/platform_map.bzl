_platform_map = {
    "sun": {
        "dtb_list": [
            # keep sorted
            {"name": "sun.dtb"},
            {"name": "sun-v2.dtb"},
        ],
        "dtbo_list": [
            # keep sorted
            {"name": "sun-atp-overlay.dtbo"},
            {"name": "sun-cdp-kiwi-overlay.dtbo"},
            {"name": "sun-cdp-kiwi-v8-overlay.dtbo"},
            {"name": "sun-cdp-nfc-overlay.dtbo"},
            {"name": "sun-cdp-overlay.dtbo"},
            {"name": "sun-cdp-v8-overlay.dtbo"},
            {"name": "sun-mtp-kiwi-overlay.dtbo"},
            {"name": "sun-mtp-kiwi-v8-overlay.dtbo"},
            {"name": "sun-mtp-nfc-overlay.dtbo"},
            {"name": "sun-mtp-overlay.dtbo"},
            {"name": "sun-mtp-v8-overlay.dtbo"},
            {"name": "sun-qrd-sku1-overlay.dtbo"},
            {"name": "sun-qrd-sku1-v8-overlay.dtbo"},
            {"name": "sun-qrd-sku2-v8-overlay.dtbo"},
            {"name": "sun-rcm-kiwi-overlay.dtbo"},
            {"name": "sun-rcm-kiwi-v8-overlay.dtbo"},
            {"name": "sun-rcm-overlay.dtbo"},
            {"name": "sun-rcm-v8-overlay.dtbo"},
            {"name": "sun-rumi-overlay.dtbo"},
        ],
    },
    "sun-tuivm": {
        "dtb_list": [
            # keep sorted
            {"name": "sun-oemvm-cdp.dtb"},
            {"name": "sun-oemvm-mtp.dtb"},
            {"name": "sun-oemvm-mtp-v8.dtb"},
            {"name": "sun-oemvm-qrd.dtb"},
            {"name": "sun-oemvm-rcm.dtb"},
            {"name": "sun-oemvm-rumi.dtb"},
            {"name": "sun-vm-cdp.dtb"},
            {"name": "sun-vm-mtp.dtb"},
            {"name": "sun-vm-mtp-v8.dtb"},
            {"name": "sun-vm-qrd.dtb"},
            {"name": "sun-vm-rcm.dtb"},
            {"name": "sun-vm-rumi.dtb"},
        ],
    },
    "sun-oemvm": {
        "dtb_list": [
            # keep sorted
            {"name": "sun-oemvm-cdp.dtb"},
            {"name": "sun-oemvm-mtp.dtb"},
            {"name": "sun-oemvm-mtp-v8.dtb"},
            {"name": "sun-oemvm-qrd.dtb"},
            {"name": "sun-oemvm-rcm.dtb"},
            {"name": "sun-oemvm-rumi.dtb"},
            {"name": "sun-vm-cdp.dtb"},
            {"name": "sun-vm-mtp.dtb"},
            {"name": "sun-vm-mtp-v8.dtb"},
            {"name": "sun-vm-qrd.dtb"},
            {"name": "sun-vm-rcm.dtb"},
            {"name": "sun-vm-rumi.dtb"},
        ],
    },
    "pineapple": {
        "dtb_list": [
            {"name": "pineapple.dtb"},
            {"name": "pineapple-v2.dtb"},
            {
                "name": "pineapplep.dtb",
                "apq": True,
            },
            {
                "name": "pineapplep-v2.dtb",
                "apq": True,
            },
        ],
        "dtbo_list": [
            {"name": "pineapple-atp-overlay.dtbo"},
            {"name": "pineapple-cdp-nfc-overlay.dtbo"},
            {"name": "pineapple-cdp-overlay.dtbo"},
            {"name": "pineapple-mtp-nfc-overlay.dtbo"},
            {"name": "pineapple-mtp-overlay.dtbo"},
            {"name": "pineapple-qrd-overlay.dtbo"},
            {"name": "pineapple-rcm-overlay.dtbo"},
            {
                "name": "pineapple-rumi-overlay.dtbo",
                "apq": False,
            },
        ],
    },
    "pineapple-tuivm": {
        "dtb_list": [
            {"name": "pineapple-oemvm-cdp.dtb"},
            {"name": "pineapple-oemvm-mtp.dtb"},
            {"name": "pineapple-oemvm-qrd.dtb"},
            {"name": "pineapple-oemvm-rumi.dtb"},
            {"name": "pineapple-vm-cdp.dtb"},
            {"name": "pineapple-vm-mtp.dtb"},
            {"name": "pineapple-vm-qrd.dtb"},
            {"name": "pineapple-vm-rumi.dtb"},
        ],
    },
    "pineapple-oemvm": {
        "dtb_list": [
            {"name": "pineapple-oemvm-cdp.dtb"},
            {"name": "pineapple-oemvm-mtp.dtb"},
            {"name": "pineapple-oemvm-qrd.dtb"},
            {"name": "pineapple-oemvm-rumi.dtb"},
            {"name": "pineapple-vm-cdp.dtb"},
            {"name": "pineapple-vm-mtp.dtb"},
            {"name": "pineapple-vm-qrd.dtb"},
            {"name": "pineapple-vm-rumi.dtb"},
        ],
    },
}

def _get_dtb_lists(target, dt_overlay_supported):
    if not target in _platform_map:
        fail("{} not in device tree platform map!".format(target))

    ret = {
        "dtb_list": [],
        "dtbo_list": [],
    }

    for dtb_node in [target] + _platform_map[target].get("binary_compatible_with", []):
        ret["dtb_list"].extend(_platform_map[dtb_node].get("dtb_list", []))
        if dt_overlay_supported:
            ret["dtbo_list"].extend(_platform_map[dtb_node].get("dtbo_list", []))
        else:
            # Translate the dtbo list into dtbs we can append to main dtb_list
            for dtb in _platform_map[dtb_node].get("dtb_list", []):
                dtb_base = dtb["name"].replace(".dtb", "")
                for dtbo in _platform_map[dtb_node].get("dtbo_list", []):
                    if not dtbo.get("apq", True) and dtb.get("apq", False):
                        continue

                    dtbo_base = dtbo["name"].replace(".dtbo", "")
                    ret["dtb_list"].append({"name": "{}-{}.dtb".format(dtb_base, dtbo_base)})

    return ret

def get_dtb_list(target, dt_overlay_supported = True):
    return [dtb["name"] for dtb in _get_dtb_lists(target, dt_overlay_supported).get("dtb_list", [])]

def get_dtbo_list(target, dt_overlay_supported = True):
    return [dtb["name"] for dtb in _get_dtb_lists(target, dt_overlay_supported).get("dtbo_list", [])]
