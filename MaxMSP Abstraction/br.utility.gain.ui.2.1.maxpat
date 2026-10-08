{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 0,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            85.0,
            104.0,
            900.0,
            413.0
        ],
        "bglocked": 0,
        "openinpresentation": 1,
        "default_fontsize": 12.0,
        "default_fontface": 0,
        "default_fontname": "Arial",
        "gridonopen": 1,
        "gridsize": [
            15.0,
            15.0
        ],
        "gridsnaponopen": 1,
        "objectsnaponopen": 1,
        "statusbarvisible": 2,
        "toolbarvisible": 1,
        "lefttoolbarpinned": 0,
        "toptoolbarpinned": 0,
        "righttoolbarpinned": 0,
        "bottomtoolbarpinned": 0,
        "toolbars_unpinned_last_save": 0,
        "tallnewobj": 0,
        "boxanimatetime": 200,
        "enablehscroll": 1,
        "enablevscroll": 1,
        "devicewidth": 58.0,
        "description": "br.utility.gain.ui.2.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "digest": "",
        "tags": "",
        "style": "",
        "subpatcher_template": "",
        "assistshowspatchername": 0,
        "boxes": [
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-signature",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        520.0,
                        15.0,
                        360.0,
                        33.0
                    ],
                    "text": "br.utility.gain.ui.2.1 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-in1",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        15.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Audio In (Signal)",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-in2",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Gain (Float) dB -72. to 35. -72 = silent, 0 = unchanged. Sets the dial. Default 0",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "annotation": "dB, -72 = silent, 0 = unchanged (12 o'clock), up to +35. Default 0",
                    "annotation_name": "Gain",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-gain",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        165.0,
                        60.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        7.0,
                        6.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 0.57,
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Gain",
                            "parameter_mmax": 35.0,
                            "parameter_mmin": -72.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Gain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "Gain"
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-core",
                    "text": "br.utility.gain.2.1",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        ""
                    ],
                    "patching_rect": [
                        15.0,
                        130.0,
                        170.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "outlet",
                    "id": "obj-out1",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        180.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Audio Out (Signal)",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-t1",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        260.0,
                        55.0,
                        240.0,
                        89.0
                    ],
                    "text": "The Gain dial (live.dial) works in dB. Open the inspector to see its settings: Initial Value 0 means every load starts at unchanged volume, and Exponent 0.57 puts 0 dB at 12 o'clock (more room for fine moves near unity).",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-t2",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        260.0,
                        150.0,
                        240.0,
                        75.0
                    ],
                    "text": "[br.utility.gain.2.1] is the real object: open it to see the gen~ inside. This file only adds the dial, so you can also patch the core directly and drive its gain inlet with a signal (an LFO for tremolo).",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-t3",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        235.0,
                        480.0,
                        47.0
                    ],
                    "text": "dB vs amplitude: 0 dB = x1 (unchanged), -6 dB = about half, +6 dB = about double, and every -20 dB divides by 10. The bottom (-72) is treated as silence. The core glides between values over 10 ms, too fast to hear as a fade, so moving the dial never clicks.",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-t4",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        290.0,
                        480.0,
                        33.0
                    ],
                    "text": "A number into the right inlet moves the dial, and the dial drives the core, so the screen always shows what you hear.",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "annotation": "br.utility.gain.ui.2.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "background": 1,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "hint": "br.utility.gain.ui.2.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "id": "obj-panel",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        520.0,
                        60.0,
                        80.0,
                        80.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        80.0,
                        90.0
                    ],
                    "proportion": 0.5,
                    "rounded": 7
                }
            },
            {
                "box": {
                    "maxclass": "outlet",
                    "id": "obj-1",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        90.0,
                        180.0,
                        30.0,
                        30.0
                    ],
                    "comment": "State (Message): gain <dB> (e.g. gain -6.), sent the moment the gain changes. Numbers only (a signal is not reported). Pick it out by name: [route gain]"
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-2",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        333.0,
                        480.0,
                        47.0
                    ],
                    "text": "The last outlet (State) reports the dial as gain <dB> (e.g. gain -6.) the moment it changes. It comes from the core, so turning the dial, numbers into the inlet and preset recalls all show up. Pick it out by name with [route gain].",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-in1",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in2",
                        0
                    ],
                    "destination": [
                        "obj-gain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gain",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
                        0
                    ],
                    "destination": [
                        "obj-out1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
                        1
                    ],
                    "destination": [
                        "obj-1",
                        0
                    ]
                }
            }
        ],
        "dependency_cache": [],
        "autosave": 0,
        "openrect": [
            85.0,
            104.0,
            58.0,
            64.0
        ],
        "parameters": {
            "obj-gain": [
                "Gain",
                "Gain",
                0
            ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ],
                    "buttons": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ]
                }
            },
            "inherited_shortname": 1
        }
    }
}