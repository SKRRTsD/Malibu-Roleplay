PRP = PRP or {}
PRP.Doors = PRP.Doors or {}
PRP.DoorCoords = PRP.DoorCoords or {}
PRP.offSet = PRP.offSet or {}

PRP.DoorCoords = {
    -- MRPD --
    [1] = { ["x"] = 441.21759033203, ["y"] = -977.9736328125, ["z"] = 30.678344726562 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_04'}, -- Main Front Side Door
    [2] = { ["x"] = 440.21539306641, ["y"] = -985.80657958984, ["z"] = 30.678344726562 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_05'}, -- Main Front Side Door
    [3] = { ["x"] = 445.88571166992, ["y"] = -983.65716552734, ["z"] = 30.678344726562 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_04'}, -- Reception
    [4] = { ["x"] = 458.10989379883, ["y"] = -990.052734375, ["z"] = 30.678344726562 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_05'}, -- Captains Office
    [5] = { ['x'] = 453.00659179688, ['y'] = -995.72308349609, ['z'] = 30.678344726562 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_05'}, -- Archives
    [6] = { ['x'] = 456.60659790039, ['y'] = -972.63293457031, ['z'] = 30.695190429688 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_reception_entrancedoor'}, -- Side Doors
    [7] = { ['x'] = 457.70111083984, ['y'] = -972.63293457031, ['z'] = 30.695190429688 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_reception_entrancedoor'}, -- Side Doors
    [8] = { ['x'] = 442.57583618164, ['y'] = -998.32086181641, ['z'] = 30.678344726562 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_reception_entrancedoor'}, -- Side Doors
    [9] = { ['x'] = 441.36264038086, ['y'] = -998.38684082031, ['z'] = 30.678344726562 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_reception_entrancedoor'}, -- Side Doors
    [10] = { ['x'] = 479.39340209961, ['y'] = -986.86151123047, ['z'] = 30.678344726562 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_04'}, -- Forensic
    [11] = { ['x'] = 479.20880126953, ['y'] = -987.96923828125, ['z'] = 30.678344726562 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_05'}, -- Forensic
    [12] = { ['x'] = 474.8307800293, ['y'] = -989.51208496094, ['z'] = 30.678344726562 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_04'}, -- Briefing
    [13] = { ['x'] = 438.47473144531, ['y'] = -995.70989990234, ['z'] = 30.678344726562 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_01'}, -- Press Room
    [14] = { ['x'] = 438.58023071289, ['y'] = -994.48352050781, ['z'] = 30.678344726562 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_01'}, -- Press Room
    [15] = { ['x'] = 469.02856445312, ['y'] = -985.63513183594, ['z'] = 30.678344726562 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_01'}, -- Hallway to Shooting, Briefing, ect
    [16] = { ['x'] = 469.04174804688, ['y'] = -986.75604248047, ['z'] = 30.678344726562 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_01'}, --Hallway to Shooting, Briefing, ect
    [17] = { ['x'] = 469.14724731445, ['y'] = -1013.8813476562, ['z'] = 26.381713867188 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_03'}, -- Backdoor By Gate
    [18] = { ['x'] = 479.40658569336, ['y'] = -998.88793945312, ['z'] = 30.678344726562 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_03'}, -- Armory
    [19] = { ['x'] = 449.61758422852, ['y'] = -981.78460693359, ['z'] = 34.958251953125 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_05'}, -- Training Room
    [20] = { ['x'] = 449.65713500977, ['y'] = -989.9208984375, ['z'] = 34.958251953125 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_04'}, -- Training Room
    [21] = { ['x'] = 449.73626708984, ['y'] = -995.65716552734, ['z'] = 34.958251953125 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_05'}, -- Dispatch Center
    [22] = { ['x'] = 459.30990600586, ['y'] = -991.09448242188, ['z'] = 34.958251953125 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_05'}, -- Meeting Room
    [23] = { ['x'] = 459.1516418457, ['y'] = -980.37359619141, ['z'] = 34.958251953125 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_04'}, -- Meeting Room
    [24] = { ['x'] = 463.91207885742, ['y'] = -983.81536865234, ['z'] = 43.686401367188 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_03'}, -- Heli Pad
    [25] = { ['x'] = 479.43298339844, ['y'] = -1002.6065673828, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_01'}, -- Lineup
    [26] = { ['x'] = 475.22637939453, ['y'] = -1007.340637207, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_01'}, -- Processing
    [27] = { ['x'] = 480.30328369141, ['y'] = -998.20220947266, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_02'}, -- Door past lineup
    [28] = { ['x'] = 481.58242797852, ['y'] = -998.22857666016, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_02'}, -- Door past lineup
    [29] = { ['x'] = 482.21539306641, ['y'] = -996.23736572266, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_04'}, -- Interrogation 2
    [30] = { ['x'] = 482.24176025391, ['y'] = -992.91430664062, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_04'}, -- Observation 2
    [31] = { ['x'] = 482.28131103516, ['y'] = -988.24615478516, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_04'}, -- Interrogation 1
    [32] = { ['x'] = 482.33407592773, ['y'] = -984.73846435547, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_04'}, -- Observation 1
    [33] = { ['x'] = 479.41979980469, ['y'] = -986.80877685547, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_02'}, -- Door to Evidence, Garage, Identificaiton
    [34] = { ['x'] = 479.51208496094, ['y'] = -985.43737792969, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_02'}, -- Door to Evidence, Garage, Identificaiton
    [35] = { ['x'] = 475.70111083984, ['y'] = -989.67034912109, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_03'}, -- Evidence
    [36] = { ['x'] = 486.84396362305, ['y'] = -1000.6285400391, ['z'] = 30.678344726562 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_03'}, -- Armory
    [37] = { ['x'] = 487.29229736328, ['y'] = -1002.5670166016, ['z'] = 30.678344726562 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_03'}, -- Shooting Range
    [38] = { ['x'] = 486.30328369141, ['y'] = -1002.6197509766, ['z'] = 30.678344726562 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_03'}, -- Shooting Range
    [39] = { ['x'] = 477.16485595703, ['y'] = -999.07250976562, ['z'] = 30.678344726562 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_04'}, -- Briefing
    [40] = { ['x'] = 468.0263671875, ['y'] = -1013.947265625, ['z'] = 26.381713867188   , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_03'}, -- Backdoor By Gate
    [41] = { ['x'] = 470.83517456055, ['y'] = -1008.3296508789, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_02'}, -- Doors to Process, Cells, Line up, ect
    [42] = { ['x'] = 470.69012451172, ['y'] = -1009.7274780273, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_02'}, -- Doors to Process, Cells, Line up, ect
    [43] = { ['x'] = 475.20001220703, ['y'] = -1010.2944946289, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_door_04'}, -- Mugshot
    [44] = { ['x'] = 476.05715942383, ['y'] = -1008.4747314453, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_cells_door'}, -- Cell by Mugshot
    [45] = { ['x'] = 477.58682250977, ['y'] = -1011.4945068359, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_cells_door'}, -- Cell 1
    [46] = { ['x'] = 480.31649780273, ['y'] = -1011.4154052734, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_cells_door'}, -- Cell 2
    [47] = { ['x'] = 483.23077392578, ['y'] = -1011.3890380859, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_cells_door'}, -- Cell 3
    [48] = { ['x'] = 486.40878295898, ['y'] = -1011.4022216797, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_cells_door'}, -- Cell 4
    [49] = { ['x'] = 484.93188476562, ['y'] = -1008.4747314453, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_cells_door'}, -- Cell 5
    [50] = { ['x'] = 481.54284667969, ['y'] = -1004.4791259766, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_cells_door'}, -- Cell by Lineup
    [51] = { ['x'] = 463.54284667969, ['y'] = -996.29010009766, ['z'] = 26.26379394531 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_room13_parkingdoor'}, -- Parking Door
    [52] = { ['x'] = 463.62197875977, ['y'] = -975.11206054688, ['z'] = 26.263793945312 , ["lock"] = 1,  ["doorType"] = 'gabz_mrpd_room13_parkingdoor'}, -- Parking Door
    [53] = { ['x'] = 489.08193969727, ['y'] = -1020.0619506836, ['z'] = 28.209747314453 , ["lock"] = 1,  ["doorType"] = 'hei_prop_station_gate'}, -- Back Gate MRPD

    -- Pillbox Medical --
    [54] =  { ["x"] = 324.89,["y"] = -589.93,["z"] = 43.29,["h"] = 357.7, ["info"] = " doctor1", ["lock"] = 1, ["doorType"] = "gabz_pillbox_doubledoor_l"},
    [55] =  { ["x"] = 326.08,["y"] = -589.8,["z"] = 43.29,["h"] = 290.47, ["info"] = " doctor2", ["lock"] = 1, ["doorType"] = "gabz_pillbox_doubledoor_r"},
    [56] =  { ["x"] = 326.28,["y"] = -579.66,["z"] = 43.29,["h"] = 28.71, ["info"] = " doctor3", ["lock"] = 1, ["doorType"] = "gabz_pillbox_doubledoor_r"},
    [57] =  { ["x"] = 326.16,["y"] = -578.49,["z"] = 43.31,["h"] = 101.16, ["info"] = " doctor4", ["lock"] = 1, ["doorType"] = "gabz_pillbox_doubledoor_l"},
    [58] =  { ["x"] = 324.65,["y"] = -576.29,["z"] = 43.29,["h"] = 295.18, ["info"] = " doctor5r", ["lock"] = 1, ["doorType"] = "gabz_pillbox_doubledoor_r"},
    [59] =  { ["x"] = 323.88,["y"] = -575.72,["z"] = 43.29,["h"] = 179.2, ["info"] = " doctor5l", ["lock"] = 1, ["doorType"] = "gabz_pillbox_doubledoor_l"},
    [60] =  { ["x"] = 319.29,["y"] = -573.97,["z"] = 43.3,["h"] = 191.99, ["info"] = " doctor6r", ["lock"] = 1, ["doorType"] = "gabz_pillbox_doubledoor_r"},
    [61] =  { ["x"] = 318.74,["y"] = -573.66,["z"] = 43.3,["h"] = 153.63, ["info"] = " doctor6l", ["lock"] = 1, ["doorType"] = "gabz_pillbox_doubledoor_l"},
    [62] =  { ["x"] = 313.45,["y"] = -572.17,["z"] = 43.29,["h"] = 42.38, ["info"] = " doctor7r", ["lock"] = 1, ["doorType"] = "gabz_pillbox_doubledoor_r"},
    [63] =  { ["x"] = 312.8,["y"] = -571.49,["z"] = 43.29,["h"] = 239.47, ["info"] = " doctor7l", ["lock"] = 1, ["doorType"] = "gabz_pillbox_doubledoor_l"},
    [64] =  { ["x"] = 348.87,["y"] = -587.97,["z"] = 43.29,["h"] = 89.22, ["info"] = " doctor8", ["lock"] = 1, ["doorType"] = "gabz_pillbox_doubledoor_r"},
    [65] =  { ["x"] = 349.02,["y"] = -587.31,["z"] = 43.29,["h"] = 30.67, ["info"] = " doctor9", ["lock"] = 1, ["doorType"] = "gabz_pillbox_doubledoor_l"},
    [66] =  { ["x"] = 304.4,["y"] = -571.6,["z"] = 43.29,["h"] = 131.72, ["info"] = " doctor10", ["lock"] = 1, ["doorType"] = "gabz_pillbox_singledoor"},
    [67] =  { ["x"] = 307.94,["y"] = -569.85,["z"] = 43.29,["h"] = 33.55, ["info"] = " doctor11", ["lock"] = 1, ["doorType"] = "gabz_pillbox_singledoor"},
    [68] =  { ["x"] = 308.53607177734,["y"] = -597.13372802734,["z"] = 43.283985137939, ["info"] = " doctor12", ["lock"] = 1, ["doorType"] = "gabz_pillbox_singledoor"},

    -- Prison Cells -- 
    [69] =  { ["x"] = 1769.34,["y"] = 2498.60,["z"] = 45.74, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 1
    [70] =  { ["x"] = 1765.98,["y"] = 2496.79,["z"] = 45.74, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 2
    [71] =  { ["x"] = 1762.93,["y"] = 2494.90,["z"] = 45.74, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 3
    [72] =  { ["x"] = 1756.62,["y"] = 2491.20,["z"] = 45.74, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 4
    [73] =  { ["x"] = 1753.39,["y"] = 2489.57,["z"] = 45.74, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 5
    [74] =  { ["x"] = 1750.38,["y"] = 2487.46,["z"] = 45.74, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 6
    [75] =  { ["x"] = 1769.28,["y"] = 2498.45,["z"] = 49.69, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 7
    [76] =  { ["x"] = 1766.20,["y"] = 2496.63,["z"] = 49.69, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 8
    [77] =  { ["x"] = 1763.07,["y"] = 2494.77,["z"] = 49.69, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 9
    [78] =  { ["x"] = 1759.72,["y"] = 2492.95,["z"] = 49.69, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 10
    [79] =  { ["x"] = 1756.60,["y"] = 2491.18,["z"] = 49.69, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 11
    [80] =  { ["x"] = 1753.46,["y"] = 2489.39,["z"] = 49.69, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 12
    [81] =  { ["x"] = 1750.40,["y"] = 2487.62,["z"] = 49.69, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 13
    [82] =  { ["x"] = 1757.55,["y"] = 2474.92,["z"] = 45.74, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 14
    [83] =  { ["x"] = 1760.48,["y"] = 2477.27,["z"] = 45.74, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 15
    [84] =  { ["x"] = 1763.60,["y"] = 2479.10,["z"] = 45.74, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 16
    [85] =  { ["x"] = 1766.82,["y"] = 2480.70,["z"] = 45.74, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 17
    [86] =  { ["x"] = 1770.13,["y"] = 2482.50,["z"] = 45.74, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 18
    [87] =  { ["x"] = 1773.07,["y"] = 2484.29,["z"] = 45.74, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 19
    [88] =  { ["x"] = 1776.36,["y"] = 2485.96,["z"] = 45.74, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 20
    [89] =  { ["x"] = 1757.39,["y"] = 2475.11,["z"] = 49.69, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 21
    [90] =  { ["x"] = 1760.63,["y"] = 2476.81,["z"] = 49.69, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 22
    [91] =  { ["x"] = 1763.66,["y"] = 2478.88,["z"] = 49.69, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 23
    [92] =  { ["x"] = 1766.88,["y"] = 2480.50,["z"] = 49.69, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 24
    [93] =  { ["x"] = 1770.06,["y"] = 2482.26,["z"] = 49.69, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 25
    [94] =  { ["x"] = 1773.01,["y"] = 2484.37,["z"] = 49.69, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 26
    [95] =  { ["x"] = 1776.49,["y"] = 2485.74,["z"] = 49.69, ["lock"] = 0, ["doorType"] = "sanhje_Prison_block_cell_door" }, -- Cell 27

    -- Jewl Store --
    [96] =  { ["x"] = -632.36,["y"] = -236.92,["z"] = 38.05,["h"] = 306.14, ["info"] = " 1", ["lock"] = 1,["doorType"] = 1425919976 },
    [97] =  { ["x"] = -631.06,["y"] = -238.68,["z"] = 38.11,["h"] = 298.21, ["info"] = " 2", ["lock"] = 1,["doorType"] = 9467943 },
    [98] = { ["x"] = -628.11181640625, ["y"] = -229.98641967773, ["z"] = 38.057052612305, ["info"] = " 3", ["lock"] = 1, ["doorType"] = 1335309163 },

    -- PDM Doors Locks --
    [99] =  { ["x"] = -32.13,["y"] = -1102.59,["z"] = 26.43,["h"] = 254.48, ["info"] = " PDM Doors", ["lock"] = 1, ["doorType"] = "v_ilev_fib_door1"},
    [100] =  { ["x"] = -33.99,["y"] = -1108.18,["z"] = 26.43,["h"] = 82.73,  ["info"] = " PDM Doors", ["lock"] = 1, ["doorType"] = "v_ilev_fib_door1"},

    -- Paleto Office
    [101] = { ["x"] = -443.23126220703, ["y"] = 6015.7934570313, ["z"] = 31.716367721558, ["lock"] = 1,["doorType"] = "v_ilev_shrf2door"},
    [102] = { ["x"] = -444.05133056641, ["y"] = 6016.6479492188, ["z"] = 31.716367721558, ["lock"] = 1,["doorType"] = "v_ilev_shrf2door"},
    [103] = { ["x"] = 1855.1921386719, ["y"] = 3683.4545898438, ["z"] = 34.26749420166, ["lock"] = 1,["doorType"] = "v_ilev_shrfdoor"},

    -- Best Buds --
    [104] = { ["x"] = -622.488,["y"] = -291.1915,["z"] = 35.34, ["lock"] = 1, ["doorType"] = "v_ilev_gendoor01"},

    -- Prison Gates --
    [105] =  { ["x"] = 1845.371,["y"] = 2608.419,["z"] = 45.59, ["lock"] = 1, ["doorType"] = "prop_gate_prison_01"}, -- Gate Outside
    [106] =  { ["x"] = 1819.203,["y"] = 2608.259,["z"] = 45.59, ["lock"] = 1, ["doorType"] = "prop_gate_prison_01"}, -- Gates Inside
    [107] =  { ["x"] = 1796.8199462891,["y"] = 2596.1027832031,["z"] = 45.795558929443, ["lock"] = 1, ["doorType"] = "prop_fnclink_03gate5"}, -- Gate Outside
    [108] =  { ["x"] = 1797.0400390625,["y"] = 2592.251953125,["z"] = 45.795680999756, ["lock"] = 0, ["doorType"] = "prop_fnclink_03gate5"}, -- Gate going to cafeteria
 
    -- Pacific Bank --
    [109] = { ['x'] = 256.3116, ['y'] = 220.6579, ['z'] = 106.4296 , ["lock"] = 1,  ["doorType"] = 'hei_v_ilev_bk_gate_pris'}, -- First Gate
    [110] = { ["x"] = 261.99899291992, ["y"] = 221.50576782227, ["z"] = 106.68346405029, ["lock"] = 0,["doorType"] = "hei_v_ilev_bk_gate2_pris"}, -- Second Gate
    [111] = { ['x'] = 251.8576, ['y'] = 221.0655, ['z'] = 101.8324 , ["lock"] = 1,  ["doorType"] = 'hei_v_ilev_bk_safegate_pris'}, -- After Vault Gate
    [112] = { ['x'] = 261.3004, ['y'] = 214.5051, ['z'] = 101.8324 , ["lock"] = 1,  ["doorType"] = 'hei_v_ilev_bk_safegate_pris'}, -- Last Gate

    -- Prison Infirmary --
    [113] = { ['x'] = 1843.35, ['y'] = 2593.04, ['z'] = 46.01 , ["lock"] = 1,  ["doorType"] = -1033001619 }, -- Laboratory
    [114] = { ['x'] = 1841.49, ['y'] = 2594.16, ['z'] = 46.01 , ["lock"] = 1,  ["doorType"] = -1437850419 }, -- Double Doors
    [115] = { ['x'] = 1826.39, ['y'] = 2585.90, ['z'] = 46.01 , ["lock"] = 1,  ["doorType"] = 1373390714 }, -- Double Doors
    [116] = { ['x'] = 1766.32, ['y'] = 2574.69, ['z'] = 45.75 , ["lock"] = 1,  ["doorType"] = "sanhje_Prison_infirmary_door1" }, -- Reception to hallway double doors
    [117] = { ['x'] = 1764.02, ['y'] = 2574.69, ['z'] = 45.75 , ["lock"] = 1,  ["doorType"] = "sanhje_Prison_infirmary_door1" }, -- Reception to hallway double doors

    -- Prison Reception --
    [118] = { ['x'] = 1843.72, ['y'] = 2577.07, ['z'] = 46.01 , ["lock"] = 1,  ["doorType"] = "sanhje_prison_recep_door01" }, -- Reception Doors
    [119] = { ['x'] = 1836.90, ['y'] = 2577.07, ['z'] = 46.01 , ["lock"] = 1,  ["doorType"] = "sanhje_prison_recep_door01" }, -- Reception Doors
    [120] = { ['x'] = 1837.18, ['y'] = 2589.97, ['z'] = 46.01 , ["lock"] = 1,  ["doorType"] = "sanhje_prison_recep_cagedoor" }, -- Cage Door
    [121] = { ['x'] = 1838.58, ['y'] = 2594.52, ['z'] = 46.01 , ["lock"] = 1,  ["doorType"] = -684929024 }, -- Before Metal Detector Door
    [122] = { ['x'] = 1831.18, ['y'] = 2594.23, ['z'] = 46.01 , ["lock"] = 1,  ["doorType"] = -684929024 }, -- After Metal Detector Door

    -- Vanilla Unicorn --
    [123] = { ['x'] = 128.55, ['y'] = -1298.27, ['z'] = 29.25 , ["lock"] = 1,  ["doorType"] = -1116041313 }, -- Front Door
    [124] = { ['x'] = 113.61, ['y'] = -1296.63, ['z'] = 29.26 , ["lock"] = 1,  ["doorType"] = 390840000 }, -- Door to Clothing
    [125] = { ['x'] = 99.74, ['y'] = -1293.32, ['z'] = 29.26 , ["lock"] = 1,  ["doorType"] = 390840000 }, -- Boss Door
    [126] = { ['x'] = 95.44, ['y'] = -1285.21, ['z'] = 29.27 , ["lock"] = 1,  ["doorType"] = 1695461688 }, -- Back Door

    --Bahama Mama--
    [127] = { ["x"] = -1388.57, ["y"] = -587.76, ["z"] =  30.32, ["lock"] = 1,  ["doorType"] = -1119680854}, --Front door
    [128] = { ["x"] =  -1387.63, ["y"] = -586.99, ["z"] = 30.32, ["lock"] = 1, ["doorType"] = -1119680854}, --Front door
    [129] = { ["x"] = -1371.43, ["y"] = -607.98, ["z"] =  30.72, ["lock"] = 1,  ["doorType"] = 401003935}, --Office door
    [130] = { ["x"] = -1392.61, ["y"] = -624.71, ["z"] = 30.32, ["lock"] = 1, ["doorType"] = 401003935}, --Garage

    -- Ruthless Customs--
    [131] = { ["x"] = 948.43, ["y"] = -964.73, ["z"] = 39.50, ["lock"] = 1, ["doorType"] = 1289778077}, --Front Office Door
    [132] = { ["x"] = 954.76, ["y"] = -972.42, ["z"] = 39.50, ["lock"] = 1, ["doorType"] = -626684119}, --Back Office Door

    -- Burger Shot --
    [133] = { ["x"] = -1197.05, ["y"] = -883.95, ["z"] = 13.99, ["lock"] = 1, ["doorType"] = 1517256706}, --Side Door
    [134] = { ["x"] = -1198.7, ["y"] = -884.3, ["z"] = 13.8, ["lock"] = 1, ["doorType"] = -1475798232}, --Side Door
    [135] = { ["x"] = -1199.69, ["y"] = -903.35, ["z"] = 13.98, ["lock"] = 1, ["doorType"] = -1877571861}, --Back Door
    [136] = { ["x"] = -1200.23, ["y"] = -892.24, ["z"] = 13.99, ["lock"] = 1, ["doorType"] = -1253427798}, --Kitchen Door

    -- Auto Exotics --
    [137] = { ["x"] = 541.23, ["y"] = -196.64, ["z"] = 54.49, ["lock"] = 1, ["doorType"] = -1309543596}, --Outside Office Door
    [138] = { ["x"] = 552.26, ["y"] = -192.79, ["z"] = 54.48, ["lock"] = 1,["doorType"] = -1309543596}, --Back Door
    [139] = { ["x"] = 534.48, ["y"] = -167.06, ["z"] = 54.49, ["lock"] = 1, ["doorType"] = 141631573}, --Upstair Door
    [140] = { ["x"] = 534.49, ["y"] = -167.05, ["z"] = 50.69, ["lock"] = 1, ["doorType"] = 141631573}, --Downstair Door
    [141] = { ["x"] = 545.02, ["y"] = -193.41, ["z"] = 54.49, ["lock"] = 1,["doorType"] = 1497823487}, -- Inside Office Door

    --Weed Shop--
    [142] = { ["x"] = 375.34, ["y"] = -821.13, ["z"] = 29.30, ["lock"] = 1,["doorType"] = -311575617}, --Back Door
    [143] = { ["x"] = 382.28076171875, ["y"] = -825.06427001953, ["z"] = 29.303098678589, ["h"] = 188.08209228516, ["unlock"] = 1, ["doorType"] = -538477509}, --Outside Office Door
    
    --casino--
    [144] = { ["x"] = 923.81793212891, ["y"] =  43.288497924805, ["z"] = 81.09610748291, ["lock"] = 1,["doorType"] = 558771340}, 
    [145] = { ["x"] = 924.60363769531, ["y"] =  44.212211608887, ["z"] = 81.105430603027,  ["lock"] = 1, ["doorType"] = 21324050}, 
    [146] = { ["x"] = 925.33868408203, ["y"] =   45.637084960938, ["z"] = 81.09595489502, ["lock"] = 1,["doorType"] = 558771340}, 
    [147] = { ["x"] = 926.11907958984, ["y"] =  46.585662841797, ["z"] = 81.105598449707, ["lock"] = 1,["doorType"] = 21324050}, 
    [148] = { ["x"] = 926.82586669922, ["y"] =  48.20544052124, ["z"] = 81.095985412598,  ["lock"] = 1, ["doorType"] = 558771340}, 
    [149] = { ["x"] = 927.45343017578, ["y"] =   49.029636383057, ["z"] = 81.096031188965, ["lock"] = 1,["doorType"] = 21324050}, 
    [150] = { ["x"] = 1122.3920898438, ["y"] =  264.91351318359, ["z"] = -51.040714263916, ["lock"] = 1, ["doorType"] = 680601509}, 
    [151] = { ["x"] = 1122.3088378906, ["y"] =  264.10357666016, ["z"] = -51.040699005127, ["lock"] = 1, ["doorType"] = 680601509},
    [152] = { ["x"] = 1110.7484130859, ["y"] =  250.91006469727, ["z"] = -45.840972900391, ["lock"] = 1, ["doorType"] = -643593781}, 
    [153] = { ["x"] =  1111.4602050781, ["y"] =  250.88150024414, ["z"] = -45.841007232666, ["lock"] = 1, ["doorType"] = -643593781},

    --arcade--
    [154] = { ["x"] = 751.56, ["y"] =-809.78, ["z"] = 23.66, ["lock"] = 1,  ["doorType"] = -1989765534},
    [155] = { ["x"] = 734.83, ["y"] = -816.24, ["z"] =22.67, ["lock"] = 1, ["doorType"] = 855881614},
    [156] = { ["x"] =740.57409667969, ["y"] = -797.63708496094, ["z"] =19.660776138306, ["lock"] = 1, ["doorType"] = -2023754432},
    [157] = { ["x"] =757.99237060547, ["y"] = -815.78149414062, ["z"] = 26.515699386597, ["lock"] = 1,["doorType"] = -1989765534},

    -- Paleto bank
    [158] = { ["x"] = -105.674, ["y"] = 6472.675, ["z"] = 31.627, ["lock"] = 1,  ["doorType"] = 'v_ilev_cbankvaulgate01'},
    [159] = { ["x"] = -105.522, ["y"] = 6475.149, ["z"] = 31.627, ["lock"] = 1,  ["doorType"] = 1309269072},
}
PRP.offSet = {
    ["gabz_mrpd_door_01"] = {1.05, 0.0, 0.0},
    ["gabz_mrpd_door_02"] = {1.05, 0.0, 0.0},
    ["gabz_mrpd_door_03"] = {1.05, 0.0, 0.0},
    ["gabz_mrpd_door_03r"] = {1.05, 0.0, 0.0},
    ["gabz_mrpd_door_04"] = {1.05, 0.0, 0.0},
    ["gabz_mrpd_door_05"] = {-1.14, 0.0, 0.0},
    ["gabz_mrpd_cells_door"] = {-1.14, 0.0, 0.0},
    ["gabz_mrpd_garage_door"] = {0.00, 0.0, 0.0},
    ["gabz_mrpd_room13_parkingdoor"] = {1.05, 0.0, 0.0},
    ["gabz_mrpd_reception_entrancedoor"] = {1.05, 0.0, 0.0},
    ["v_ilev_rc_door2"] = {1.05, 0.0, 0.0},
    ["bobo_prison_cellgate"] = {-1.15, 0.0, 1.10},
    [-1156020871] = {1.55, 0.0, -0.1},
    [-1033001619] = {1.15, 0.0, 0.0},
    ["prop_fnclink_03gate5"] = {1.55, 0.0, -0.1},
    ["hei_v_ilev_bk_gate2_pris"] = {1.20, 0.0, 0.0},
    ["ba_Prop_Door_Club_Glass"] = {1.20, 0.0, 0.0},

    [-222270721] = {1.2, 0.0, 0.0},

    [746855201] = {1.19, 0.0, 0.08},
    [1309269072] = {1.45, 0.0, 0.02},
    [-1023447729] = {1.45, 0.0, 0.02},

    [-495720969] = {-1.25, 0.0, 0.02},
    [464151082] = {-1.14, 0.0, 0.3},
    [-543497392] = {-1.14, 0.0, 0.0},


    [1770281453] = {-1.14, 0.0, 0.0},
    [1173348778] = {-1.14, 0.0, 0.0},
    [479144380] = {-1.14, 0.0, 0.0},

    [1242124150] = {-1.14, 0.0, 0.0},
    [2088680867] = {-1.14, 0.0, 0.0},
    [-320876379] = {-1.14, 0.0, 0.0},
    [631614199] = {-1.14, 0.0, 0.0},
    [-1320876379] = {-1.14, 0.0, 0.0},
    [-1437850419] = {-1.14, 0.0, 0.0},
    [-681066206] = {-1.14, 0.0, 0.0},
    [245182344] = {-1.14, 0.0, 0.0},


    [-1167410167] = {-1.14, 0.0, 1.2},
    [-642608865] = {-1.32, 0.0, -0.23},
    [749848321] = {-1.08, 0.0, 0.2},


    [933053701] = {-1.08, 0.0, 0.2},
    [185711165] = {-1.08, 0.0, 0.2},
    [-1726331785] = {-1.08, 0.0, 0.2},

    [551491569] = {-1.2, 0.0, -0.23},
    [-710818483] = {-1.3, 0.0, -0.23},
    [-543490328] = {-1.0, 0.0, 0.0},
    [-1417290930] = {1.0, 0.0, 0.0},
    [-574290911] = {1.14, 0.0, 0.0},

    [1773345779] = {-1.14, 0.0, 0.0},
    [1971752884] = {-1.14, 0.0, 0.0},
    [1641293839] = {1.07, 0.0, 0.0},
    [1507503102] = {-1.10, 0.0, 0.0},

    [1888438146] = {0.9, 0.0, 0.0},
    [272205552] = {-1.1, 0.0, 0.0},
    [9467943] = {-1.2, 0.0, 0.1},
    [534758478] = {-1.2, 0.0, 0.1},

    [988364535] = {0.4, 0.0, 0.1},
    [-1141522158] = {-0.4, 0.0, 0.1},
    [1219405180] = {-1.20, 0.0, 0.0},

    [-1011692606] = {1.37, 0.0, 0.05},
    [91564889] = {1.37, 0.0, 0.05},

    ["gabz_pillbox_doubledoor_r"] = {-1.17, 0.0, 0.05},
    ["gabz_pillbox_doubledoor_l"] = {1.17, 0.0, 0.05},
    ["gabz_pillbox_singledoor"] = {1.17, 0.0, 0.05},
    ["Prop_Strip_Door_01"] = {1.17, 0.0, 0.05},

    [-1821777087] = {-1.18, 0.0, 0.05},
    [-1687047623] = {-1.18, 0.0, 0.05},
    [1015445881] = {-1.0, 0.0, -0.30},
    ["v_ilev_fib_door1"] = {-1.18, 0.0,-0.1},
    [-550347177] = {-1.18, 0.0,-0.1},
    [447044832] = {-1.0, 0.0,-0.1},
    [1335311341] = {-1.1, 0.0,-0.0},

    ["sanhje_Prison_block_cell_door"] = {-1.1, 0.0,-0.0},
    ["sanhje_Prison_infirmary_door1"] = {-1.1, 0.0,-0.0},
    ["sanhje_Prison_infirmary_door2"] = {-1.1, 0.0,-0.0},
    ["sanhje_prison_recep_door01"] = {-1.1, 0.0,-0.0},
    ["sanhje_prison_recep_cagedoor"] = {-1.1, 0.0,-0.0},
    [-684929024] = {-1.1, 0.0,-0.0},
    [-1475798232] = {-1.18, 0.0, 0.05},
    [-1877571861] = {-1.18, 0.0, 0.05},
    [1497823487] = {-1.18, 0.0, 0.05},
    [1497823487] = {-1.18, 0.0, 0.05},
}

-- Gang name , then rank , then door numbers
PRP.rankCheck = {
    ["parts_shop"] = {
        [1] = {
            ["between"] = {},
            ["single"] = {156}
        },
        [3] = {
            ["between"] = {},
            ["single"] = {278,279}
        }
    },
    ["lost_mc"] = {
        [1] = {
            ["between"] = {},
            ["single"] = {187,188,189}
        }
    },
    ["carpet_factory"] = {
        [1] = {
            ["between"] = {},
            ["single"] = {160,161}
        }
    },
    ["illegal_carshop"] = {
        [1] = {
            ["between"] = {},
            ["single"] = {162,163,268,269,273,274}
        },
        [2] = {
            ["between"] = {},
            ["single"] = {266,267,272}
        },
        [3] = {
            ["between"] = {},
            ["single"] = {265}
        }
    },
    ["tuner_carshop"] = {
        [2] = {
            ["between"] = {},
            ["single"] = {192,193}
        }
    },
    ["rooster_academy"] = {
        [3] = {
            ["between"] = {
                [1] = {219,223},
                [2] = {230,239}
            },
            ["single"] = {}
        }
    },
    ["strip_club"] = {
        [1] = {
            ["between"] = {},
            ["single"] = {114}
        },

        [3] = {
            ["between"] = {
                [1] = {115,116},
                [2] = {245,246}
            },
            ["single"] = {248}
        },

        [4] = {
            ["between"] = {
                [1] = {249,250}
            },
            ["single"] = {247}
        }
    },

    ["weed_factory"] = {
        [2] = {
            ["between"] = {},
            ["single"] = {164}
        }
    },
    ["winery_factory"] = {
        [3] = {
            ["between"] = {},
            ["single"] = {164}
        },

        [4] = {
            ["between"] = {
                [1] = {222,230}
            },
            ["single"] = {}
        }
    },
    ["drift_school"] = {
        [1] = {
            ["between"] = {
                [1] = {240,243}
            },
            ["single"] = {}
        },

        [3] = {
            ["between"] = {},
            ["single"] = {244}
        }
    },
    ["car_shop"] = {
        [2] = {
            ["between"] = {},
            ["single"] = {270,271}
        },
    },
}

function PRP.alterState(alterNum)

    if PRP.DoorCoords[alterNum]["lock"] == 0 then 
        PRP.DoorCoords[alterNum]["lock"] = 1 
    else 
        PRP.DoorCoords[alterNum]["lock"] = 0 
    end
    TriggerClientEvent("erp:Door:alterState",-1,alterNum,PRP.DoorCoords[alterNum]["lock"])

end

RegisterNetEvent( "erp:Door:alterState" )
AddEventHandler( "erp:Door:alterState", function(alterNum,num)
	PRP.DoorCoords[alterNum]["lock"] = num
end)

RegisterNetEvent("mrp-doors:alterlockstateclient")
AddEventHandler("mrp-doors:alterlockstateclient", function(doorCoords)
    PRP.DoorCoords = doorCoords
end)