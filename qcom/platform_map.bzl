_platform_map = {
    "sdxkova": {
        "dtb_list": [
            # keep sorted
            {"name": "sdxkova-idp-cpe.dtb"},
            {"name": "sdxkova-idp-m2.dtb"},
            {"name": "sdxkova-idp-mbb.dtb"},
        ],
        "dtbo_list": [
            # keep sorted
        ],
    },
    "sun": {
        "dtb_list": [
            # keep sorted
            {"name": "sun.dtb"},
            {
                "name": "sunp.dtb",
                "apq": True,
            },
            {
                "name": "sunp-v2.dtb",
                "apq": True,
            },
            {"name": "sun-v2.dtb"},
            {"name": "sun-tp.dtb"},
            {"name": "sun-tp-v2.dtb"},
            {
                "name": "sunp-tp.dtb",
                "apq": True,
            },
            {
                "name": "sunp-tp-v2.dtb",
                "apq": True,
            },
        ],
        "dtbo_list": [
            # keep sorted
            {"name": "sun-atp-overlay.dtbo"},
            {"name": "sun-cdp-kiwi-overlay.dtbo"},
            {"name": "sun-cdp-kiwi-v8-overlay.dtbo"},
            {"name": "sun-cdp-nfc-overlay.dtbo"},
            {"name": "sun-cdp-no-display-overlay.dtbo"},
            {"name": "sun-cdp-overlay.dtbo"},
            {"name": "sun-cdp-v8-overlay.dtbo"},
            {"name": "sun-mtp-3.5mm-kiwi-v8-overlay.dtbo"},
            {"name": "sun-mtp-3.5mm-overlay.dtbo"},
            {"name": "sun-mtp-kiwi-overlay.dtbo"},
            {"name": "sun-mtp-kiwi-v8-overlay.dtbo"},
            {"name": "sun-mtp-nfc-overlay.dtbo"},
            {"name": "sun-mtp-overlay.dtbo"},
            {"name": "sun-mtp-qmp1000-overlay.dtbo"},
            {"name": "sun-mtp-qmp1000-v8-overlay.dtbo"},
            {"name": "sun-mtp-v8-overlay.dtbo"},
            {"name": "sun-qrd-sku1-overlay.dtbo"},
            {"name": "sun-qrd-sku1-v8-overlay.dtbo"},
            {"name": "sun-qrd-sku2-v8-overlay.dtbo"},
            {"name": "sun-rcm-kiwi-overlay.dtbo"},
            {"name": "sun-rcm-kiwi-v8-overlay.dtbo"},
            {"name": "sun-rcm-overlay.dtbo"},
            {"name": "sun-rcm-v8-overlay.dtbo"},
            {"name": "sunp-hdk-overlay.dtbo"},
            {"name": "sun-rumi-overlay.dtbo"},
        ],
        "binary_compatible_with": ["tuna", "kera"],
    },
    "tuna": {
        "dtb_list": [
            {"name": "tuna.dtb"},
        ],
        "dtbo_list": [
            {
                "name": "tuna-rumi-overlay.dtbo",
                "apq": False,
            },
        ],
    },
    "kera": {
        "dtb_list": [
            {"name": "kera.dtb"},
        ],
        "dtbo_list": [
            {
                "name": "kera-rumi-overlay.dtbo",
                "apq": False,
            },
        ],
    },
    "miro": {
        "dtb_list": [
            # keep sorted
            {"name": "sun.dtb"},
            {
                "name": "sunp.dtb",
                "apq": True,
            },
            {
                "name": "sunp-v2.dtb",
                "apq": True,
            },
            {"name": "sun-v2.dtb"},
            {"name": "sun-tp.dtb"},
            {"name": "sun-tp-v2.dtb"},
            {
                "name": "sunp-tp.dtb",
                "apq": True,
            },
            {
                "name": "sunp-tp-v2.dtb",
                "apq": True,
            },
        ],
        "dtbo_list": [
            # keep sorted
            {"name": "miro-sm8750-overlay.dtbo"},
        ],
    },
    "parrot-tuivm": {
        "dtb_list": [
            # keep sorted
            {"name": "parrot-vm-rumi.dtb"},
            {"name": "parrot-vm-atp.dtb"},
            {"name": "parrot-vm-idp.dtb"},
            {"name": "parrot-vm-idp-wcn3990.dtb"},
            {"name": "parrot-vm-idp-wcn3990-amoled-rcm.dtb"},
            {"name": "parrot-vm-idp-wcn6750-amoled.dtb"},
            {"name": "parrot-vm-idp-wcn6750-amoled-rcm.dtb"},
            {"name": "parrot-vm-qrd.dtb"},
            {"name": "parrot-vm-qrd-wcn6750.dtb"},
            {"name": "ravelin-vm-rumi.dtb"},
            {"name": "ravelin-vm-atp.dtb"},
            {"name": "ravelin-vm-idp.dtb"},
            {"name": "ravelin-vm-idp-wcn3988.dtb"},
            {"name": "ravelin-vm-idp-wcn3950-amoled-rcm.dtb"},
            {"name": "ravelin-vm-qrd.dtb"},
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
            {"name": "sunp-oemvm-hdk.dtb"},
            {"name": "sun-oemvm-rumi.dtb"},
            {"name": "sun-vm-cdp.dtb"},
            {"name": "sun-vm-mtp.dtb"},
            {"name": "sun-vm-mtp-v8.dtb"},
            {"name": "sun-vm-qrd.dtb"},
            {"name": "sun-vm-rcm.dtb"},
            {"name": "sunp-vm-hdk.dtb"},
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
            {"name": "sunp-oemvm-hdk.dtb"},
            {"name": "sun-oemvm-rumi.dtb"},
            {"name": "sun-vm-cdp.dtb"},
            {"name": "sun-vm-mtp.dtb"},
            {"name": "sun-vm-mtp-v8.dtb"},
            {"name": "sun-vm-qrd.dtb"},
            {"name": "sun-vm-rcm.dtb"},
            {"name": "sunp-vm-hdk.dtb"},
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
    "monaco": {
        "dtb_list": [
            {"name": "monaco.dtb"},
            {"name": "monacop.dtb"},
        ],
        "dtbo_list": [
            {"name": "monaco-idp-v1-overlay.dtbo"},
            {"name": "monaco-idp-v1.1-overlay.dtbo"},
            {"name": "monaco-standalone-idp-v1-overlay.dtbo"},
            {"name": "monaco-idp-v2-overlay.dtbo"},
            {"name": "monaco-standalone-idp-v2-overlay.dtbo"},
            {"name": "monaco-idp-v3-overlay.dtbo"},
            {"name": "monaco-standalone-idp-v3-overlay.dtbo"},
            {"name": "monaco-wdp-v1-overlay.dtbo"},
            {"name": "monaco-wdp-v1.1-overlay.dtbo"},
            {"name": "monaco-standalone-wdp-v1-overlay.dtbo"},
            {"name": "monaco-atp-v1-overlay.dtbo"},
            {"name": "monaco-standalone-atp-v1-overlay.dtbo"},
        ],
    },
    "parrot": {
        "dtb_list": [
            # keep sorted
            {"name": "parrot.dtb"},
            {"name": "parrotp.dtb"},
            {"name": "parrot-sg.dtb"},
            {"name": "parrotp-sg.dtb"},
            {"name": "parrot-4gb.dtb"},
            {"name": "ravelin.dtb"},
            {"name": "ravelinp.dtb"},
            {"name": "ravelin-4gb.dtb"},
            {"name": "ravelinp-4gb.dtb"},
            {"name": "ravelin-sg.dtb"},
            {"name": "ravelinp-sg.dtb"},
        ],
        "dtbo_list": [
            # keep sorted
            {"name": "parrot-rumi-overlay.dtbo"},
            {"name": "parrot-atp-overlay.dtbo"},
            {"name": "parrot-idp-overlay.dtbo"},
            {"name": "parrot-idp-wcn3990-overlay.dtbo"},
            {"name": "parrot-idp-wcn3990-amoled-rcm-overlay.dtbo"},
            {"name": "parrot-idp-wcn6750-amoled-rcm-overlay.dtbo"},
            {"name": "parrot-idp-wcn6750-amoled-overlay.dtbo"},
            {"name": "parrot-idp-nopmi-overlay.dtbo"},
            {"name": "parrot-idp-pm8350b-overlay.dtbo"},
            {"name": "parrot-qrd-overlay.dtbo"},
            {"name": "parrot-qrd-wcn6750-overlay.dtbo"},
            {"name": "parrot-qrd-nopmi-overlay.dtbo"},
            {"name": "parrot-qrd-pm8350b-overlay.dtbo"},
            {"name": "parrot-idp-4gb-overlay.dtbo"},
            {"name": "parrot-idp-wcn3990-4gb-overlay.dtbo"},
            {"name": "parrot-idp-wcn3990-amoled-rcm-4gb-overlay.dtbo"},
            {"name": "parrot-idp-wcn6750-amoled-rcm-4gb-overlay.dtbo"},
            {"name": "parrot-idp-wcn6750-amoled-4gb-overlay.dtbo"},
            {"name": "parrot-qrd-4gb-overlay.dtbo"},
            {"name": "parrot-qrd-wcn6750-4gb-overlay.dtbo"},
            {"name": "parrot-idp-wcn6755-amoled-rcm-overlay.dtbo"},
            {"name": "parrot-idp-wcn6755-overlay.dtbo"},
            {"name": "parrot-qrd-wcn6755-overlay.dtbo"},
            {"name": "parrot-idp-wcn6755-pm8350b-overlay.dtbo"},
            {"name": "parrot-idp-wcn6755-nopmi-overlay.dtbo"},
            {"name": "ravelin-rumi-overlay.dtbo"},
            {"name": "ravelin-atp-overlay.dtbo"},
            {"name": "ravelin-idp-overlay.dtbo"},
            {"name": "ravelin-idp-wcn3950-amoled-rcm-overlay.dtbo"},
            {"name": "ravelin-qrd-overlay.dtbo"},
            {"name": "ravelin-idp-wcn3988-4gb-overlay.dtbo"},
            {"name": "ravelin-qrd-4gb-overlay.dtbo"},
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
