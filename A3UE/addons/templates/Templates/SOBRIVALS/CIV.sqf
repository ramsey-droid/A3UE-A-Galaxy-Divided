
//////////////////////////////
//   Civilian Information   //
//////////////////////////////

//////////////////////////
//       Vehicles       //
//////////////////////////

private _civCarsWithWeights = [
    "O_G_Van_01_transport_F", 0.3
    ,"B_CTRG_LSV_01_light_F", 7.0
    ,"WM_V25_Speeder", 0.3
    ,"OPTRE_M12_CIV", 1.0
    ,"I_G_Offroad_01_F", 1.0
];
private _civBoat = [
    "C_Boat_Civil_01_rescue_F", 0.1            // motorboats
    ,"C_Boat_Civil_01_police_F", 0.1
    ,"C_Boat_Civil_01_F", 1.0
    ,"C_Rubberboat", 1.0                    // rescue boat
];
private _civIndustrial = [
    "B_Truck_01_covered_F", 1.0
    ,"OPTRE_forklift", 0.8
    ,"B_Truck_01_transport_F", 0.5
    ,"B_Truck_01_mover_F", 0.5
];
private _civRepair = [
    "I_G_Offroad_01_repair_F", 0.3
    ,"C_Truck_02_box_F", 0.1
];
private _civMedical = ["OPTRE_M12_ins_MED", 0.2];
private _civFuel = [
    "B_G_Van_01_fuel_F", 0.2
    ,"B_Truck_01_fuel_F", 0.1
];

private _civPlanes = ["3AS_Civilian_Transport_01", "3AS_Civilian_Transport_03", "3AS_Civilian_Transport_02", "3AS_Gozanti_Civ_F", "3AS_Gozanti_Civ_Green"];
private _civHelicopter = ["3AS_Aegis_Shuttle_Civ_Blue", "3AS_Aegis_Carrier_Civ_F", "a3a_C_Heli_Light_02_blue_F"];

["vehiclesCivCar", _civCarsWithWeights] call _fnc_saveToTemplate;
["vehiclesCivHeli", _civHelicopter] call _fnc_saveToTemplate;
["vehiclesCivIndustrial", _civIndustrial] call _fnc_saveToTemplate;
["vehiclesCivBoat", _civBoat] call _fnc_saveToTemplate;
["vehiclesCivRepair", _civRepair] call _fnc_saveToTemplate;
["vehiclesCivMedical", _civMedical] call _fnc_saveToTemplate;
["vehiclesCivFuel", _civFuel] call _fnc_saveToTemplate;
["vehiclesCivPlanes", _civPlanes] call _fnc_saveToTemplate;

["animations", [
]] call _fnc_saveToTemplate;

