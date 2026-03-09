arch_platform_map = {
    "autogvm": {
        "dtb_list": [
            # keep sorted
            {"name": "lemans-vm-la.dtb"},
            {"name": "lemans-vm-lv-mt.dtb"},
            {"name": "sa8797p-gunyah-vm-qam.dtb"},
            {"name": "monaco-vm-la.dtb"},
            {"name": "monaco-vm-lv-mt.dtb"},
            {"name": "monaco-vm-flex-lv-mt.dtb"},
            {"name": "sa8797p-sdp8-vm-la.dtb"},
        ],
        "dtbo_list": [
            # keep sorted
            {"name": "lemans-vm-la-overlay.dtbo"},
            {"name": "lemans-vm-lv-mt-overlay.dtbo"},
            {"name": "sa8797p-gunyah-vm-qam-overlay.dtbo"},
            {"name": "monaco-vm-la-overlay.dtbo"},
            {"name": "monaco-vm-lv-mt-overlay.dtbo"},
            {"name": "monaco-vm-flex-lv-mt-overlay.dtbo"},
            {"name": "sa8797p-sdp8-vm-la-overlay.dtbo"},
        ],
    },
    "canoe": {
        "dtb_list": [
            # keep sorted
            {"name": "canoe.dtb"},
            {
                "name": "canoep.dtb",
                "apq": True,
            },
            {
                "name": "canoep-tp.dtb",
                "apq": True,
            },
            {
                "name": "canoep-tp-v2.dtb",
                "apq": True,
            },
            {
                "name": "canoep-v2.dtb",
                "apq": True,
            },
            {"name": "canoe-tp.dtb"},
            {"name": "canoe-tp-v2.dtb"},
            {"name": "canoe-v2.dtb"},
        ],
        "dtbo_list": [
            # keep sorted
            {"name": "canoe-atp-overlay.dtbo"},
            {"name": "canoe-cdp-kiwi-overlay.dtbo"},
            {"name": "canoe-cdp-overlay.dtbo"},
            {"name": "canoe-cdp-st54l-pandeiro-i2s-overlay.dtbo"},
            {"name": "canoe-cdp-st54l-pandeiro-overlay.dtbo"},
            {"name": "canoe-mtp-3.5mm-overlay.dtbo"},
            {"name": "canoe-mtp-kiwi-overlay.dtbo"},
            {"name": "canoe-mtp-mango-overlay.dtbo"},
            {"name": "canoe-mtp-overlay.dtbo"},
            {"name": "canoe-mtp-pdm-mic-overlay.dtbo"},
            {"name": "canoe-mtp-pictor-overlay.dtbo"},
            {"name": "canoe-mtp-qmp1000-overlay.dtbo"},
            {"name": "canoe-mtp-st54l-pandeiro-overlay.dtbo"},
            {"name": "canoe-qrd-st54l-kundu-overlay.dtbo"},
            {"name": "canoe-qrd-st54l-pandeiro-overlay.dtbo"},
            {"name": "canoe-rcm-kiwi-overlay.dtbo"},
            {"name": "canoe-rcm-overlay.dtbo"},
            {"name": "canoe-rcm-st54l-pandeiro-overlay.dtbo"},
            {"name": "canoep-hdk-overlay.dtbo"},
            {"name": "canoe-rumi-overlay.dtbo"},
        ],
        "binary_compatible_with": ["alor", "alor-interposer", "chora", "malabar"],
    },
    "alor": {
        "dtb_list": [
            # keep sorted
            {"name": "alor.dtb"},
        ],
        "dtbo_list": [
            # keep sorted
            {"name": "alor-atp-overlay.dtbo"},
            {"name": "alor-cdp-overlay.dtbo"},
            {"name": "alor-cdp-peach-overlay.dtbo"},
            {"name": "alor-mtp-overlay.dtbo"},
            {"name": "alor-mtp-pm7550ba-smb1398-overlay.dtbo"},
            {"name": "alor-mtp-pmih010x-smb1398-overlay.dtbo"},
            {"name": "alor-rcm-overlay.dtbo"},
            {"name": "alor-rcm-peach-overlay.dtbo"},
            {"name": "alor-qrd-overlay.dtbo"},
            {"name": "alor-qrd-peach-overlay.dtbo"},
            {"name": "alor-qrd-ufcs-overlay.dtbo"},
            {"name": "alor-rumi-overlay.dtbo"},
        ],
    },
    "alor-interposer": {
        "dtb_list": [
            # keep sorted
            {"name": "alor-interposer.dtb"},
            {"name": "alor-interposer-v2.dtb"},
        ],
        "dtbo_list": [
            # keep sorted
            {"name": "alor-interposer-mtp-overlay.dtbo"},
            {"name": "alor-interposer-rcm-overlay.dtbo"},
            {"name": "alor-interposer-qrd-st54l-pandeiro-overlay.dtbo"},
        ],
    },
    "chora": {
        "dtb_list": [
            # keep sorted
            {"name": "chora.dtb"},
        ],
        "dtbo_list": [
            # keep sorted
            {"name": "chora-rumi-overlay.dtbo"},
        ],
    },
    "malabar": {
        "dtb_list": [
            {"name": "malabar.dtb"},
        ],
        "dtbo_list": [
            {
                "name": "malabar-rumi-overlay.dtbo",
                "apq": False,
            },
        ],
    },
    "lahaina": {
        "dtb_list": [
            {"name": "yupik-iot.dtb"},
            {"name": "katmai.dtb"},
            {"name": "katmai-fp2.dtb"},
            {"name": "katmai-fp3.dtb"},
            {"name": "katmai-fp2p5.dtb"},
            {
                "name": "yupikp-iot.dtb",
                "apq": True,
            },
            {
                "name": "katmaip.dtb",
                "apq": True,
            },
            {
                "name": "katmaip-fp2.dtb",
                "apq": True,
            },
            {
                "name": "katmaip-fp3.dtb",
                "apq": True,
            },
            {
                "name": "katmaip-fp2p5.dtb",
                "apq": True,
            },
        ],
        "dtbo_list": [
            # keep sorted
            {"name": "yupik-iot-idp-overlay.dtbo"},
            {"name": "yupik-iot-idp-pm7250b-overlay.dtbo"},
            {"name": "yupik-iot-qrd-overlay.dtbo"},
            {"name": "yupik-iot-hsp-overlay.dtbo"},
            {"name": "yupik-iot-hsp-pm7250b-overlay.dtbo"},
            {"name": "yupik-iot-idps-amoled-overlay.dtbo"},
            {"name": "katmai-hsp-overlay.dtbo"},
            {"name": "katmai-hsp-pm7250b-overlay.dtbo"},
            {"name": "katmai-fp2-hsp-overlay.dtbo"},
            {"name": "katmai-fp2-hsp-pm7250b-overlay.dtbo"},
            {"name": "katmai-fp2p5-hsp-overlay.dtbo"},
            {"name": "katmai-fp2p5-hsp-pm7250b-overlay.dtbo"},
            {"name": "katmai-fp3-hsp-overlay.dtbo"},
            {"name": "katmai-fp3-hsp-pm7250b-overlay.dtbo"},
            {"name": "yupikp-iot-idp-overlay.dtbo"},
            {"name": "yupikp-iot-idp-pm7250b-overlay.dtbo"},
            {"name": "yupikp-iot-qrd-overlay.dtbo"},
            {"name": "yupikp-iot-hsp-overlay.dtbo"},
            {"name": "yupikp-iot-hsp-pm7250b-overlay.dtbo"},
            {"name": "yupikp-iot-idps-amoled-overlay.dtbo"},
            {"name": "katmaip-hsp-overlay.dtbo"},
            {"name": "katmaip-hsp-pm7250b-overlay.dtbo"},
            {"name": "katmaip-fp2-hsp-overlay.dtbo"},
            {"name": "katmaip-fp2-hsp-pm7250b-overlay.dtbo"},
            {"name": "katmaip-fp2p5-hsp-overlay.dtbo"},
            {"name": "katmaip-fp2p5-hsp-pm7250b-overlay.dtbo"},
            {"name": "katmaip-fp3-hsp-overlay.dtbo"},
            {"name": "katmaip-fp3-hsp-pm7250b-overlay.dtbo"},
        ],
    },
    "x1p42100": {
        "dtb_list": [
            {"name": "x1p42100.dtb"},
        ],
        "dtbo_list": [
            {"name": "x1p42100-crd-overlay.dtbo"},
        ],
    },
    "canoe-tuivm": {
        "dtb_list": [
            # keep sorted
            {"name": "alor-interposer-oemvm-mtp.dtb"},
            {"name": "alor-interposer-oemvm-qrd.dtb"},
            {"name": "alor-interposer-oemvm-rcm.dtb"},
            {"name": "alor-interposer-vm-mtp.dtb"},
            {"name": "alor-interposer-vm-qrd.dtb"},
            {"name": "alor-interposer-vm-rcm.dtb"},
            {"name": "canoe-oemvm-base.dtb"},
            {"name": "canoe-oemvm-cdp.dtb"},
            {"name": "canoe-oemvm-mtp.dtb"},
            {"name": "canoe-oemvm-qrd.dtb"},
            {"name": "canoe-oemvm-rcm.dtb"},
            {"name": "canoep-oemvm-hdk.dtb"},
            {"name": "canoe-oemvm-rumi.dtb"},
            {"name": "canoe-vm-base.dtb"},
            {"name": "canoe-vm-cdp.dtb"},
            {"name": "canoe-vm-mtp.dtb"},
            {"name": "canoe-vm-qrd.dtb"},
            {"name": "canoe-vm-rcm.dtb"},
            {"name": "canoep-vm-hdk.dtb"},
            {"name": "canoe-vm-rumi.dtb"},
        ],
        "dtbo_list": [
            # keep sorted
            {"name": "canoe-vm-mtp-overlay.dtbo"},
            {"name": "canoe-vm-qrd-overlay.dtbo"},
            {"name": "canoe-vm-rcm-overlay.dtbo"},
            {"name": "canoe-vm-cdp-overlay.dtbo"},
            {"name": "alor-interposer-vm-mtp-overlay.dtbo"},
            {"name": "alor-interposer-vm-qrd-overlay.dtbo"},
            {"name": "alor-interposer-vm-rcm-overlay.dtbo"},
        ],
        "binary_compatible_with": ["alor-vm"],
    },
    "canoe-oemvm": {
        "dtb_list": [
            # keep sorted
            {"name": "alor-interposer-oemvm-mtp.dtb"},
            {"name": "alor-interposer-oemvm-qrd.dtb"},
            {"name": "alor-interposer-oemvm-rcm.dtb"},
            {"name": "alor-interposer-vm-mtp.dtb"},
            {"name": "alor-interposer-vm-qrd.dtb"},
            {"name": "alor-interposer-vm-rcm.dtb"},
            {"name": "canoe-oemvm-base.dtb"},
            {"name": "canoe-oemvm-cdp.dtb"},
            {"name": "canoe-oemvm-mtp.dtb"},
            {"name": "canoe-oemvm-qrd.dtb"},
            {"name": "canoe-oemvm-rcm.dtb"},
            {"name": "canoe-oemvm-rumi.dtb"},
            {"name": "canoep-oemvm-hdk.dtb"},
            {"name": "canoe-vm-base.dtb"},
            {"name": "canoe-vm-cdp.dtb"},
            {"name": "canoe-vm-mtp.dtb"},
            {"name": "canoe-vm-qrd.dtb"},
            {"name": "canoe-vm-rcm.dtb"},
            {"name": "canoe-vm-rumi.dtb"},
            {"name": "canoep-vm-hdk.dtb"},
        ],
        "dtbo_list": [
            # keep sorted
            {"name": "canoe-oemvm-mtp-overlay.dtbo"},
            {"name": "canoe-oemvm-qrd-overlay.dtbo"},
            {"name": "canoe-oemvm-rcm-overlay.dtbo"},
            {"name": "canoe-oemvm-cdp-overlay.dtbo"},
            {"name": "alor-interposer-oemvm-mtp-overlay.dtbo"},
            {"name": "alor-interposer-oemvm-qrd-overlay.dtbo"},
            {"name": "alor-interposer-oemvm-rcm-overlay.dtbo"},
        ],
        "binary_compatible_with": ["alor-oemvm"],
    },
    "alor-vm": {
        "dtbo_list": [
            # keep sorted
            {"name": "alor-vm-atp-overlay.dtbo"},
            {"name": "alor-vm-cdp-overlay.dtbo"},
            {"name": "alor-vm-mtp-overlay.dtbo"},
            {"name": "alor-vm-qrd-overlay.dtbo"},
            {"name": "alor-vm-rcm-overlay.dtbo"},
        ],
    },
    "alor-oemvm": {
        "dtbo_list": [
            # keep sorted
            {"name": "alor-oemvm-atp-overlay.dtbo"},
            {"name": "alor-oemvm-cdp-overlay.dtbo"},
            {"name": "alor-oemvm-mtp-overlay.dtbo"},
            {"name": "alor-oemvm-qrd-overlay.dtbo"},
            {"name": "alor-oemvm-rcm-overlay.dtbo"},
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
    "vienna": {
        "dtb_list": [
            # keep sorted
            {"name": "vienna.dtb"},
            {
                "name": "viennap.dtb",
                "apq": True,
            },
        ],
        "dtbo_list": [
            # keep sorted
            {"name": "vienna-atp-no-cam-overlay.dtbo"},
            {"name": "vienna-atp-overlay.dtbo"},
            {"name": "vienna-idp-no-cam-overlay.dtbo"},
            {"name": "vienna-idp-overlay.dtbo"},
            {"name": "vienna-rcm-no-cam-overlay.dtbo"},
            {"name": "vienna-rcm-overlay.dtbo"},
            {"name": "vienna-rumi-overlay.dtbo"},
            {"name": "vienna-wdp-no-cam-overlay.dtbo"},
            {"name": "vienna-wdp-ddsip-overlay.dtbo"},
            {"name": "vienna-wdp-overlay.dtbo"},
            {"name": "vienna-wrd-no-cam-overlay.dtbo"},
            {"name": "vienna-wrd-ddsip-overlay.dtbo"},
            {"name": "vienna-wrd-overlay.dtbo"},
        ],
    },
}

device_platform_map = {
    "haotian": {
        "arch" : "sun",
        "dtbo_list": [
            {
                "name": "haotian-sm8750-overlay.dtbo",
            },
        ],
    },
    "popsicle": {
        "arch" : "canoe",
        "dtbo_list": [
            {
                "name": "popsicle-sm8850-overlay.dtbo",
            },
        ],
    },
    "pandora": {
        "arch" : "canoe",
        "dtbo_list": [
            {
                "name": "pandora-sm8850-overlay.dtbo",
            },
        ],
    },
    "pudding": {
        "arch" : "canoe",
        "dtbo_list": [
            {
                "name": "pudding-sm8850-overlay.dtbo",
            },
        ],
    },
}

def create_map_from_arch(arch):
    ret = dict()
    for k,v in arch.items():
        ret[k] = dict(v, arch=k)
    return ret

def create_platform_map(target):
    #platform_map = create_map_from_arch(arch_platform_map)
    the_map = dict()
    for t in device_platform_map.keys():
        arch = device_platform_map[t].get("arch")
        dtb = arch_platform_map[arch].get("dtb_list")
        the_map.update({t: dict(device_platform_map[t], dtb_list=dtb)})
    platform_map = dict(the_map)
    platform_map.update(create_map_from_arch(arch_platform_map))
    if not target in platform_map:
        fail("{} not in device tree platform map!".format(target))
    return platform_map

def _get_dtb_lists(target, dt_overlay_supported):

    _platform_map = create_platform_map(target)

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
