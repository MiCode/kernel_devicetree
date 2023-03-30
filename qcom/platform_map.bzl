_platform_map = {
    "autogvm": {
        "dtb_list": [
            # keep sorted
            {"name": "direwolf-vm-la.dtb"},
            {"name": "lemans-vm-la.dtb"},
            {"name": "sa8195-vm-la.dtb"},
        ],
        "dtbo_list": [
            # keep sorted
            {"name":"direwolf-vm-la-overlay.dtbo"},
            {"name": "lemans-vm-la-overlay.dtbo"},
            {"name": "sa8195-vm-la-overlay.dtbo"},
        ],
    },
    "gen3auto": {
        "dtb_list": [
            # keep sorted
            {"name": "sa8155.dtb"},
            {"name": "sa8155p.dtb"},
            {"name": "sa8155-v2.dtb"},
            {"name": "sa8155p-v2.dtb"},
        ],
        "dtbo_list": [
            # keep sorted
            {"name": "sa8155-adp-air-overlay.dtbo"},
            {"name": "sa8155-adp-star-overlay.dtbo"},
            {"name": "sa8155p-adp-air-overlay.dtbo"},
            {"name": "sa8155p-adp-star-overlay.dtbo"},
        ],
    },
    "kalama": {
        "dtb_list": [
            {"name": "kalama.dtb"},
            {"name": "kalama-v2.dtb"},
            {
                "name": "kalamap.dtb",
                "apq": True,
            },
            {
                "name": "kalamap-v2.dtb",
                "apq": True,
            },
        ],
        "dtbo_list": [
            {"name": "kalama-atp-overlay.dtbo"},
            {"name": "kalama-cdp-nfc-overlay.dtbo"},
            {"name": "kalama-cdp-overlay.dtbo"},
            {"name": "kalama-cdp-wsa883x-overlay.dtbo"},
            {"name": "kalama-mtp-nfc-overlay.dtbo"},
            {"name": "kalama-mtp-overlay.dtbo"},
            {"name": "kalama-qrd-overlay.dtbo"},
            {"name": "kalama-rcm-overlay.dtbo"},
            {
                "name": "kalama-rumi-overlay.dtbo",
                "apq": False,
            }
        ],
    },
    "kalama-tuivm": {
        "dtb_list": [
            {"name": "kalama-oemvm-cdp.dtb"},
            {"name": "kalama-oemvm-mtp.dtb"},
            {"name": "kalama-oemvm-qrd.dtb"},
            {"name": "kalama-oemvm-rumi.dtb"},
            {"name": "kalama-vm-cdp.dtb"},
            {"name": "kalama-vm-mtp.dtb"},
            {"name": "kalama-vm-qrd.dtb"},
            {"name": "kalama-vm-rumi.dtb"},
        ],
    },
    "kalama-oemvm": {
        "dtb_list": [
            {"name": "kalama-oemvm-cdp.dtb"},
            {"name": "kalama-oemvm-mtp.dtb"},
            {"name": "kalama-oemvm-qrd.dtb"},
            {"name": "kalama-oemvm-rumi.dtb"},
            {"name": "kalama-vm-cdp.dtb"},
            {"name": "kalama-vm-mtp.dtb"},
            {"name": "kalama-vm-qrd.dtb"},
            {"name": "kalama-vm-rumi.dtb"},
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

def get_dtb_list(target, dt_overlay_supported=True):
    return [dtb["name"] for dtb in _get_dtb_lists(target, dt_overlay_supported).get("dtb_list", [])]

def get_dtbo_list(target, dt_overlay_supported=True):
    return [dtb["name"] for dtb in _get_dtb_lists(target, dt_overlay_supported).get("dtbo_list", [])]