["variants", [
]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _faces = [
    "Head_SFA_Arcona_01",
    "Head_SFA_Cathar_01",
    "Head_SFA_Cathar_02",
    "Head_SFA_Cathar_03",
    "Head_chiss_01",
    "Head_SFA_Cyborg_01",
    "Head_SFA_Duros_01",
    "Head_SFA_Duros_02",
    "Head_SFA_Duros_03",
    "Head_SFA_Duros_04",
    "Head_SFA_Duros_05",
    "Head_SFA_Mirakulan_01",
    "Head_SFA_Mirakulan_02",
    "Head_SFA_Mirakulan_03",
    "Head_SFA_Mirakulan_04",
    "Head_SFA_Mirakulan_05",
    "Head_SFA_Mirakulan_06",
    "Head_SFA_Trandoshan_01",
    "Head_SFA_Twilek_01",
    "Head_SFA_Twilek_02",
    "Head_SFA_Twilek_03",
    "Head_SFA_Twilek_04",
    "Head_SFA_Twilek_05",
    "GreekHead_A3_03",
    "GreekHead_A3_04",
    "GreekHead_A3_11",
    "RussianHead_1",
    "WhiteHead_27",
    "ls_mirialan_male1_green",
"WhiteHead_01","WhiteHead_02","WhiteHead_03","WhiteHead_04",
"WhiteHead_05","WhiteHead_06","WhiteHead_07","WhiteHead_08",
"WhiteHead_09","WhiteHead_11","WhiteHead_12","WhiteHead_14",
"WhiteHead_15","WhiteHead_16","WhiteHead_18","WhiteHead_19","WhiteHead_20",
"WhiteHead_21","WhiteHead_22","WhiteHead_23", "WhiteHead_24", "WhiteHead_25",
"WhiteHead_26", "WhiteHead_27", "WhiteHead_28", "WhiteHead_29", "WhiteHead_30", 
"WhiteHead_31", "WhiteHead_32",
    "TanoanHead_A3_01",
    "TanoanHead_A3_02",
    "TanoanHead_A3_03",
    "TanoanHead_A3_04",
    "TanoanHead_A3_05",
    "TanoanHead_A3_06",
    "TanoanHead_A3_07",
    "TanoanHead_A3_08",
    "TanoanHead_A3_09",
    "ls_mirialan_male1_sand",
    "ls_mirialan_male1_yellow",
    "ls_mirialan_male2_green",
    "ls_mirialan_male2_sand",
    "ls_mirialan_male2_yellow",
    "ls_mirialan_male3_green",
    "ls_mirialan_male3_sand",
    "ls_mirialan_male3_yellow",
    "MTI_female_bun_01",
    "ls_zeltron_male3_pink",
    "ls_zeltron_male3_red",
    "LivonianHead_9",
    "mti_armoury_face_Zyys",
    "ls_zabrak_male1t0_red",
    "AsianHead_A3_06"
];

["faces", _faces] call _fnc_saveToTemplate;

private _civUniforms = [
    "U_BG_Guerilla1_1",
    "U_BG_Guerilla3_1",
    "U_BG_leader",
    "OPTRE_Ins_ER_uniform_GGgrey",
    "OPTRE_Ins_ER_uniform_GGod",
    "U_B_ParadeUniform_01_UCArmy_F",
    "U_B_ParadeUniform_01_UCNavy_F",
    "U_B_ParadeUniform_01_UCMC_F",
    "U_UCFA_Uniform1",
    "U_UCFN_Uniform2",
    "U_UCMC_Uniform2",
    "U_I_L_Uniform_01_camo_F",
    "U_C_FormalSuit_01_tshirt_black_F",
    "LST_Merc_Uniform",
    "LST_Merc_Uniform_DinSakay",
    "LST_Merc_Uniform_Free",
    "OPTRE_Ins_ER_jacket_od_surplus",
    "U_I_C_Soldier_Para_2_F",
    "U_I_C_Soldier_Para_4_F",
    "U_I_C_Soldier_Para_1_F",
    "WM_ParaMilitary",
    "WM_ParaMilitary_Dst_Shirt",
    "WM_ParaMilitary_Dst_Tee",
    "WM_ParaMilitary_Shirt_Rolled",
    "WM_ParaMilitary_Urban",
    "OPTRE_Ins_ER_rolled_OD_crimson",
    "OPTRE_Ins_ER_rolled_surplus_black",
    "lsd_orsf_trooper_uniform",
    "U_I_C_Soldier_Camo_F",
    "U_MDTF_Uniform1",
    "SFA_Combat_Eng_Uniform",
    "SFA_TS_Uniform",
    "SFA_Hunter_Armor_Black",
    "U_I_C_Soldier_Bandit_5_F",
    "LST_Jedi_Uniform_KellaV2",
    "LST_Jedi_Uniform_Kella",
    "ls_mandalorian_undersuit_uniform",
    "SS_ROBE_U"
];

private _pressUniforms = [
    "tgf_undersuit_uniform_male_seal",
    "tgf_undersuit_uniform_grey_seal"
    ];

private _workerUniforms = [
    "U_MTFbrown_Sweater",
    "U_MTFblue_Sweater",
    "U_MTFred_Sweater"
    ];

private _dlcUniforms = [];

private _civhats = [
    "H_ShemagOpen_khk",
    "H_ShemagOpen_tan",
    "H_Shemag_olive_hs",
    "LST_Jedi_Cape_helm",
    "mti_factions_rebels_helmet_Rebel_Base",
    "OPTRE_UNSC_PatrolCap_Marines",
    "OPTRE_h_Booniehat_Grey",
    "LST_Jedi_Kasa_Kella",
    "WM_ParaMilitary_Helmet_Urban",
    "WM_ParaMilitary_Helmet_Winter",
    "WM_ParaMilitary_Helmet_Wood"
];

private _workerHelmets = ["H_TKEWork_UCFAMilcap_F", "H_Cap_headphones"];

private _dlchats = [];

["uniforms", _civUniforms + _pressUniforms + _workerUniforms + _dlcUniforms] call _fnc_saveToTemplate;

["headgear", _civHats + _dlchats] call _fnc_saveToTemplate;

private _loadoutData = call _fnc_createLoadoutData;

_loadoutData set ["uniforms", _civUniforms + _dlcUniforms];
_loadoutData set ["pressUniforms", _pressUniforms];
_loadoutData set ["workerUniforms", _workerUniforms];
_loadoutData set ["pressVests", ["tgf_armour_super_light_armour_black"]];
_loadoutData set ["helmets", _civHats + _dlchats];
_loadoutData set ["workerHelmets", _workerHelmets];
_loadoutData set ["pressHelmets", ["tgf_helmets_gunslinger_vet", "tgf_helmets_gunslinger", "tgf_helmets_shrike"]];
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];

private _manTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _workerTemplate = {
    [["workerHelmets", "helmets"] call _fnc_fallback] call _fnc_setHelmet;
    ["workerUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _pressTemplate = {
    ["pressHelmets"] call _fnc_setHelmet;
    ["pressVests"] call _fnc_setVest;
    ["pressUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _prefix = "militia";
private _unitTypes = [
    ["Press", _pressTemplate],
    ["Worker", _workerTemplate],
    ["Man", _manTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
