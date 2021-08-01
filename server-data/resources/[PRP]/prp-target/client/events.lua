Citizen.CreateThread(
    function()
        -------- Police --------

        AddBoxZone("duty_police", vector3(441.87, -981.92, 30.69), 0.9, 0.5, {
            name="duty_police",
            heading=0,
            minZ=30.49,
            maxZ=31.24
        }, {
            options = {
                {
                    event = "Police:duty",
                    icon = "far fa-clipboard",
                    label = "Sign On/Off Duty"
                },
            },
            job = {"all"},
            distance = 1.5
        })

        AddBoxZone("duty_police2", vector3(361.42, -1598.41, 29.29), 2.2, 1, {
            name="duty_police2",
            heading=320,
            minZ=28.29,
            maxZ=29.89
        }, {
            options = {
                {
                    event = "Police:duty",
                    icon = "far fa-clipboard",
                    label = "Sign On/Off Duty"
                },
            },
            job = {"all"},
            distance = 1.5
        })

        AddCircleZone("pdgarage", vector3(464.51, -1012.59, 28.43), 0.72, {
            name="pdgarage",
            debugPoly=false,
            useZ=true
            }, {
                options = {
                    {
                        event = "police:buycrownvic",
                        icon = "fas fa-car",
                        label = "Buy Crown Vic $5000",
                    },
                    {
                        event = "police:buycharger",
                        icon = "fas fa-car",
                        label = "Buy Charger $180000",
                    },
                },
                job = {"police"},
                distance = 1.5
            })

        AddBoxZone("lspd_evidence",vector3(475.78, -993.94, 26.27), 0.8, 2, {
            name="lspd_evidence",
            heading=90,
            minZ=25.27,
            maxZ=27.62
        }, {
            options = {
                {
                    event = "evidence:general",
                    icon = "fas fa-trash",
                    label = "Trash Locker (Clears On Tsunami)"
                },
            },
            job = {"police"},
            distance = 1.5
        })


        AddBoxZone("lspd_armory", vector3(483.47, -994.7, 30.69), 7.2, 1, {
            name="lspd_armory",
            heading=90,
            minZ=29.49,
            maxZ=32.49
        }, {
            options = {
                {
                    event = "police:general",
                    icon = "fas fa-clipboard",
                    label = "PD Armory"
                },
            },
            job = {"police"},
            distance = 2.5
        })

        AddBoxZone("yo", vector3(1754.3, -1647.85, 112.66), 0.7, 0.5, {
            name="yo",
            heading=320,
            minZ=109.66,
            maxZ=113.66
        }, {
            options = {
                {
                    event = "ammo:shit",
                    icon = "fas fa-clipboard",
                    label = "Speak to Dealer!"
                },
            },
            job = {"all"},
            distance = 2.5
        })

        AddBoxZone("lspd_armory2", vector3(369.36, -1598.7, 29.29), 2.6, 1, {
            name="lspd_armory2",
            heading=50,
            minZ=29.09,
            maxZ=30.49
        }, {
            options = {
                {
                    event = "police:general",
                    icon = "fas fa-clipboard",
                    label = "Davis Armory     "
                },
                {
                    event = "evidence:general",
                    icon = "fas fa-trash",
                    label = "Trash Locker"
                },
                {
                    event = "serial:search",
                    icon = "fas fa-hand-holding",
                    label = "Search Weapon Serial"
                },
            },
            job = {"police"},
            distance = 2.5
        })


        AddBoxZone("serial_search", vector3(485.5, -989.33, 30.69), 0.5, 0.5, {
            name="serial_search",
            heading=290,
            minZ=30.69,
            maxZ=31.29
        }, {
            options = {
                {
                    event = "serial:search",
                    icon = "fas fa-hand-holding",
                    label = "Search Weapon Serial"
                },
            },
            job = {"police"},
            distance = 1.5
        })

        local doors = {
            "bodyshell"
        }

        AddTargetVehicle(doors,
            {
                options = {
                    {
                        event = "police:forceEnter",
                        icon = "fas fa-sign-in-alt",
                        label = "Seat Player!"
                    },
                    {
                        event = "unseatPlayer",
                        icon = "fas fa-sign-out-alt",
                        label = "Unseat Player!"
                    },
                    {
                        event = "keys:give",
                        icon = "fas fa-key",
                        label = "Give The Car Key!"
                    },
                    {
                        event = "FlipVehicle",
                        icon = "fas fa-undo",
                        label = "Flip the Vehicle!"
                    },
                    {
                        event = "clean:cleanvehicle",
                        icon = "fas fa-hand-sparkles",
                        label = "Clean the car!"
                    },
                    {
                        event = "veh:requestUpdate",
                        icon = "fas fa-wrench",
                        label = "Examine Internals!"
                    },
                },
                job = {"all"},
                distance = 1.5
            }
        )

        -- Sunrise Shiet
        
        AddBoxZone("sunrise_stash", vector3(-782.3, -212.13, 37.15), 1, 3.6, {
            name="sunrise_stash",
            heading=300,
            minZ=33.35,
            debugPoly = false,
            maxZ=37.35
        }, {
            options = {
                {
                    event = "open:storage",
                    parms = "sunrise_shop",
                    icon = "fas fa-box",
                    label = "Open Sunrise Auto's Stash",
                },
            },
            job = {"sunrise_shop"},
            distance = 3.5
        })

        AddBoxZone("sunrise_outside", vector3(-780.06, -210.93, 37.15), 1, 1.4, {
            name="sunrise_outside",
            heading=300,
            debugPoly=false,
            minZ=34.55,
            maxZ=38.55
        }, {
            options = {
                {
                    event = 'sunrise:outside',
                    icon = "fas fa-arrow-alt-circle-down",
                    label = "Go outside Sunrise Autos!"
                }
            },
            job = {"all"},
            distance = 5.0
        })

        AddBoxZone("sunrise_inside", vector3(-794.59, -198.63, 37.28), 1, 0.6, {
            name="sunrise_inside",
            heading=30,
            debugPoly=false,
            minZ=34.48,
            maxZ=38.48
        }, {
            options = {
                {
                    event = 'sunrise:inside',
                    icon = "fas fa-arrow-alt-circle-up",
                    label = "Go Inside Sunrise Autos!"
                }
            },
            job = {"all"},
            distance = 5.0
        })

        -- Digital Den
        
        AddBoxZone("digital_den_stash", vector3(1134.64, -466.63, 66.49), 1, 1.8, {
            name="digital_den_stash",
            heading=345,
            minZ=62.69,
            maxZ=66.69
        }, {
            options = {
                {
                    event = "open:storage",
                    parms = "digital_den",
                    icon = "fas fa-box",
                    label = "Open Digital Den Stash",
                },
            },
            job = {"digital_den"},
            distance = 1
        })

        AddBoxZone("digital_den_craft", vector3(1131.17, -466.99, 66.49), 0.7, 2.2, {
            name="digital_den_craft",
            heading=75,
            minZ=62.89,
            maxZ=66.89
        }, {
            options = {
                {
                    event = "digitaldens:craft",
                    parms = "digital_den",
                    icon = "fas fa-book",
                    label = "Open Digital Den Craft",
                },
            },
            job = {"digital_den"},
            distance = 1
        })
        


        local Payphones = {
            1158960338,
            -78626473,
           1281992692,
           -1058868155,
           -429560270,
           -2103798695,
            295857659,
           -1559354806
        }

        AddTargetModel(Payphones,
            {
                options = {
                    {
                        event = "payphone:ui",
                        icon = "fas fa-phone-square-alt",
                        label = "Make a call! (Anonymous)"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
            --dumpster--
        local Dumpster = {
            218085040,
   
        }

        AddTargetModel(Dumpster,
            {
                options = {
                    {
                        event = "prp-dumpster",
                        icon = "fas fa-trash-alt",
                        label = "Dumpster Dive"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )

        local Dumpster = {
            -58485588,
   
        }

        AddTargetModel(Dumpster,
            {
                options = {
                    {
                        event = "prp-dumpster2",
                        icon = "fas fa-trash-alt",
                        label = "Dumpster Dive"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )

        local Dumpster = {
            666561306,
   
        }

        AddTargetModel(Dumpster,
            {
                options = {
                    {
                        event = "prp-dumpster3",
                        icon = "fas fa-trash-alt",
                        label = "Dumpster Dive"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )

                    --boxes--
                    local Boxes = {
                        519908417,
               
                    }
            
                    AddTargetModel(Boxes,
                        {
                            options = {
                                {
                                    event = "prp-boxes",
                                    icon = "fas fa-box-open",
                                    label = "Search Box"
                                }
                            },
                            job = {"all"},
                            distance = 1.7
                        }
                    )
            
                    local Boxes = {
                        -2073573168,
               
                    }
            
                    AddTargetModel(Boxes,
                        {
                            options = {
                                {
                                    event = "prp-boxes2",
                                    icon = "fas fa-box-open",
                                    label = "Search Box"
                                }
                            },
                            job = {"all"},
                            distance = 1.7
                        }
                    )
            
                    local Boxes = {
                        -188983024,
                        -191836989,
                        51866064
               
                    }
            
                    AddTargetModel(Boxes,
                        {
                            options = {
                                {
                                    event = "prp-boxes3",
                                    icon = "fas fa-box-open",
                                    label = "Search Box"
                                }
                            },
                            job = {"all"},
                            distance = 1.7
                        }
                    )
        
        -------- EMS --------

        AddCircleZone(
            "emsdutys",
            vector3(310.22, -597.56, 43.28),
            0.2,
            {
                name = "emsdutys",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "emsduty",
                        icon = "far fa-clipboard",
                        label = "Sign On/Off Duty"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )

        AddCircleZone(
            "pillbox",
            vector3(306.54, -602.32, 43.53),
            1.11,
            {
                name = "pillbox",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "ems:general",
                        icon = "fas fa-shopping-basket",
                        label = "Use"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )

        -------- Check In --------

        AddCircleZone(
            "checkin",
            vector3(307.53, -595.28, 43.08),
            0.33,
            {
                name = "checkin",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "attempt:check-in",
                        icon = "fas fa-clipboard",
                        label = "Check into hospital"
                    },
                    {
                        event = "attempt:change:check-in",
                        icon = "fas fa-adjust",
                        label = "Disable/Enable Check-in (EMS USE)"
                    },
                    {
                        event = "pillbox:shop",
                        icon = "fas fa-shopping-basket",
                        label = "Pharmacy Shop"
                    }
                },
                job = {"all"},
                distance = 2.5
            }
        )

        -------- ATMS --------

        local atms = {
            -1126237515,
            506770882,
            -870868698,
            150237004,
            -239124254,
            -1364697528,
        }
        AddTargetModel(
            atms,
            {
                options = {
                    {
                        event = "bank:checkATM",
                        icon = "fas fa-credit-card",
                        label = "Use ATM"
                    }
                },
                job = {"all"},
                distance = 2
            }
        )

        -------- Vending Machines --------

        local food = {
            -654402915,
            -1034034125
        }
        local coffee = {
            690372739,
            -1318035530,
            -2015792788
        }
        local water = {
            1099892058
        }
        local soda = {
            1114264700,
            -504687826,
            992069095,
            -1741437518,
            -1317235795
        }
        AddTargetModel(
            food,
            {
                options = {
                    {
                        event = "shops:food",
                        icon = "fas fa-cookie-bite",
                        label = "Buy your self a nice snack!"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddTargetModel(
            coffee,
            {
                options = {
                    {
                        event = "shops:coffee",
                        icon = "fas fa-mug-hot",
                        label = "Make a nice cup of Coffee!"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddTargetModel(
            water,
            {
                options = {
                    {
                        event = "shops:water",
                        icon = "fas fa-tint",
                        label = "Drink a Refreshing Bottle Of Water!"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddTargetModel(
            soda,
            {
                options = {
                    {
                        event = "shops:soda",
                        icon = "fas fa-wine-bottle",
                        label = "Drink a Refreshing Can of Soda!"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )

        --------  General Stores --------
        AddCircleZone(
            "Store1",
            vector3(25.08, -1347.41, 29.5),
            0.55,
            {
                name = "Store1",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store1s",
            vector3(25.11, -1345.0, 29.5),
            0.55,
            {
                name = "Store1s",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store2",
            vector3(-706.7, -915.54, 19.22),
            0.55,
            {
                name = "Store2",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store2s",
            vector3(-706.68, -913.55, 19.22),
            0.55,
            {
                name = "Store2s",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store3",
            vector3(-1222.31, -907.74, 12.33),
            0.55,
            {
                name = "Store3",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store4",
            vector3(-47.22, -1757.5, 29.42),
            0.55,
            {
                name = "Store4",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store4s",
            vector3(-48.42, -1759.02, 29.42),
            0.55,
            {
                name = "Store4s",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store5",
            vector3(1134.9, -982.46, 46.42),
            0.55,
            {
                name = "Store5",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Use"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store6",
            vector3(1164.08, -322.73, 69.21),
            0.55,
            {
                name = "Store6",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store6s",
            vector3(1164.49, -324.74, 69.21),
            0.55,
            {
                name = "Store6s",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store7",
            vector3(373.12, 326.21, 103.57),
            0.55,
            {
                name = "Store7",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store7s",
            vector3(373.62, 328.58, 103.57),
            0.55,
            {
                name = "Store7s",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store8",
            vector3(-1820.68, 793.82, 138.14),
            0.55,
            {
                name = "Store8",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store8s",
            vector3(-1819.29, 792.38, 138.14),
            0.55,
            {
                name = "Store8s",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store9",
            vector3(-2967.1, 390.97, 15.04),
            0.55,
            {
                name = "Store9",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store10",
            vector3(-3039.1, 585.11, 7.91),
            0.55,
            {
                name = "Store10",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store10s",
            vector3(-3041.36, 584.35, 7.91),
            0.55,
            {
                name = "Store10s",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store11",
            vector3(-3242.17, 1000.57, 12.83),
            0.55,
            {
                name = "Store11",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store11s",
            vector3(-3244.56, 1000.69, 12.83),
            0.55,
            {
                name = "Store11s",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )

        AddCircleZone(
            "Store12",
            vector3(2557.28, 381.38, 108.62),
            0.55,
            {
                name = "Store12",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store12s",
            vector3(2554.88, 381.49, 108.62),
            0.55,
            {
                name = "Store12s",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store13",
            vector3(548.46, 2671.31, 42.16),
            0.55,
            {
                name = "Store13",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store13s",
            vector3(548.81, 2668.96, 42.16),
            0.55,
            {
                name = "Store13s",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store14",
            vector3(1165.89, 2710.13, 38.16),
            0.55,
            {
                name = "Store14",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store15",
            vector3(1393.04, 3605.85, 34.98),
            0.55,
            {
                name = "Store15",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store16",
            vector3(1960.62, 3740.19, 32.34),
            0.55,
            {
                name = "Store16",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store16s",
            vector3(1959.34, 3742.35, 32.34),
            0.55,
            {
                name = "Store16s",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store17",
            vector3(1696.83, 4924.53, 42.06),
            0.55,
            {
                name = "Store17",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store17s",
            vector3(1698.46, 4923.44, 42.06),
            0.55,
            {
                name = "Store17s",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store18",
            vector3(1728.38, 6414.87, 35.04),
            0.55,
            {
                name = "Store18",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "Store18s",
            vector3(1729.47, 6417.11, 35.04),
            0.55,
            {
                name = "Store18s",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )

        -------- Mega Mall --------

        local megamall = {
            [1] = -1453933154
        }

        AddTargetModel(
            megamall,
            {
                options = {
                    {
                        event = "toolshop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Tools"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )

        -------- Burger Shot --------

        AddBoxZone("burger_tray_1", vector3(-1195.29, -892.31, 14.0), 1.05, 1, {
            name="burger_tray_1",
            heading=35,
            
            minZ=13.8,
            maxZ=14.3
        }, {
            options = {
                {
                    event = "open:tray",
                    parms = "burger_shot_tray_1",
                    icon = "fas fa-hand-holding",
                    label = "Take the Items",
                },
            },
            job = {"all"},
            distance = 1.5
        })
        
        AddBoxZone("burger_tray_2", vector3(-1193.87, -894.38, 14.0), 0.5, 0.7, {
            name="burger_tray_2",
            heading=318,
            
            minZ=14.0,
            maxZ=14.4
        }, {
            options = {
                {
                    event = "open:tray",
                    parms = "burger_shot_tray_2",
                    icon = "fas fa-hand-holding",
                    label = "Take the Items",
                },
            },
            job = {"all"},
            distance = 1.5
        })
            

        AddBoxZone("burger_tray_3", vector3(-1193.88, -906.98, 14.0), 1, 1, {
            name="burger_tray_3",
            heading=350,
            
            minZ=13.2,
            maxZ=14.2
        }, {
            options = {
                {
                    event = "burgershot:get:receipt",
                    parms = "4",
                    icon = "fas fa-cash-register",
                    label = "Make Payment",
                },
                {
                    event = "open:tray",
                    parms = "burger_shot_tray_3",
                    icon = "fas fa-hand-holding",
                    label = "Take the Items",
                },
            },
            job = {"all"},
            distance = 3.5
        })

        AddBoxZone("burgershotcooker2 ", vector3(-1202.94, -897.38, 14.0), 1.7, 1, {
            name="burgershotcooker2 ",
            heading=34,
            
            minZ=13.0,
            maxZ=14.3
        }, {
            options = {
                {
                    event = "prp-burgershot:startprocess3",
                    icon = "fas fa-hamburger",
                    label = "Cook Burger",
                },
             },
             job = {"burger_shot"},
            distance = 2.5
        })

        AddBoxZone("burgershotcooker", vector3(-1200.54, -900.92, 14.0), 1.8, 1.0, {
            name="burgershotcooker",
            heading=34,
            
            minZ=13.0,
            maxZ=14.4
        }, {
            options = {
                {
                    event = "prp-burgershot:startprocess3",
                    icon = "fas fa-hamburger",
                    label = "Cook Burger",
                },
             },
             job = {"burger_shot"},
            distance = 2.5
        })
    
        AddBoxZone("burgershotfryer", vector3(-1202.01, -899.27, 14.0), 2.5, 1.5, {
            name="burgershotfryer",
            heading=35,
            
            minZ=13.0,
            maxZ=14.4
        }, {
            options = {
                {
                    event = "prp-burgershot:startfryer",
                    icon = "fas fa-utensils",
                    label = "Make Fries",
                },
             },
             job = {"burger_shot"},
            distance = 2.5
        })
            
        AddBoxZone("burgershotself", vector3(-1199.54, -895.52, 14.0), 2.2, 0.6, {
            name="burgershotself",
            heading=34,
            
            minZ=13.8,
            maxZ=14.8
        }, {
            options = {
                {
                    event = "prp-burgershot:makeshake",
                    icon = "fas fa-hand-holding",
                    label = "Make a Nice Cold Mike Shake",

                },
                {
                    event = "prp-burgershot:getcola",
                    icon = "fas fa-hand-holding",
                    label = "Make a Cup of Coca Cola",
                },
             },
             job = {"burger_shot"},
            distance = 2.5
        })

        AddBoxZone("burgershotself2", vector3(-1189.08, -905.28, 14.0), 1.15, 0.7, {
            name="burgershotself2",
            heading=33,
            
            minZ=13.8,
            maxZ=14.8
        }, {
            options = {
                {
                    event = "prp-burgershot:makeshake",
                    icon = "fas fa-hand-holding",
                    label = "Make a Nice Cold Mike Shake",

                },
                {
                    event = "prp-burgershot:getcola",
                    icon = "fas fa-hand-holding",
                    label = "Make a Cup of Coca Cola",
                },
             },
             job = {"burger_shot"},
            distance = 2.5
        })
    
        AddBoxZone("burgerfridge", vector3(-1203.71, -895.86, 14.0), 1.6, 1, {
            name="burgerfridge",
            heading=35,
            
            minZ=13.0,
            maxZ=15.6
        }, {
            options = {
                {
                    event = "open:storage",
                    parms = "burger_shot",
                    icon = "fas fa-search",
                    label = "Open Fridge",
                    
                },
                {
                    event = "burgershot:order",
                    icon = "fas fa-laptop",
                    label = "Order Ingredients!",
                },
             },
             job = {"burger_shot"},
            distance = 2.5
        })

        AddBoxZone("burgershotdisplay", vector3(-1197.78, -894.45, 14.0), 4.6, 1.2, {
            name="burgershotdisplay",
            heading=34,
            
            minZ=13.0,
            maxZ=14.8
        }, {
            options = {
                {
                    event = "open:storage",
                    parms = "burger_shot_front",
                    icon = "fas fa-hand-holding",
                    label = "Put the Food on the Rack!",

                },
             },
             job = {"burger_shot"},
            distance = 2.5
        })
    
    
        AddBoxZone("craftburger", vector3(-1197.57, -899.41, 14.0), 1.8, 0.7, {
            name="craftburger",
            heading=304,
            
            minZ=13.0,
            maxZ=14.4
        }, {
            options = {
                {
                    event = "burgershot:craft",
                    icon = "fas fa-hamburger",
                    label = "Make Burger",
                },
             },
             job = {"burger_shot"},
            distance = 3.5
        })
        
        AddBoxZone("burger_shot_register_1", vector3(-1196.01, -891.34, 14.0), 0.5, 0.4, {
            name="burger_shot_register_1",
            heading=125,
            minZ=14.0,
            maxZ=14.5
        }, {
            options = {
                {
                    event = "burgershot:get:receipt",
                    parms = "1",
                    icon = "fas fa-cash-register",
                    label = "Make Payment",
                },
                {
                    event = "burgershot:register",
                    parms = "1",
                    icon = "fas fa-credit-card",
                    label = "Charge Customer",
                },
             },
             job = {"all"},
            distance = 1.5
        })


        AddBoxZone("burger_shot_register_2", vector3(-1194.65, -893.3, 14.0), 0.6, 0.5, {
            name="burger_shot_register_2",
            heading=302,
            minZ=14.1,
            maxZ=14.5
        }, {
            options = {
                {
                    event = "burgershot:get:receipt",
                    parms = "2",
                    icon = "fas fa-cash-register",
                    label = "Make Payment",
                },
                {
                    event = "burgershot:register",
                    parms = "2",
                    icon = "fas fa-credit-card",
                    label = "Charge Customer",
                },
             },
             job = {"all"},
            distance = 1.5
        })

        AddBoxZone("burger_shot_register_3", vector3(-1193.39, -895.22, 14.0), 0.6, 0.4, {
            name="burger_shot_register_3",
            heading=125,
            minZ=14.0,
            maxZ=14.4
        }, {
            options = {
                {
                    event = "burgershot:get:receipt",
                    parms = "3",
                    icon = "fas fa-cash-register",
                    label = "Make Payment",
                },
                {
                    event = "burgershot:register",
                    parms = "3",
                    icon = "fas fa-credit-card",
                    label = "Charge Customer",
                },
             },
             job = {"all"},
            distance = 1.5
        })
        
        AddBoxZone("burger_shot_register_4", vector3(-1192.52, -906.65, 14.0), 0.5, 0.5, {
            name="burger_shot_register_4",
            heading=0,
            
            minZ=13.8,
            maxZ=14.2
        }, {
            options = {
                {
                    event = "burgershot:register",
                    parms = "4",
                    icon = "fas fa-credit-card",
                    label = "Charge Customer",
                },
             },
             job = {"burger_shot"},
            distance = 1.5
        })
        
        AddBoxZone("burger_shot_trade_receipts", vector3(-1192.01, -900.95, 14.0), 1.6, 1, {
            name="burger_shot_trade_receipts",
            heading=35,
            
            minZ=13.8,
            maxZ=14.6
        }, {
            options = {
                {
                    event = "burgershot:cash:in",
                    icon = "fas fa-cash-register",
                    label = "Cash in receipts",
                },
             },
             job = {"burger_shot"},
            distance = 1.5
        })
        -----Bahamas--


        AddBoxZone("bahamas_bar_tray_1", vector3(-1388.93, -614.32, 30.32), 1, 1, {
            name="bahamas_bar_tray_1",
            heading=25,
            minZ=28.92,
            maxZ=30.52
        }, {
            options = {
                {
                    event = "open:tray",
                    parms = "bahamas_bar_tray_1",
                    icon = "fas fa-hand-holding",
                    label = "Take the Items",
                },
            },
            job = {"all"},
            distance = 1.5
        })
            
        AddBoxZone("bahamas_bar_tray_2", vector3(-1390.6, -606.21, 30.32), 1, 1, {
            name="bahamas_bar_tray_2",
            heading=295,
            minZ=26.52,
            maxZ=30.52
        }, {
            options = {
                {
                    event = "open:tray",
                    parms = "bahamas_bar_tray_3",
                    icon = "fas fa-hand-holding",
                    label = "Take the Items",
                },
            },
            job = {"all"},
            distance = 1.5
        })

        AddBoxZone("bahamas_bar_register_1", vector3(-1388.98, -605.63, 30.32), 1.8, 1, {
            name="bahamas_bar_register_1",
            heading=5,
            minZ=27.12,
            maxZ=31.12
        }, {
            options = {
                {
                    event = "bahamas:get:receipt",
                    parms = "1",
                    icon = "fas fa-cash-register",
                    label = "Make Payment",
                },
                {
                    event = "bahamas:register",
                    parms = "1",
                    icon = "fas fa-credit-card",
                    label = "Charge Customer",
                },
             },
             job = {"all"},
            distance = 1.5
        })

        AddBoxZone("bahamas_bar_register_2", vector3(-1390.22, -614.87, 30.32), 2.0, 1, {
            name="bahamas_bar_register_2",
            heading=15,
            minZ=27.12,
            maxZ=31.12
        }, {
            options = {
                {
                    event = "bahamas:get:receipt",
                    parms = "3",
                    icon = "fas fa-cash-register",
                    label = "Make Payment",
                },
                {
                    event = "bahamas:register",
                    parms = "3",
                    icon = "fas fa-credit-card",
                    label = "Charge Customer",
                },
             },
             job = {"all"},
            distance = 1.5
        })
        
        AddBoxZone("bahamas_make_drink", vector3(-1390.54, -612.34, 30.32), 1, 1, {
            name="bahamas_make_drink",
            heading=0,
            minZ=28.72,
            maxZ=31.12
        }, {
            options = {
                {
                    event = "bahamas:make:drink",
                    icon = "fas fa-wine-glass-alt",
                    label = "Mix a drink!",
                },
            },
            job = {"bahamas_bar"},
            distance = 3.5
        })
        AddBoxZone("bahamas_make_drink2", vector3(-1389.35, -608.12, 30.32), 0.8, 1, {
            name="bahamas_make_drink2",
            heading=345,
            minZ=28.72,
            maxZ=30.92
        }, {
            options = {
                {
                    event = "bahamas:make:drink",
                    icon = "fas fa-wine-glass-alt",
                    label = "Mix a drink!",
                },
            },
            job = {"bahamas_bar"},
            distance = 3.5
        })
        
        AddBoxZone("bahamas_bar_trade_receipts", vector3(-1394.77, -609.68, 30.32), 2.0, 1, {
            name="bahamas_bar_trade_receipts",
            heading=235,
            minZ=27.32,
            maxZ=31.32
        }, {
            options = {
                {
                    event = "bahamas:cash:in",
                    icon = "fas fa-cash-register",
                    label = "Cash in receipts",
                },
             },
             job = {"bahamas_bar"},
            distance = 1.5
        })
        --weed store

        AddBoxZone("weedpicking", vector3(380.71, -812.2, 29.3), 6.0, 3, {
            name="weedpicking",
            debugPoly=false,
            heading=270,
            minZ=28.3,
            maxZ=29.7
        }, {
            options = {
                {
                    event = "prp-weedstore:startpicking",
                    icon = "fas fa-hand-holding-usd",
                    label = "Harvest Cherry",
                },
             },
             job = {"best_buds"},
            distance = 3.5
        })

        AddBoxZone("weedpacking", vector3(382.52, -817.46, 29.3), 2.2, 1, {
            name="weedpacking",
            debugPoly=false,
            heading=270,
            minZ=25.5,
            maxZ=29.5
        }, {
            options = {
                {
                    event = "prp-weedstore:startpacking",
                    icon = "fas fa-box-open",
                    label = "Pack it!",
                },
             },
             job = {"best_buds"},
            distance = 3.5
        })

        AddBoxZone("bestbuds_tingz", vector3(379.83, -819.61, 29.3), 0.6, 2, {
            name="bestbuds_tingz",
            debugPoly = false,
            heading=270,
            minZ=26.5,
            maxZ=30.5
        }, {
            options = {
                {
                    event = "weed:order",
                    icon = "fas fa-laptop",
                    label = "Order Products!",
                },
             },
             job = {"best_buds"},
            distance = 2.5
        })

        -- AddBoxZone("weed_cashier", vector3(380.24, -827.37, 29.3), 0.8, 1, {
        --     name="weed_cashier",
        --     heading=1,
        --     minZ=28.3,
        --     maxZ=29.7
        -- }, {
        --     options = {
        --         {
        --             event = "weedstore:get:receipt",
        --             parms = "1",
        --             icon = "fas fa-cash-register",
        --             label = "Make Payment",
        --         },
        --         {
        --             event = "weedstore:register",
        --             parms = "1",
        --             icon = "fas fa-credit-card",
        --             label = "Charge Customer",
        --         },
        --      },
        --      job = {"all"},
        --     distance = 1.5
        -- })
        

        AddBoxZone("weedstore_tray", vector3(378.2, -827.29, 29.3), 0.8, 1, {
            name="weedstore_tray",
            heading=0,
            minZ=25.5,
            maxZ=29.5
        }, {
            options = {
                {
                    event = "open:tray",
                    parms = "weed_tray",
                    icon = "fas fa-hand-holding",
                    label = "Take the Items",
                },
            },
            job = {"all"},
            distance = 1.5
        })

        -- AddBoxZone("weed_receipt", vector3(376.91, -824.49, 29.3), 0.8, 1, {
        --     name="weed_receipt",
        --     debugPoly = true,
        --     heading=0,
        --     minZ=25.3,
        --     maxZ=29.3
        -- }, {
        --     options = {
        --         {
        --             event = "weedstore:cash:in",
        --             icon = "fas fa-cash-register",
        --             label = "Cash in receipts",
        --         },
        --      },
        --      job = {"best_buds"},
        --     distance = 1.5
        -- })

        

        ---chicken job--
        AddBoxZone("skin_chicken", vector3(-95.27, 6207.54, 31.03), 1.0, 2, {
            name="skin_chicken",
            heading=135,
            
            minZ=27.83,
            maxZ=31.83
        }, {
            options = {
                {
                    event = "portionthechicken",
                    icon = "fas fa-utensils",
                    label = "Cut the chicken",
                },
             },
             job = {"all"},
            distance = 2.5
        })
        AddBoxZone("skin_chicken2", vector3(-99.42, 6205.62, 31.03), 1.6, 1, {
            name="skin_chicken2",
            heading=315,
            
            minZ=28.03,
            maxZ=32.03
        }, {
            options = {
                {
                    event = "portionthechicken",
                    icon = "fas fa-utensils",
                    label = "Cut the chicken",
                },
             },
             job = {"all"},
            distance = 2.5
        })
        AddBoxZone("skin_chicken3", vector3(-99.83, 6201.95, 31.03), 2.0, 1, {
            name="skin_chicken3",
            heading=315,
            
            minZ=28.23,
            maxZ=32.23
        }, {
            options = {
                {
                    event = "portionthechicken",
                    icon = "fas fa-utensils",
                    label = "Cut the chicken",
                },
             },
             job = {"all"},
            distance = 2.5
        })
        AddBoxZone("packaged_chicken", vector3(-103.57, 6208.6, 31.03), 15.0, 1, {
            name="packaged_chicken",
            heading=315,
            
            minZ=28.23,
            maxZ=32.63
        }, {
            options = {
                {
                    event = "packingchicken",
                    icon = "fas fa-utensils",
                    label = "Package Chicken",
                },
             },
             job = {"all"},
            distance = 2.5
        })

        AddBoxZone("weapon_shop_1", vector3(20.22, -1106.09, 29.8), 2, 2, {
            name="weapon_shop_1",
            heading=340,
            
            minZ=28.8,
            maxZ=30.8
        }, {
            options = {
                {
                    event = "weapon:general",
                    icon = "fas fa-wrench",
                    label = "Purchase Weapons"
                }
            },
            job = {"all"},
            distance = 1.5
        })


        AddBoxZone("weapon_shop_2", vector3(253.23, -48.21, 69.94), 2, 2, {
            name="weapon_shop_2",
            heading=340,
            
            minZ=68.94,
            maxZ=70.94
        }, {
            options = {
                {
                    event = "weapon:general",
                    icon = "fas fa-wrench",
                    label = "Purchase Weapons"
                }
            },
            job = {"all"},
            distance = 1.5
        })


        AddBoxZone("weapon_shop_3", vector3(-1305.11, -392.29, 36.7), 2.0, 2, {
            name="weapon_shop_3",
            heading=345,
            
            minZ=35.7,
            maxZ=37.7
        }, {
            options = {
                {
                    event = "weapon:general",
                    icon = "fas fa-wrench",
                    label = "Purchase Weapons"
                }
            },
            job = {"all"},
            distance = 1.5
        })


        AddBoxZone("weapon_shop_4", vector3(-664.26, -934.41, 21.83), 2.0, 1, {
            name="weapon_shop_4",
            heading=90,           
            minZ=20.83,
            maxZ=22.83
        }, {
            options = {
                {
                    event = "weapon:general",
                    icon = "fas fa-wrench",
                    label = "Purchase Weapons"
                }
            },
            job = {"all"},
            distance = 1.5
        })


        AddBoxZone("weapon_shop_4", vector3(-664.26, -934.41, 21.83), 2.0, 1, {
            name="weapon_shop_4",
            heading=90,            
            minZ=20.83,
            maxZ=22.83
        }, {
            options = {
                {
                    event = "weapon:general",
                    icon = "fas fa-wrench",
                    label = "Purchase Weapons"
                }
            },
            job = {"all"},
            distance = 1.5
        })


        AddBoxZone("weapon_shop_5", vector3(844.4, -1034.54, 28.19), 2.0, 1, {
            name="weapon_shop_5",
            heading=90,
            
            minZ=27.19,
            maxZ=28.99
        }, {
            options = {
                {
                    event = "weapon:general",
                    icon = "fas fa-wrench",
                    label = "Purchase Weapons"
                }
            },
            job = {"all"},
            distance = 1.5
        })

        AddBoxZone("weapon_shop_6", vector3(812.24, -2158.1, 29.62), 1.8, 1, {
            name="weapon_shop_6",
            heading=90,
            
            minZ=28.62,
            maxZ=30.42
        }, {
            options = {
                {
                    event = "weapon:general",
                    icon = "fas fa-wrench",
                    label = "Purchase Weapons"
                }
            },
            job = {"all"},
            distance = 1.5
        })


        AddBoxZone("weapon_shop_7", vector3(2569.96, 293.18, 108.73), 1.8, 1, {
            name="weapon_shop_7",
            heading=90,
            
            minZ=107.73,
            maxZ=109.53
        }, {
            options = {
                {
                    event = "weapon:general",
                    icon = "fas fa-wrench",
                    label = "Purchase Weapons"
                }
            },
            job = {"all"},
            distance = 1.5
        })

        AddBoxZone("weapon_shop_8", vector3(1691.51, 3758.9, 34.71), 1.65, 1, {
            name="weapon_shop_8",
            heading=135,
            
            minZ=33.71,
            maxZ=35.51
        }, {
            options = {
                {
                    event = "weapon:general",
                    icon = "fas fa-wrench",
                    label = "Purchase Weapons"
                }
            },
            job = {"all"},
            distance = 1.5
        })

        AddBoxZone("weapon_shop_9", vector3(-1119.85, 2697.74, 18.55), 1.6, 1, {
            name="weapon_shop_9",
            heading=310,
            
            minZ=17.55,
            maxZ=19.35
        }, {
            options = {
                {
                    event = "weapon:general",
                    icon = "fas fa-wrench",
                    label = "Purchase Weapons"
                }
            },
            job = {"all"},
            distance = 1.5
        })


        AddBoxZone("weapon_shop_10", vector3(-3173.59, 1086.26, 20.84), 1.6, 1, {
            name="weapon_shop_10",
            heading=335,
            
            minZ=19.84,
            maxZ=21.64
        }, {
            options = {
                {
                    event = "weapon:general",
                    icon = "fas fa-wrench",
                    label = "Purchase Weapons"
                }
            },
            job = {"all"},
            distance = 1.5
        })


        AddBoxZone("weapon_shop_11", vector3(-332.5, 6083.09, 31.45), 1.8, 1, {
            name="weapon_shop_11",
            heading=315,
            
            minZ=30.45,
            maxZ=32.25
        }, {
            options = {
                {
                    event = "weapon:general",
                    icon = "fas fa-wrench",
                    label = "Purchase Weapons"
                }
            },
            job = {"all"},
            distance = 1.5
        })

        -------- Banks --------
        AddCircleZone(
            "bank1",
            vector3(149.66, -1041.52, 29.38),
            0.9,
            {
                name = "bank1",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "bank:openbank",
                        icon = "fas fa-university",
                        label = "Open Bank"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "bank2",
            vector3(313.99, -279.77, 54.17),
            0.9,
            {
                name = "bank2",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "bank:openbank",
                        icon = "fas fa-university",
                        label = "Open Bank"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "bank3",
            vector3(241.61, 226.15, 106.29),
            0.9,
            {
                -- Add Payhecks to this
                name = "bank3",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "bank:openbank",
                        icon = "fas fa-university",
                        label = "Open Bank"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "bank4",
            vector3(243.43, 225.42, 106.29),
            0.9,
            {
                -- Add Payhecks to this
                name = "bank4",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "bank:openbank",
                        icon = "fas fa-university",
                        label = "Open Bank"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "bank5",
            vector3(-351.21, -50.77, 49.04),
            0.9,
            {
                name = "bank5",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "bank:openbank",
                        icon = "fas fa-university",
                        label = "Open Bank"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "bank6",
            vector3(-1212.27, -331.37, 37.78),
            0.9,
            {
                name = "bank6",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "bank:openbank",
                        icon = "fas fa-university",
                        label = "Open Bank"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "bank7",
            vector3(-2961.81, 482.95, 15.7),
            0.9,
            {
                name = "bank7",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "bank:openbank",
                        icon = "fas fa-university",
                        label = "Open Bank"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "bank8",
            vector3(-112.09, 6470.12, 31.63),
            0.9,
            {
                name = "bank8",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "bank:openbank",
                        icon = "fas fa-university",
                        label = "Open Bank"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )
        AddCircleZone(
            "bank9",
            vector3(1175.0703125, 2706.7980957031, 38.0940284729),
            0.9,
            {
                name = "bank8",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "bank:openbank",
                        icon = "fas fa-university",
                        label = "Open Bank"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )

            -------- Prison -------

        AddBoxZone("swooshie", vector3(1778.78, 2558.36, 45.67), 1, 1, {
            name="swooshie",
            heading=0,
            debugPoly=false,
            minZ=42.87,
            maxZ=46.87
        }, {
            options = {
                {
                    event = "slushy:general",
                    icon = "fas fa-ice-cream",
                    label = "Make Slushy"
                },
            },
            job = {"all"},
            distance = 3.5
        })

        AddBoxZone("prison2", vector3(1718.4096679688, 2527.8200683594, 45.564876556396), 0.8, 0.6, {
            name="prison2",
            heading=117.71112060547,
            debugPoly=false,
            minZ=45.75,
            maxZ=46.55
        }, {
            options = {
                {
                    event = "prison:task",
                    icon = "fas fa-bolt",
                    label = "Fix Electrical Box!"
                }
            },
            job = {"all"},
            distance = 1.5
        })

        AddBoxZone("prison3", vector3(1761.4517822266, 2540.8256835938, 46.022602081299), 0.8, 0.6, {
            name="prison3",
            heading=357.71112060547,
            debugPoly=false,
            minZ=45.75,
            maxZ=46.55
        }, {
            options = {
                {
                    event = "prison:task",
                    icon = "fas fa-bolt",
                    label = "Fix Electrical Box!"
                }
            },
            job = {"all"},
            distance = 1.5
        })

        AddBoxZone("bred", vector3(1781.61, 2558.17, 45.67), 5, 0.8, {
            name="bred",
            heading=270,
            debugPoly=false,
            minZ=42.07,
            maxZ=46.07
        }, {
            options = {
                {
                    event = "pfood:general",
                    icon = "fas fa-bread-slice",
                    label = "Prison Food"
                }
            },
            job = {"all"},
            distance = 3.5
        })

        AddBoxZone("prisonm", vector3(1608.7, 2567.26, 45.56), 1, 2.2, {
            name="prisonm",
            heading=45,
            debugPoly=false,
            minZ=43.36,
            maxZ=47.36
        }, {
            options = {
                {
                    event = "pmeth:general",
                    icon = "fas fa-hand-sparkles",
                    label = "What is this?"
                }
            },
            job = {"all"},
            distance = 3.5
        })

        AddBoxZone("idekwatdisis", vector3(1685.92, 2554.27, 45.56), 1, 0.6, {
            name="idekwatdisis",
            heading=270,
            debugPoly=false,
            minZ=41.76,
            maxZ=45.76
        }, {
            options = {
                {
                    event = "prisonap:general",
                    icon = "fas fa-question",
                    label = "What?"
                }
            },
            job = {"all"},
            distance = 3.5
        })

        AddCircleZone(
            "prison4",
            vector3(1776.9, 2565.0, 45.67),
            0.5,
            {
                name = "prison4",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "prisonlp:general",
                        icon = "fas fa-question",
                        label = "What ?"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )

        AddBoxZone("reclaimyourshiet", vector3(1841.88, 2579.56, 46.01), 2, 0.6, {
            name="reclaimyourshiet",
            heading=270,
            debugPoly=false,
            minZ=42.61,
            maxZ=46.61
        }, {
            options = {
                {
                    event = "jailbreak:reclaimitems",
                    icon = "fas fa-undo",
                    label = "Reclaim Possessions"
                }
            },
            job = {"all"},
            distance = 3.5
        })

        AddBoxZone("hobomanyo", vector3(122.18, -1179.38, 29.5), 0.7, 0.7, {
            name="hobomanyo",
            heading=45,
            debugPoly=false,
            minZ=27.3,
            maxZ=31.3
        }, {
            options = {
                {
                    event = "safecrack:buy",
                    icon = "fas fa-circle",
                    label = "Speak to a hobo"
                }
            },
            job = {"all"},
            distance = 3.5
        })

        -- Bean Machine
        -- AddBoxZone("bean_register", vector3(-634.24, 235.53, 81.88), 0.35, 0.1, {
        --         name="bean_register",
        --         heading=275,
                
        --         minZ=82.08,
        --         maxZ=82.28
        --     }, {
        --         options = {
        --             {
        --                 event = "bean:get:receipt",
        --                 parms = "1",
        --                 icon = "fas fa-cash-register",
        --                 label = "Make Payment",
        --             },
        --             {
        --                 event = "bean:register",
        --                 parms = "1",
        --                 icon = "fas fa-credit-card",
        --                 label = "Charge Customer",
        --             },
        --          },
        --          job = {"all"},
        --         distance = 1.5
        -- })


        -- AddBoxZone("bean_tray", vector3(-634.69, 236.56, 81.91), 0.6, 1, {
        --     name="bean_tray",
        --     heading=5,
            
        --     minZ=82.11,
        --     maxZ=82.51
        -- }, {
        --     options = {
        --         {
        --             event = "open:tray",
        --             parms = "bean_tray",
        --             icon = "fas fa-hand-holding",
        --             label = "Take the Items",
        --         },
        --     },
        --         job = {"all"},
        --         distance = 1.5
        -- })

        -- AddBoxZone("bean_storage", vector3(-633.06, 224.93, 81.88), 1.6, 1, {
        --     name="bean_storage",
        --     heading=180,
            
        --     minZ=82.43,
        --     maxZ=83.43
        -- }, {
        --     options = {
        --         {
        --             event = "open:storage",
        --             parms = "bean_machine",
        --             icon = "fas fa-box-open",
        --             label = "Open Bean Machine's Stash!"
        --         },
        --      },
        --      job = {"bean_machine"},
        --     distance = 2.5
        -- })

        
        -- AddBoxZone("bean_frig", vector3(-635.64, 232.93, 81.88), 1.4, 1, {
        --     name="bean_frig",
        --     heading=65,
            
        --     minZ=80.88,
        --     maxZ=82.93
        -- }, {
        --     options = {
        --         {
        --             event = "bean:order",
        --             icon = "fas fa-box-open",
        --             label = "Open Bean Machine's Fridge!"
        --         },
        --      },
        --      job = {"bean_machine"},
        --     distance = 2.5
        -- })
       

                
        -- AddBoxZone("bean_craft", vector3(-635.69, 236.42, 81.88), 1.1, 0.5, {
        --     name="bean_craft",
        --     heading=270,
            
        --     minZ=82.08,
        --     maxZ=82.63
        -- }, {
        --     options = {
        --         {
        --             event = "bean:craft",
        --             icon = "fas fa-box-open",
        --             label = "Make Food!"
        --         },
        --      },
        --      job = {"bean_machine"},
        --     distance = 2.5
        -- })


        -- AddBoxZone("bean_trade_receipts",vector3(-627.41, 225.75, 81.88), 0.5, 0.5, {
        --     name="bean_trade_receipts",
        --     heading=270,
            
        --     minZ=81.68,
        --     maxZ=81.88
        -- }, {
        --     options = {
        --         {
        --             event = "bean:cash:in",
        --             icon = "fas fa-cash-register",
        --             label = "Cash in receipts",
        --         },
        --      },
        --      job = {"bean_machine"},
        --     distance = 2.5
        -- })


        --- VU ---

        AddBoxZone("VU_register", vector3(129.13, -1284.96, 29.27), 0.5, 0.5, {
            name="VU_register",
            heading=305,
            --debugPoly=true,
            minZ=29.27,
            maxZ=29.67
        }, {
            options = {
                {
                    event = "vanilla:get:receipt",
                    parms = "1",
                    icon = "fas fa-cash-register",
                    label = "Make Payment",
                },
                {
                    event = "vanilla:register",
                    parms = "1",
                    icon = "fas fa-credit-card",
                    label = "Charge Customer",
                },
            },
            job = {"all"},
            distance = 3.5
        })

        AddBoxZone("VU_cash_reciepts", vector3(132.98, -1286.05, 29.27), 0.5, 0.5, {
            name="VU_cash_reciepts",
            heading=30,
            --debugPoly=true,
            minZ=29.27,
            maxZ=29.67
        }, {
            options = {
                {
                    event = "vanilla:cash:in",
                    icon = "fas fa-cash-register",
                    label = "Cash in receipts",
                },
            },
            job = {"vanilla_unicorn"},
            distance = 3.5
        })


        AddBoxZone("vu_make_drink", vector3(129.82, -1280.64, 29.27), 1.5, 0.5, {
            name="vu_make_drink",
            heading=30,
            --debugPoly=true,
            minZ=28.27,
            maxZ=29.27
        }, {
            options = {
                {
                    event = "vanilla:make:drink",
                    icon = "fas fa-wine-glass-alt",
                    label = "Mix a drink!",
                },
            },
            job = {"vanilla_unicorn"},
            distance = 3.5
        })

        AddBoxZone("vanilla_unicorn_tray", vector3(128.75, -1284.41, 29.27), 1.0, 1, {
            name="vanilla_unicorn_tray",
            heading=30,
            --debugPoly=true,
            minZ=26.07,
            maxZ=30.07
        }, {
            options = {
                {
                    event = "open:tray",
                    parms = "vanilla_unicorn_tray",
                    icon = "fas fa-hand-holding",
                    label = "Take the Items",
                },
            },
            job = {"all"},
            distance = 1.5
        })

        AddBoxZone("vu_safe", vector3(93.67, -1290.51, 29.26), 0.7, 0.5, {
            name="vu_safe",
            heading=115,
            --debugPoly=true,
            minZ=28.26,
            maxZ=29.26
        }, {
            options = {
                {
                    event = "open:storage",
                    parms = "vanilla_unicorn",
                    icon = "fas fa-search",
                    label = "Open Storage",
                },
            },
            job = {"vanilla_unicorn"},
            distance = 3.5
        })

        AddBoxZone("pdm_stash", vector3(-28.95, -1103.0, 26.42), 0.5, 1.8, {
            name="pdm_stash",
            heading=340,
            --debugPoly=true,
            minZ=22.62,
            maxZ=26.62
        }, {
            options = {
                {
                    event = "open:storage",
                    parms = "car_shop",
                    icon = "fas fa-search",
                    label = "Open PDM  Stash",
                },
            },
            job = {"car_shop"},
            distance = 3.5
        })


        AddBoxZone("vu_dj_booth", vector3(120.84, -1282.9, 29.48), 0.5, 0.5, {
            name="vu_dj_booth",
            heading=345,
            --debugPoly=true,
            minZ=29.28,
            maxZ=29.68
        }, {
            options = {
                {
                    event = "vanilla:request:song",
                    icon = "fas fa-compact-disc",
                    label = "Play Music",
                },
                {
                    event = "vanilla:change:volume",
                    icon = "fas fa-volume-up",
                    label = "Volume Changer",
                },
            },
            job = {"vanilla_unicorn"},
            distance = 3.5
        })

        AddBoxZone("arcade_dj_booth", vector3(734.02, -818.12, 22.67), 0.5, 0.5, {
            name="arcade_dj_booth",
            heading=0,
            minZ=19.27,
            maxZ=23.27
        }, {
            options = {
                {
                    event = "arcade:request:song",
                    icon = "fas fa-compact-disc",
                    label = "Play Music",
                },
                {
                    event = "arcade:change:volume",
                    icon = "fas fa-volume-up",
                    label = "Volume Changer",
                },
            },
            job = {"videogeddon_arcade"},
            distance = 3.5
        })

        AddBoxZone("bahamas_dj_booth", vector3(-1380.12, -629.12, 30.63), 0.5, 0.5, {
            name="bahamas_dj_booth",
            heading=330,
            minZ=26.63,
            maxZ=30.63
        }, {
            options = {
                {
                    event = "bahamas:request:song",
                    icon = "fas fa-compact-disc",
                    label = "Play Music",
                },
                {
                    event = "bahamas:change:volume",
                    icon = "fas fa-volume-up",
                    label = "Volume Changer",
                },
            },
            job = {"bahamas_bar"},
            distance = 3.5
        })

        AddBoxZone("bahamas_dj_booth", vector3(-1380.12, -629.12, 30.63), 0.5, 0.5, {
            name="bahamas_dj_booth",
            heading=330,
            minZ=26.63,
            maxZ=30.63
        }, {
            options = {
                {
                    event = "bahamas:request:song",
                    icon = "fas fa-compact-disc",
                    label = "Play Music",
                },
                {
                    event = "bahamas:change:volume",
                    icon = "fas fa-volume-up",
                    label = "Volume Changer",
                },
            },
            job = {"bahamas_bar"},
            distance = 3.5
        })

        AddBoxZone("casino_dj_booth", vector3(1088.17, 220.58, -49.2), 0.5, 0.5, {
            name="casino_dj_booth",
            heading=0,
            minZ=-53.2,
            maxZ=-49.2
        }, {
            options = {
                {
                    event = "casino:request:song",
                    icon = "fas fa-compact-disc",
                    label = "Play Music",
                },
                {
                    event = "casino:change:volume",
                    icon = "fas fa-volume-up",
                    label = "Volume Changer",
                },
            },
            job = {"casino_dealer"},
            distance = 3.5
        })

        AddBoxZone("spin-wheel", vector3(1109.48, 229.35, -49.64), 0.5, 0.5, {
            name="spin-wheel",
            heading=35,
            minZ=-52.84,
            maxZ=-48.84
        }, {
            options = {
                {
                    event = "attempt:spin-in",
                    icon = "fas fa-money-bill-wave",
                    label = "Spin Wheel ($500)",
                },

                {
                    event = "attempt:change:spin",
                    icon = "fas fa-adjust",
                    label = "Enable/Disable!",
                },

                {
                    event = "attempt:change:slot",
                    icon = "fas fa-adjust",
                    label = "Enable/Disable Slots!",
                },


            },
            job = {"all"},
            distance = 4.0
        })



        -------- Courthouse (TELEPORTERS) --------

        AddCircleZone(
            "courthouseenter",
            vector3(235.26, -412.24, 48.11),
            5.0,
            {
                name = "courthouseenter",
                debugPoly = false,
                useZ = false
            },
            {
                options = {
                    {
                        event = "courthouse:enter",
                        icon = "fas fa-door-open",
                        label = "Enter the Courthouse"
                    }
                },
                job = {"all"},
                distance = 10.0
            }
        )

        AddCircleZone(
            "courthouseexit",
            vector3(269.21, -371.89, -44.14),
            1.5,
            {
                name = "courthouseexit",
                debugPoly = false,
                useZ = false
            },
            {
                options = {
                    {
                        event = "courthouse:exit",
                        icon = "fas fa-door-open",
                        label = "Exit the Courthouse"
                    }
                },
                job = {"all"},
                distance = 10.0
            }
        )

        AddCircleZone(
            "courtroomenter",
            vector3(249.17, -364.77, -44.14),
            1.5,
            {
                name = "courtroomenter",
                debugPoly = false,
                useZ = false
            },
            {
                options = {
                    {
                        event = "courtroom:enter",
                        icon = "fas fa-door-open",
                        label = "Enter the Courtroom"
                    }
                },
                job = {"all"},
                distance = 10.0
            }
        )

        AddCircleZone(
            "courtroomexit",
            vector3(313.18, -1611.2, -66.79),
            1.5,
            {
                name = "courtroomexit",
                debugPoly = false,
                useZ = false
            },
            {
                options = {
                    {
                        event = "courtroom:exit",
                        icon = "fas fa-door-open",
                        label = "Exit the Courtroom"
                    }
                },
                job = {"all"},
                distance = 10.0
            }
        )

        AddBoxZone(
            "TacoCraft",
            vector3(16.27, -1597.89, 29.38),
            2.6,
            0.8,
            {
                name = "TacoCraft",
                heading = 230,
                debugPoly = false,
                minZ = 28.18,
                maxZ = 29.58
            },
            {
                options = {
                    {
                        event = "taco:craft",
                        icon = "fas fa-utensils",
                        label = "Cook up some grub!"
                    }
                },
                job = {"all"},
                distance = 3.5
            }
        )



        -------- Auto Exotics --------

        AddBoxZone(
            "AutoExoticsStorage",
            vector3(546.61, -165.82, 54.49),
            2.8,
            1,
            {
                name = "Storage",
                heading = 91,
                debugPoly = false,
                minZ = 51.69,
                maxZ = 55.69
            },
            {
                options = {
                    {
                        event = "mech:check:internal:storage",
                        parms = "auto_exotics",
                        icon = "fas fa-hammer",
                        label = "Check AutoExotic's Internals's Supply"
                    },
                    {
                        event = "open:storage",
                        parms = "auto_exotics",
                        icon = "fas fa-box-open",
                        label = "Open AutoExotic's Stash!"
                    },
                    {
                        event = "mech:craft",
                        icon = "fas fa-wrench",
                        label = "Open AutoExotic's Crafting Book!"
                    }
                },
                job = {"auto_exotics"},
                distance = 3
            }
        )

        AddBoxZone("auto_exotics_bar", vector3(546.71, -176.84, 50.69), 1, 1.4, {
            name="auto_exotics_bar",
            heading=180,
            debugPoly = false,
            minZ=47.89,
            maxZ=51.89
        }, {
         
            options = {
                {
                    event = "autoexotics:bar",
                    parms = "auto_exotics",
                    icon = "fas fa-wine-bottle",
                    label = "Open Auto Exotics Drinks"
                }
            },
         
             job = {"auto_exotics"},
            distance = 1.5
        })

        AddBoxZone("foooooooooooooood", vector3(546.45, -173.76, 50.69), 1, 1.6, {
            name="foooooooooooooood",
            heading=0,
            debugPoly = false,
            minZ=46.69,
            maxZ=50.69
        }, {
         
            options = {
                {
                    event = "autoexotics:food",
                    parms = "auto_exotics",
                    icon = "fas fa-bread-slice",
                    label = "Open Auto Exotics Food"
                }
            },
         
             job = {"auto_exotics"},
            distance = 1.5
        })

        -- AddBoxZone("auto_tray", vector3(544.94, -173.27, 50.69), 1, 1, {
        --     name="auto_tray",
        --     heading=0,
        --     debugPoly = false,
        --     minZ=47.09,
        --     maxZ=51.09
        -- }, {
         
        --     options = {
        --         {
        --             event = "open:tray",
        --             parms = "auto_exotics",
        --             icon = "fas fa-hand-holding",
        --             label = "Open Tray"
        --         }
        --     },
         
        --      job = {"all"},
        --     distance = 1.5
        -- })

        -------- Auto Bodies --------

        AddBoxZone(
            "AutoBodies",
            vector3(-1421.2340087891, -455.22863769531, 35.909713745117),
            4.65,
            1,
            {
                name = "AutoBodies",
                heading = 302,
                debugPoly = false,
                minZ = 34.86,
                maxZ = 37.26
            },
            {
                options = {
                    {
                        event = "mech:check:internal:storage",
                        parms = "hayes_autos",
                        icon = "fas fa-hammer",
                        label = "Check Hayes's Internals's Supply"
                    },
                    {
                        event = "open:storage",
                        parms = "hayes_autos",
                        icon = "fas fa-box-open",
                        label = "Open Hayes's Stash!"
                    },
                    {
                        event = "mech:craft",
                        icon = "fas fa-wrench",
                        label = "Open Hayes's Crafting Book!"
                    }
                },
                job = {"hayes_autos"},
                distance = 3
            }
        )
        -------- Auto Bodies --------

        AddBoxZone(
            "Tuner",
            vector3(948.03, -969.7, 39.5),
            3.9,
            1,
            {
                name = "Tuner",
                heading = 4,
                debugPoly = false,
                minZ = 38.5,
                maxZ = 40.1
            },
            {
                options = {
                    {
                        event = "mech:check:internal:storage",
                        parms = "tuner_shop",
                        icon = "fas fa-hammer",
                        label = "Check Tuner Shop's Internals's Supply"
                    },
                    {
                        event = "open:storage",
                        parms = "Tuner",
                        icon = "fas fa-box-open",
                        label = "Open Tuner Shop's Stash!"
                    },
                    {
                        event = "mech:craft",
                        icon = "fas fa-wrench",
                        label = "Open Tuner Shop's Crafting Book!"
                    }
                },
                job = {"tuner_shop"},
                distance = 3
            }
        )

        AddBoxZone(
            "bennys_mechanic",
            vector3(-36.2, -1070.61, 28.39),
            1,
            4,
            {
                name = "bennys_mechanic",
                heading=250,
                debugPoly = false,
                minZ=24.79,
                maxZ=28.79
            },
            {
                options = {
                    {
                        event = "open:storage",
                        parms = "harmony_autos",
                        icon = "fas fa-box-open",
                        label = "Open Bennys Stash!"
                    },
                    {
                        event = "mech:craft",
                        icon = "fas fa-wrench",
                        label = "Open Bennys Crafting Book!"
                    }
                },
                job = {"harmony_autos"},
                distance = 3
            }
        )

        -------- Best Buds --------

        AddBoxZone("bestbudzzz_storage", vector3(376.85, -824.35, 29.3), 0.5, 0.5, {
            name="bestbudzzz_storage",
            heading=0,
            
            minZ=25.3,
            maxZ=29.3
        }, {
         
            options = {
                {
                    event = "open:storage",
                    parms = "best_buds",
                    icon = "fas fa-box-open",
                    label = "Open Bestbuds Storage"
                }
            },
         
             job = {"best_buds"},
            distance = 1.5
        })

        AddBoxZone("bestbudzzzzz_shop", vector3(377.14, -825.63, 29.3), 0.5, 1.5, {
            name="bestbudzzzzz_shop",
            heading=0,
            
            minZ=25.5,
            maxZ=29.5
        }, {
         
            options = {
                {
                    event = "bestbuds:shop",
                    icon = "fas fa-shopping-basket",
                    label = "Open BestBuds Weed Shop"
                }
            },
         
             job = {"best_buds"},
            distance = 3.5
        })

        AddBoxZone("register_shi", vector3(380.21, -827.3, 29.3), 0.5, 0.5, {
            name="register_shi",
            heading=0,
            
            minZ=25.7,
            maxZ=29.7
        }, {
            options = {
                {
                    event = "Best_buds:get:receipt",
                    parms = "1",
                    icon = "fas fa-cash-register",
                    label = "Make Payment",
                },
                {
                    event = "Best_buds:register",
                    parms = "1",
                    icon = "fas fa-credit-card",
                    label = "Charge Customer",
                },
             },
             job = {"all"},
            distance = 1.5
        })


        AddBoxZone("register_shi2", vector3(375.52, -827.28, 29.3), 0.5, 0.5, {
            name="register_shi2",
            heading=0,
            
            minZ=25.7,
            maxZ=29.7
        }, {
            options = {
                {
                    event = "Best_buds:get:receipt",
                    parms = "2",
                    icon = "fas fa-cash-register",
                    label = "Make Payment",
                },
                {
                    event = "Best_buds:register",
                    parms = "2",
                    icon = "fas fa-credit-card",
                    label = "Charge Customer",
                },
             },
             job = {"all"},
            distance = 1.5
        })


        AddBoxZone("cashin_reciept", vector3(374.3, -824.6, 29.3), 0.7, 0.7, {
            name="cashin_reciept",
            heading=0,
            
            minZ=26.3,
            maxZ=30.3
        }, {
            options = {
                {
                    event = "Best_buds:cash:in",
                    icon = "fas fa-cash-register",
                    label = "Cash in receipts",
                },
             },
             job = {"best_buds"},
            distance = 1.5
        })
        
        AddBoxZone("best_buds_counter", vector3(-623.5, -295.81, 35.34), 2.15, 1, {
            name="best_buds_counter",
            heading=120,
            
            minZ=34.34,
            maxZ=35.54
        }, {
            options = {
                {
                    event = "open:tray",
                    parms = "best_buds_counter",
                    icon = "fas fa-hand-holding",
                    label = "Take the Items",
                },
             },
             job = {"all"},
            distance = 3.5
        })
        
        -------- Tequaila --------

        AddCircleZone("Tequila", vector3(-562.31, 287.77, 82.18), 2.2,
            {
                name = "Tequila ",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "tequila:shop",
                        icon = "fas fa-shopping-basket",
                        label = "Open the Bar's Menu"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )

        -------- Smelter --------

        AddCircleZone(
            "smelter",
            vector3(1109.83, -2008.2, 31.06),
            2.0,
            {
                name = "smelter",
                debugPoly = false,
                useZ = false
            },
            {
                options = {
                    {
                        event = "smelter-smelt",
                        icon = "fas fa-shopping-basket",
                        label = "Smelt yo goods"
                    }
                },
                job = {"all"},
                distance = 10.0
            }
        )

        -------- Hospital (TELEPORTERS) --------


        AddBoxZone("hospitalroof1", vector3(332.35, -597.32, 43.28), 0.2, 1, {
            name="hospitalroof2",
            heading=340,
            
            minZ=43.48,
            maxZ=43.78
        }, {
            options = {
                {
                    event = "hospital:roof",
                    icon = "fas fa-arrow-alt-circle-up",
                    label = "Enter the Elevator to the Roof"
                },
            },
            job = {"all"},
            distance = 5.0
        })

        AddBoxZone("hospitalroof", vector3(330.3, -602.77, 43.28), 0.2, 1, {
            name="hospitalroof",
            heading=340,
            
            minZ=43.48,
            maxZ=43.88
        }, {
            options = {
                {
                    event = "hospital:lower",
                    icon = "fas fa-arrow-alt-circle-down",
                    label = "Enter the Elevator to the Bottom Floor"
                }
            },
            job = {"all"},
            distance = 10.0
        })


        AddBoxZone("hospitallowerup", vector3(344.32, -584.58, 28.8), 0.15, 1, {
            name="hospitallowerup",
            heading=340,
            
            minZ=29.0,
            maxZ=29.25
        }, {
            options = {
                {
                    event = "hospital:elevatorup",
                    icon = "fas fa-arrow-alt-circle-up",
                    label = "Enter the Elevator to the Main Hospital"
                }
            },
            job = {"all"},
            distance = 5.0
        })

        AddBoxZone("hospitalroof2", vector3(345.71, -580.91, 28.8), 0.2, 1, {
            name="hospitalroof2",
            heading=340,
            
            minZ=29.0,
            maxZ=29.35
        }, {
            options = {
                {
                    event = "hospital:roof",
                    icon = "fas fa-arrow-alt-circle-up",
                    label = "Enter the Elevator to the Roof"
                }
            },
            job = {"all"},
            distance = 5.0
        })

        AddBoxZone("hospitalrooftomain", vector3(338.23, -583.74, 74.16), 3.0, 1, {
            name="hospitalrooftomain",
            heading=340,
            
            minZ=73.16,
            maxZ=75.36
        }, {
            options = {
                {
                    event = "hospital:roofexit",
                    icon = "fas fa-arrow-alt-circle-down",
                    label = "Enter the Door to leave the roof!"
                }
            },
            job = {"all"},
            distance = 5.0
        })

        AddBoxZone("hospitalmorgueexit", vector3(276.11, -1361.72, 24.54), 2.4, 1, {
            name="hospitalmorgueexit",
            heading=319,
            --debugPoly=true,
            minZ=22.14,
            maxZ=26.14
        }, {
            options = {
                {
                    event = "hospital:morgexit",
                    icon = "fas fa-arrow-alt-circle-down",
                    label = "Enter the Door to leave the morgue!"
                }
            },
            job = {"all"},
            distance = 5.0
        })

        AddBoxZone("hospitalmorgue", vector3(325.56, -603.49, 43.28), 0.2, 1, {
            name="hospitalmorgue",
            heading=341,
            --debugPoly=true,
            minZ=40.68,
            maxZ=44.68
        }, {
            options = {
                {
                    event = "hospital:morgue",
                    icon = "fas fa-arrow-alt-circle-up",
                    label = "Enter the Elevator to the morgue!"
                }
            },
            job = {"all"},
            distance = 5.0
        })

        AddBoxZone("methexit", vector3(996.53, -3200.66, -36.39), 0.2, 1.5, {
            name="methexit",
            heading=270,
            --debugPoly=true,
            minZ=-38.99,
            maxZ=-34.99
        }, {
            options = {
                {
                    event = 'meth:exit',
                    icon = "fas fa-arrow-alt-circle-down",
                    label = "Leave Meth Lab!"
                }
            },
            job = {"all"},
            distance = 5.0
        })

        AddBoxZone("meth_enter", vector3(-1176.65, -1548.21, 19.58), 2, 1.2, {
            name="meth_enter",
            heading=305,
            --debugPoly=true,
            minZ=14.78,
            maxZ=18.78
        }, {
            options = {
                {
                    event = 'meth:enter',
                    icon = "fas fa-arrow-alt-circle-up",
                    label = "Enter Meth Lab!"
                }
            },
            job = {"all"},
            distance = 5.0
        })

        --casino

        AddBoxZone("casino_cashier", vector3(1116.67, 220.06, -49.44), 0.9, 0.5, {
            name="casino_cashier",
            heading=0,
            minZ=-52.44,
            maxZ=-48.44
        }, {
            options = {
                {
                    event = "buy:chips",
                    icon = "fas fa-circle",
                    label = "PURCHASE CHIPS",
                },
                {
                    event = "exchange:cash",
                    icon = "fas fa-money-bill-wave",
                    label = "CASHOUT(CASH)",
                },

                {
                    event = "exchange:bank",
                    icon = "fas fa-university",
                    label = "CASHOUT(BANK)",
                },
            },
            job = {"all"},
            distance = 3.5
        })

        AddBoxZone("casinoenter", vector3(935.96, 47.36, 81.1), 0.6, 1, {
            name="casinoenter",
            heading=325,
            minZ=77.9,
            maxZ=81.9
        }, {
            options = {
                {
                    event = 'casino:enter',
                    icon = "fas fa-arrow-alt-circle-up",
                    label = "Enter Casino!"
                }
            },
            job = {"all"},
            distance = 3.0
        })

        AddBoxZone("casinoexit", vector3(1089.66, 205.93, -49.0), 2.4, 1, {
            name="casinoexit",
            heading=270,
            minZ=-52.2,
            maxZ=-48.2
        }, {
            options = {
                {
                    event = 'casino:exit',
                    icon = "fas fa-arrow-alt-circle-up",
                    label = "Exit Casino!"
                }
            },
            job = {"all"},
            distance = 3.0
        })

        AddBoxZone("penthouseenter", vector3(1118.58, 267.34, -51.04), 0.5, 0.5, {
            name="penthouse",
            heading=0,
            minZ=-54.64,
            maxZ=-50.64
        }, {
            options = {
                {
                    event = 'penthouse:enter',
                    icon = "fas fa-arrow-alt-circle-up",
                    label = "Enter Penthouse!"
                }
            },
            job = {"all"},
            distance = 3.0
        })

        AddBoxZone("penthouseexit", vector3(964.34, 57.7, 112.55), 0.5, 0.5, {
            name="penthouseexit",
            heading=325,
            minZ=108.95,
            maxZ=112.95
        }, {
            options = {
                {
                    event = 'penthouse:exit',
                    icon = "fas fa-arrow-alt-circle-up",
                    label = "Exit Penthouse!"
                }
            },
            job = {"all"},
            distance = 3.0
        })

        AddBoxZone("secretenter", vector3(1107.21, 242.26, -45.83), 0.5, 0.5, {
            name="secretenter",
            heading=0,
            minZ=-49.43,
            maxZ=-45.43
        }, {
            options = {
                {
                    event = 'secret:enter',
                    icon = "fas fa-arrow-alt-circle-up",
                    label = "Enter Penthouse!"
                }
            },
            job = {"all"},
            distance = 3.0
        })

        AddBoxZone("secretexit", vector3(981.11, 56.4, 116.17), 0.5, 0.5, {
            name="secretexit",
            heading=325,
            minZ=112.57,
            maxZ=116.57
        }, {
            options = {
                {
                    event = 'secret:exit',
                    icon = "fas fa-arrow-alt-circle-up",
                    label = "Exit Penthouse!"
                }
            },
            job = {"all"},
            distance = 3.0
        })

        AddBoxZone("pententer", vector3(969.21, 63.75, 112.56), 0.5, 0.5, {
            name="pententer",
            heading=325,
            minZ=109.16,
            maxZ=113.16
        }, {
            options = {
                {
                    event = 'penthouse2:enter',
                    icon = "fas fa-arrow-alt-circle-up",
                    label = "Enter Penthouse!"
                }
            },
            job = {"all"},
            distance = 3.0
        })

        --arcade
        AddCircleZone(
            "arcade_enter",
            vector3(758.95, -816.17, 26.31),
            1.5,
            {
                name = "arcade_enter",
                debugPoly = false,
                useZ = false
            },
            {
                options = {
                    {
                        event = "arcade:enter",
                        icon = "fas fa-door-open",
                        label = "Enter Arcade"
                    }
                },
                job = {"all"},
                distance = 1.0
            }
        )

        AddCircleZone(
            "arcade_exit",
            vector3(757.33, -816.12, 26.51),
            1.5,
            {
                name = "arcade_exit",
                debugPoly = false,
                useZ = false
            },
            {
                options = {
                    {
                        event = "arcade:exit",
                        icon = "fas fa-door-open",
                        label = "Exit the Arcade"
                    }
                },
                job = {"all"},
                distance = 1.0
            }
        )

        AddBoxZone("arcadestorage", vector3(740.14, -827.05, 22.67), 0.5, 0.5, {
            name="arcadestorage",
            heading=0,
            minZ=18.87,
            maxZ=22.87
        }, {
            options = {
                {
                    event = "open:storage",
                    parms = "videogeddon_arcade",
                    icon = "fas fa-search",
                    label = "Open Storage",
                    
                },
                {
                    event = "arcade:order",
                    icon = "fas fa-laptop",
                    label = "Order Products!",
                },
             },
             job = {"videogeddon_arcade"},
            distance = 2.5
        })

        AddBoxZone("arcade_tray", vector3(737.77, -819.73, 22.67), 0.5, 0.5, {
            name="arcade_tray",
            heading=0,
            minZ=18.87,
            maxZ=22.87

        }, {
            options = {
                {
                    event = "open:tray",
                    parms = "arcade_tray",
                    icon = "fas fa-hand-holding",
                    label = "Take the Items",
                },
            },
            job = {"all"},
            distance = 1.5
        })

        AddBoxZone("arcade_cashier", vector3(737.86, -820.92, 22.67), 0.8, 1, {
            name="arcade_cashier",
            heading=270,
            minZ=19.07,
            maxZ=22.87
          
        }, {
            options = {
                {
                    event = "arcade:get:receipt",
                    parms = "1",
                    icon = "fas fa-cash-register",
                    label = "Make Payment",
                },
                {
                    event = "arcade:register",
                    parms = "1",
                    icon = "fas fa-credit-card",
                    label = "Charge Customer",
                },
             },
             job = {"all"},
            distance = 1.5
        })

        AddBoxZone("arcade_make_drink", vector3(735.85, -823.86, 22.67), 0.5, 0.5, {
            name="arcade_make_drink",
            heading=0,
            minZ=18.87,
            maxZ=22.87
        }, {
            options = {
                {
                    event = "bahamas:make:drink",
                    icon = "fas fa-wine-glass-alt",
                    label = "Mix a drink!",
                },
            },
            job = {"videogeddon_arcade"},
            distance = 3.5
        })

        AddBoxZone("arcade_trade_receipts", vector3(742.27, -811.15, 24.27), 0.5, 0.5, {
            name="arcade_trade_receipts",
            heading=0,
            minZ=24.07,
            maxZ=24.67
        }, {
            options = {
                {
                    event = "arcade:cash:in",
                    icon = "fas fa-cash-register",
                    label = "Cash in receipts",
                },
             },
             job = {"videogeddon_arcade"},
            distance = 1.5
        })
    
        local pdheliped = {
            [1] = -1422914553
        }

        AddTargetModel(
            pdheliped,
            {
                options = {
                    {
                        event = "spawn:hei:pd",
                        icon = "fas fa-helicopter",
                        label = "Police Air Garage"
                    }
                },
                job = {"police"},
                distance = 1.5
            }
        )

        local emsheliped = {
            [1] = -163714847
        }

        AddTargetModel(
            emsheliped,
            {
                options = {
                    {
                        event = "spawn:hei:ems",
                        icon = "fas fa-helicopter",
                        label = "EMS Air Garage"
                    }
                },
                job = {"ems"},
                distance = 1.5
            }
        )

        local emsvehped = {
            [1] = 2139205821
        }

        AddTargetModel(
            emsvehped,
            {
                options = {
                    {
                        event = "EMSSpawnVeh",
                        icon = "fas fa-car",
                        label = "EMS Garage"
                    }
                },
                job = {"ems"},
                distance = 1.5
            }
        )

        local pdvehped = {
            [1] = -994634286
        }

        AddTargetModel(
            pdvehped,
            {
                options = {
                    {
                        event = "PDSpawnVeh",
                        icon = "fas fa-car",
                        label = "Police Garage"
                    }
                },
                job = {"police"},
                distance = 1.5
            }
        )

        local pdboatsped = {
            [1] = 193469166
        }

        AddTargetModel(
            pdboatsped,
            {
                options = {
                    {
                        event = "spawn:boat:pd",
                        icon = "fas fa-ship",
                        label = "Police Boat Garage"
                    }
                },
                job = {"police"}, {"ems"},
                distance = 1.5
            }
        )

        local newsStands = {
            [1] = 1211559620,
            [2] = -1186769817,
            [3] = -756152956,
            [4] = 720581693,
            [5] = -838860344
        }

        AddTargetModel(
            newsStands,
            {
                options = {
                    {
                        event = "NewsStandCheck",
                        icon = "fas fa-newspaper",
                        label = "Read The News!"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )

        local CHAIRS = {
            [1] = -99500382,
            [2] = -1118419705,
            [3] = 538002882,
            [4] = 525667351,
            [5] = 1805980844,
            [6] = 826023884,
            [7] = 764848282,
            [8] = -741944541,
            [9] = -377849416,
            [10] = -992710074,
            [11] = 867556671,
            [12] = 1716133836,
            [13] = 146905321,
            [14] = 603897027
        }

        AddTargetModel(
            CHAIRS,
            {
                options = {
                    {
                        event = "animation:Chair",
                        icon = "fas fa-chair",
                        label = "Sit Down!"
                    }
                },
                job = {"all"},
                distance = 1.5
            }
        )

        
        

        AddCircleZone(
            "jewel-card",
            vector3(-595.98, -283.69, 50.8),
            0.4,
            {
                name = "jewel-card",
                debugPoly = false,
                useZ = true
            },
            {
                options = {
                    {
                        event = "jewel:card",
                        icon = "fas fa-bomb",
                        label = "Start Hacking"
                    }
                },
                job = {"all"},
                distance = 2.5
            }
        )
        
        AddBoxZone("jewel-cutting", vector3(-608.22, -244.26, 50.25), 0.8, 1, {
            name="jewel-cutting",
            heading=300,
            minZ=46.65,
            maxZ=50.65
        }, {
            options = {
                {
                    event = "jewel:disconnect",
                    icon = "fas fa-tools",
                    label = "Sabotage"
                },
            },
            job = {"all"},
            distance = 1.5
        })

        AddBoxZone("jewel-hack", vector3(-631.19, -230.67, 38.06), 0.4, 1, {
            name="jewel-hack",
            heading=40,
            minZ=36.66,
            maxZ=38.26
        }, {
            options = {
                {
                    event = "jewel:hack",
                    icon = "fab fa-usb",
                    label = "Hack it"
                },
            },
            job = {"all"},
            distance = 1.5
        })


        AddBoxZone(
            "recycle",
            vector3(995.19, -3100.02, -39.0),
            0.4,
            0.5,
            {
                name = "recycle",
                heading = 0,
             --   debugPoly = true,
                minZ = -39.2,
                maxZ = -38.9
            },
            {
                options = {
                    {
                        event = "recycle:trade",
                        icon = "far fa-clipboard",
                        label = "Trade Your Materials!"
                    }
                },
                job = {"all"},
                distance = 3
            }
        )


        local GasPumps = {
            [1] = 1694452750,
            [2] = -2007231801,
            [3] = 1933174915,
            [4] = 1339433404,
            [5] = -462817101
        }

        AddTargetModel(
            GasPumps,
            {
                options = {
                    {
                        event = "prp-gas:checkpump",
                        icon = "fas fa-gas-pump",
                        label = "Fuel Up Your Car!"
                    }
                },
                job = {"all"},
                distance = 5
            }
        )

        local Crack = {
            [1] = -835930287
        }

        AddTargetModel(
            Crack,
            {
                options = {
                    {
                        event = 'crack:enter',
                        icon = "fas fa-arrow-alt-circle-up",
                        label = "What Dis ?!"
                    }
                },
                job = {"all"},
                distance = 5
            }
        )

        AddBoxZone("crackexit", vector3(1088.68, -3187.19, -39.0), 0.1, 1.5, {
            name="crackexit",
            heading=0,
            --debugPoly=true,
            minZ=-41.6,
            maxZ=-37.6
        }, {
            options = {
                {
                    event = 'crack:exit',
                    icon = "fas fa-arrow-alt-circle-down",
                    label = "Leave Crack Lab!"
                }
            },
            job = {"all"},
            distance = 5.0
        }
    )

        AddBoxZone("crackstart", vector3(1094.13, -3195.73, -38.99), 1.2, 5, {
            name="crackstart",
            heading=0,
            --debugPoly=true,
            minZ=-42.19,
            maxZ=-38.19
        }, {
            options = {
                {
                    event = 'crack:start',
                    icon = "fas fa-drum",
                    label = "Start Mixing!"
                }
            },
            job = {"all"},
            distance = 5.0
        }
    )


        AddCircleZone(
            "methstart",
            vector3(1005.750793457, -3200.4038085938, -38.519329071045),
            0.5,
            {
                name = "methstart",
                debugPoly = false,
                useZ = false
            },
            {
                options = {
                    {
                        event = "meth:start",
                        icon = "fas fa-fill-drip",
                        label = "Turn The Cooker On!"
                    }
                },
                job = {"all"},
                distance = 2.5
            }
        )

        AddCircleZone(
            "methpacking",
            vector3(1016.46, -3194.16, -38.99),
            1.13,
            {
                name = "methpacking",
                debugPoly = false,
                useZ = false
            },
            {
                options = {
                    {
                        event = "meth:packing",
                        icon = "fas fa-box",
                        label = "Start Packing!"
                    }
                },
                job = {"all"},
                distance = 2.5
            }
        )

        AddCircleZone(
            "methscaling",
            vector3(1012.13, -3194.08, -38.99),
            1.11,
            {
                name = "methscaling",
                debugPoly = false,
                useZ = false
            },
            {
                options = {
                    {
                        event = "meth:finish",
                        icon = "fas fa-hourglass-end",
                        label = "Scaling Blue Shit!"
                    }
                },
                job = {"all"},
                distance = 2.5
            }
        )

        AddBoxZone("towstart", vector3(409.07, -1623.01, 29.29), 0.6, 1, {
            name="towstart",
            heading=51,
            debugPoly = false,
            minZ=28.29,
            maxZ=30.09
        }, 
        {
            options = {
                {
                    event = "start:tow",
                    icon = "far fa-clipboard",
                    label = "Pull out a tow truck!"
                },
                {
                    event = "end:tow",
                    icon = "far fa-clipboard",
                    label = "Put away your tow truck!"
                },
            },
            job = {"tow"},
            distance = 1.5
        }
    )

    AddBoxZone("methsell", vector3(-1437.06, -372.71, 38.28), 0.7, 1, {
        name="methsell",
        heading=302,
        --debugPoly=true,
        minZ=35.08,
        maxZ=39.08
    }, 
    {
        options = {
            {
                event = "meth:sell",
                icon = "fas fa-hand-holding",
                label = "Hand Something Over"
            },
        },
        job = {"all"},
        distance = 1.5
    })

    -- micheal

    -- AddBoxZone("micheal_house", vector3(-812.54, 182.79, 72.15), 0.7, 0.3, {
    --     name="micheal_house",
    --     heading=290,
    --     --debugPoly=true,
    --     minZ=68.95,
    --     maxZ=72.95
    -- }, 
    -- {
    --     options = {
    --         {
    --             event = "Micheal:uzi",
    --             icon = "fas fa-question",
    --             label = "Speak to Micheal"
    --         },
    --     },
    --     job = {"all"},
    --     distance = 1.5
    -- })

    AddBoxZone("cracksell", vector3(-415.11, 6327.93, 28.76), 0.7, 1, {
        name="cracksell",
        heading=40,
        --debugPoly=true,
        minZ=25.56,
        maxZ=29.56
    }, 
    {
        options = {
            {
                event = "crack:sell",
                icon = "fas fa-hand-holding",
                label = "Hand Something Over"
            },
        },
        job = {"all"},
        distance = 1.5
    })
    

    --Hunting

    AddBoxZone("hunting_locationnnn", vector3(-677.31, 5832.23, 17.33), 0.4, 0.7, {
        name="hunting_locationnnn",
        heading=315,
        debugPoly=false,
        minZ=14.33,
        maxZ=18.33
    }, {
        options = {
            {
                event = "prp-hunting:start",
                icon = "fas fa-horse-head",
                label = "Start Hunting $500"
            },
            {
                event = "prp-hunting:stop",
                icon = "fas fa-scroll",
                label = "Return Hunting Gear"
            },
        },
        job = {"all"},
        distance = 2.5
    })

    AddCircleZone(
        "huntingsell", 
        vector3(1593.53, 6459.62, 25.57), 
        0.82, 
        {
        name="huntingsell",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "hunting:sell",
                    icon = "fas fa-money-bill-alt",
                    label = "Sell Hunting Materials",
                },
             },
            job = {"all"},
            distance = 1.5
        })

        AddCircleZone("gold_sell", vector3(412.01, 315.11, 103.02), 1.0, {
            name="gold_sell",
            useZ=true,
            --debugPoly=true
            }, {
                options = {
                    {
                        event = "mining:sell",
                        parms = "goldbar",
                        icon = "fas fa-check-circle",
                        label = "Sell (Gold Bars)",
                    },
                    {
                        event = "mining:sell",
                        parms = "silverbar",
                        icon = "fas fa-check-circle",
                        label = "Sell (Silver Bars)",
                    },
                    {
                        event = "mining:sell",
                        parms = "copperbar",
                        icon = "fas fa-check-circle",
                        label = "Sell (Copper Bars)",
                    },
                    {
                        event = "mining:sell",
                        parms = "ironbar",
                        icon = "fas fa-check-circle",
                        label = "Sell (Iron Bars)",
                    },
                },
                
                job = {"all"},
                distance = 2.5
            })





            -- PDM SHIT --
            AddBoxZone("pdm_checkrepo", vector3(-192.42, -1161.89, 23.67), 0.5, 0.5, {
                name="pdm_checkrepo",
                heading=0,
                --debugPoly=true,
                minZ=23.07,
                maxZ=23.87
            }, {
                options = {
                    {
                        event = "search:list:repo",
                        icon = "fas fa-clipboard",
                        label = "Search Repo List ($5000)"
                    },
                },
                job = {"all"},
                distance = 2.5
            })

              -- Booky Man
              AddBoxZone("booky_guy", vector3(-277.81, 2205.59, 129.87), 0.7, 0.7, {
                name="booky_guy",
                heading=335,
                minZ=127.27,
                maxZ=131.27
            }, {
                options = {
                    {
                        event = "sellgamingpc",
                        icon = "fas fa-laptop",
                        label = "Sell Gaming PC"
                    },
                    {
                        event = "sellgamingmouse",
                        icon = "fas fa-mouse",
                        label = "Sell Gaming Mouse"
                    },
                    {
                        event = "sellgamingkeyboard",
                        icon = "fas fa-keyboard",
                        label = "Sell Gaming Keyboard"
                    },
                    {
                        event = "sellnitendos",
                        icon = "fas fa-circle",
                        label = "Sell Nintendo Switch"
                    },
                    {
                        event = "sellbobross",
                        icon = "fas fa-circle",
                        label = "Sell Bob Ross"
                    },
                    {
                        event = "sellps5",
                        icon = "fas fa-circle",
                        label = "Sell Playstation 5"
                    }
                },
                job = {"all"},
                distance = 1.5
            })

            -- Digital Den shit
            AddBoxZone("digitalden1", vector3(1134.64, -465.61, 66.49), 0.7, 0.5, {
                name="digitalden1",
                heading=0,
                minZ=63.29,
                maxZ=67.29
            }, {
                options = {
                    {
                        event = "speaktofredrick1",
                        icon = "fas fa-american-sign-language-interpreting",
                        label = "Speak to Fredrick"
                    },
                },
                job = {"all"},
                distance = 1.5
            })

            -- Garbage start
            AddBoxZone("garbage_start", vector3(-322.16, -1546.0, 31.02), 0.5, 1, {
                name="garbage_start",
                heading=90,
                minZ=29.22,
                maxZ=33.22
            }, {
                options = {
                    {
                        event = "prp-garbage:starting",
                        icon = "fas fa-circle",
                        label = "Clock in"
                    },
                },
                job = {"all"},
                distance = 1.5
            })

            -- talk to a sus man yo at legion yo
            AddBoxZone("sk1c2_isaniceperson", vector3(22.08, -1103.78, 38.15), 0.8, 0.8, {
                name="sk1c2_isaniceperson",
                heading=340,
                --debugPoly=true,
                minZ=34.95,
                maxZ=38.95
            }, 
            {
                options = {
                    {
                        event = "thermal:man",
                        icon = "fas fa-question",
                        label = "Speak to man"
                    },
                },
                job = {"all"},
                distance = 1.5
            })  

            -- Karen :0

            AddBoxZone("karens_a_op ", vector3(-524.15, -711.09, 33.83), 0.7, 0.7, {
                name="karens_a_op ",
                heading=25,
                debugPoly=false,
                minZ=31.03,
                maxZ=35.03
            }, {
                options = {
                    {
                        event = "Karen-Menu",
                        icon = "fas fa-circle",
                        label = "Speak to Karen"
                    },
                },
                job = {"all"},
                distance = 1.5
            })   

            -- car part selling

            AddBoxZone("ss_man", vector3(296.2, -1714.26, 29.22), 0.7, 0.9, {
                name="ss_man",
                heading=0,
                --debugPoly=true,
                minZ=26.02,
                maxZ=30.02
            }, 
            {
                options = {
                    {
                        event = "sellcarhood",
                        icon = "fas fa-circle",
                        label = "Sell car Hood"
                    },
                    {
                        event = "sellcarbattery",
                        icon = "fas fa-circle",
                        label = "Sell car battery"
                    }
                },
                job = {"all"},
                distance = 1.5
            })  

            -- sell turtles

            AddBoxZone("sell_turtles", vector3(-1082.31, -315.48, 37.67), 0.8, 0.6, {
                name="sell_turtles",
                heading=0,
                --debugPoly=true,
                minZ=34.67,
                maxZ=38.67
            }, 
            {
                options = {
                    {
                        event = "sellturtle",
                        icon = "fas fa-circle",
                        label = "Sell Turtle"
                    },
                },
                job = {"all"},
                distance = 1.5
            }) 
            
            -- Fishing New shit

            AddBoxZone("fishing_shiet", vector3(-1037.53, -1396.97, 5.55), 0.7, 0.7, {
                name="fishing_shiet",
                heading=345,
                debugPoly=false,
                minZ=2.35,
                maxZ=6.35
            }, 
            {
                options = {
                    {
                        event = "fishingmenu",
                        icon = "fas fa-circle",
                        label = "Sell Fish"
                    },
                },
                job = {"all"},
                distance = 1.5
            }) 
 
            
            -- Drilling Sell
            AddBoxZone("drillsell", vector3(-2203.02, 4244.53, 47.82), 0.7, 0.7, {
                name="drillsell",
                heading=305,
                minZ=45.22,
                maxZ=49.22
            }, {
                options = {
                    {
                        event = "sellgoldenore",
                        icon = "fas fa-circle",
                        label = "Sell Gold Ore"
                    },
                    {
                        event = "selluncutruby",
                        icon = "fas fa-circle",
                        label = "Sell Uncut Ruby"
                    },
                    {
                        event = "selluncutsapphire",
                        icon = "fas fa-circle",
                        label = "Sell Uncut Sapphire"
                    },
                    {
                        event = "sellsilverore",
                        icon = "fas fa-circle",
                        label = "Sell Silver Ore"
                    }
                },
                job = {"all"},
                distance = 1.5
            })

            -- Digital Den shit
            AddBoxZone("ls_sk", vector3(481.23, -566.81, 28.92), 0.1, 0.3, {
            name="ls_sk",
            heading=0,
            minZ=25.72,
            maxZ=29.72
            }, {
                options = {
                    {
                        event = "jim:laptop1",
                        icon = "fas fa-american-sign-language-interpreting",
                        label = "Speak to Jim"
                    },
                },
                job = {"all"},
                distance = 1.5
            })

            -- sectet enter

            AddBoxZone("secret_enter", vector3(-1375.67, -336.19, 39.16), 0.7, 0.7, {
                name="secret_enter",
                heading=30,
                minZ=36.15,
                maxZ=40.15
                }, {
                    options = {
                        {
                            event = "sk1c2:entersecret",
                            icon = "fas fa-circle",
                            label = "Speak to ting"
                        },
                    },
                    job = {"all"},
                    distance = 1.5
                })

            AddBoxZone("secret_leave", vector3(1138.11, -3199.39, -39.67), 1.4, 0.8, {
                name="secret_leave",
                heading=90,
                debugPoly = false,
                minZ=-42.87,
                maxZ=-38.47
                }, {
                    options = {
                        {
                            event = "secret:exit",
                            icon = "fas fa-circle",
                            label = "Leave"
                        },
                    },
                    job = {"all"},
                    distance = 1.5
                })

                AddBoxZone("roll_cash_wash", vector3(1122.38, -3193.87, -40.4), 1, 1, {
                    name="roll_cash_wash",
                    heading=0,
                    debugPoly = false,
                    minZ=-43.4,
                    maxZ=-39.4
                    }, {
                        options = {
                            {
                                event = "rollcash:menu",
                                icon = "fas fa-circle",
                                label = "Clean roll of cash"
                            },
                        },
                        job = {"all"},
                        distance = 1.5
                    })
                    AddBoxZone("wash_cashstack", vector3(1123.74, -3193.85, -40.4), 1, 1, {
                        name="wash_cashstack",
                        heading=0,
                        debugPoly = false,
                        minZ=-43.4,
                        maxZ=-39.4
                        }, {
                            options = {
                                {
                                    event = "stackcash:menu",
                                    icon = "fas fa-circle",
                                    label = "Clean stack of cash"
                                },
                            },
                            job = {"all"},
                            distance = 1.5
                        })     
                        AddBoxZone("wash_band", vector3(1125.47, -3193.73, -40.4), 1, 1, {
                            name="wash_band",
                            heading=0,
                            debugPoly = false,
                            minZ=-43.4,
                            maxZ=-39.4
                            }, {
                                options = {
                                    {
                                        event = "bandnotes:menu",
                                        icon = "fas fa-circle",
                                        label = "Clean band of notes"
                                    },
                                },
                                job = {"all"},
                                distance = 1.5
                            })      
                            AddBoxZone("secret_process", vector3(1135.09, -3197.84, -39.67), 1, 1, {
                                name="secret_process",
                                heading=0,
                                debugPoly = false,
                                minZ=-42.87,
                                maxZ=-38.87
                                }, {
                                    options = {
                                        {
                                            event = "process:rollcash:sk1c2",
                                            icon = "fas fa-circle",
                                            label = "start processing wet cash roll"
                                        },
                                    },
                                    job = {"all"},
                                    distance = 1.5
                                })  
                                AddBoxZone("secret_process2", vector3(1132.22, -3197.58, -39.67), 1, 1, {
                                    name="secret_process2",
                                    heading=0,
                                    debugPoly = false,
                                    minZ=-42.87,
                                    maxZ=-38.87
                                    }, {
                                        options = {
                                            {
                                                event = "process:cashstack:sk1c2",
                                                icon = "fas fa-circle",
                                                label = "start processing wet cashstack"
                                            },
                                        },
                                        job = {"all"},
                                        distance = 1.5
                                    })  

                                    AddBoxZone("secret_process3", vector3(1129.19, -3197.71, -39.67), 1, 1, {
                                        name="secret_process3",
                                        heading=0,
                                        debugPoly = false,
                                        minZ=-42.87,
                                        maxZ=-38.87
                                        }, {
                                            options = {
                                                {
                                                    event = "process:band:sk1c2",
                                                    icon = "fas fa-circle",
                                                    label = "start processing wet bands"
                                                },
                                            },
                                            job = {"all"},
                                            distance = 1.5
                                        })  

            -- AddCircleZone(
            --     "lol",
            --     vector3(1133.19, -468.65, 66.65),
            --     0.2,
            --     {
            --         name = "lol",
            --         debugPoly = false,
            --         useZ = true
            --     },
            --     {
            --         options = {
            --             {
            --                 event = "digital:denstore",
            --                 icon = "fas fa-shopping-basket",
            --                 label = "Digital Den Store"
            --             },
            --         },
            --         job = {"all"},
            --         distance = 1.5
            --     }
            -- )   
        

            -------- Car Rental --------

            AddBoxZone("vehicle_rental", vector3(110.48, -1090.28, 29.3), 0.9, 0.5, {
                name="vehicle_rental",
                heading=0,
                debugPoly=false,
                minZ=26.3,
                maxZ=30.3
            }, {
                options = {
                    {
                        event = "Vehicle:Rental",
                        icon = "fas fa-key",
                        label = "Vehicle Rental"
                    },
                },
                job = {"all"},
                distance = 1.5
            })

            -------- pillbox shit --------

            AddBoxZone("pillbox", vector3(310.25, -569.04, 43.28), 1, 1, {
                name="pillbox",
                heading=340,
                debugPoly=false,
                minZ=40.08,
                maxZ=44.08
            }, {
                options = {
                    {
                        event = "pillboxmenu",
                        icon = "fas fa-circle",
                        label = "Grab Medical supplies"
                    },
                },
                job = {"ems"},
                distance = 1.5
            })

            -- mystery --

            AddBoxZone("mystery", vector3(472.11, -1308.82, 29.21), 0.7, 0.7, {
                name="mystery",
                heading=25,
                minZ=26.41,
                maxZ=30.41
            }, {
                options = {
                    {
                        event = "mystery",
                        icon = "fas fa-circle",
                        label = "Sell vehicle parts"
                    },
                },
                job = {"all"},
                distance = 1.5
            })

            -------- Police Keyfob --------

            AddCircleZone(
                "civmdt",
                vector3(442.41, -983.92, 30.69),
                0.25,
                {
                    name = "civmdt",
                    debugPoly = false,
                    useZ = true
                },
                {
                    options = {
                        {
                            event = "civ:mdt:open",
                            icon = "fas fa-tablet",
                            label = "Open Civ MDT"
                        }
                    },
                    job = {"all"},
                    distance = 1.5
                }
            )


            AddCircleZone(
                "keyfob",
                vector3(469.3, -974.88, 26.96),
                0.2,
                {
                    name = "keyfob",
                    debugPoly = false,
                    useZ = true
                },
                {
                    options = {
                        {
                            event = "Police:Keyfob",
                            icon = "fas fa-key",
                            label = "Grab Keyfob"
                        }
                    },
                    job = {"police"},
                    distance = 1.5
                }
            )
            
            AddCircleZone(
                "keyfob2",
                vector3(469.44, -992.47, 27.02),
                0.2,
                {
                    name = "keyfob2",
                    debugPoly = false,
                    useZ = true
                },
                {
                    options = {
                        {
                            event = "Police:Keyfob",
                            icon = "fas fa-key",
                            label = "Grab Keyfob"
                        }
                    },
                    job = {"police"},
                    distance = 1.5
                }
            )
end)