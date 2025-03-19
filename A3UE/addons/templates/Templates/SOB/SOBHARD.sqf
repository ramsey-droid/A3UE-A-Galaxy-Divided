private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "Special Operations Brigade"] call _fnc_saveToTemplate;

["flag", ""] call _fnc_saveToTemplate;
["flagTexture", "\z\mti\addons\common\data\SOB_Flag_Grey.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "JLTS_flag_Rep"] call _fnc_saveToTemplate;

["vehiclesBasic", ["3AS_ISP_Transport", "MTI_Barc"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", []] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["a3a_C_Heli_Transport_02_F", "a3a_C_Heli_Light_02_blue_F", "C_Heli_Light_01_civil_F"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["MTI_MUTT_L", "MTI_MUTT_I"]] call _fnc_saveToTemplate;
["vehiclesAT", ["MTI_TX130", "MTI_TX130_Recon", "MTI_TX130_Super", "MTI_ATAP", "MTI_ATTE", "MTI_ATTE_Super", "MTI_UTAT", "MTI_Juggernaut"]] call _fnc_saveToTemplate;
["vehiclesAA", ["MTI_RX200"]] call _fnc_saveToTemplate;

["vehiclesBoat", ["optre_catfish_aa_f", "optre_catfish_atgm_f", "optre_catfish_gauss_f", "optre_catfish_mg_f"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["MTI_LAATi_Base", "MTI_LAATle_Gunship", "MTI_LAATi_Mk2", "MTI_nuclass", "MTI_RhoCLass", "MTI_LAATle_Stealth", "MTI_LAATs", "MTI_arc_170", "MTI_BTLB", "MTI_Delta7_Base", "MTI_Vwing", "MTI_Z95"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["MTI_Barc_Stretcher"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["C_Offroad_01_F"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["C_Truck_02_covered_F"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["a3a_C_Heli_Transport_02_F", "a3a_C_Heli_Light_02_blue_F", "C_Heli_Light_01_civil_F"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["C_Rubberboat", "C_Boat_Civil_01_F"]] call _fnc_saveToTemplate;
["vehiclesCivPlane", ["C_Plane_Civil_01_F", "3AS_Aegis_Carrier_Civ_Blue"]] call _fnc_saveToTemplate;
["vehiclesCivSupply", ["a3a_Van_02_black_vehicle_F"]] call _fnc_saveToTemplate;

["staticMGs", ["MTI_UST_Turret", "MTI_HeavyRepeater", "MTI_BlasterTurret"]] call _fnc_saveToTemplate;
["staticAT", ["OPTRE_Static_ATGM"]] call _fnc_saveToTemplate;
["staticAA", ["3AS_Keeradak_F", "3AS_Venator_Cannon_Small"]] call _fnc_saveToTemplate;
["staticMortars", ["mti_factions_cis_mortar"]] call _fnc_saveToTemplate;
["staticMortarMagHE", ["MTI_Red_HE_Mag"]] call _fnc_saveToTemplate;
["staticMortarMagSmoke", ["3AS_8Rnd_82mm_Mo_Smoke_white"]] call _fnc_saveToTemplate;

["minesAT", ["ATMine"]] call _fnc_saveToTemplate;
["minesAPERS", ["APERSMine_Range_Mag"]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", ["MTI_EC01"]] call _fnc_saveToTemplate;
["breachingExplosivesTank", ["MTI_SatchelCharge_Mag"]] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["lootCrate", ""] call _fnc_saveToTemplate;
["rallyPoint", ""] call _fnc_saveToTemplate;

//animation sources - camo nets, slat cages, decals etc, digit is probability of appearance
["animations", [
    ["vehClass", ["animsource_example_1", 0.25, "animsource_example_2", 0.3]]
]] call _fnc_saveToTemplate;

//vehicle skins
["variants", [
    ["vehClass", ["paint", 1]]
]] call _fnc_saveToTemplate;

//Enter #include "Modset_Reb_Vehicle_Attributes.sqf" here

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = ["MTI_DC17s",
"MTI_DC17s_mag",
"SWLB_clone_bag_belt"
];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","JLTS_clone_comlink"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["JLTS_clone_comlink","mti_armoury_trooper_backpack_RTO"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","JLTS_clone_comlink"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["JLTS_clone_comlink","mti_armoury_trooper_backpack_RTO"]};
_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = [
    "mti_armoury_trooper_uniform_CR", 
    "mti_armoury_trooper_uniform_CT",
    "mti_armoury_trooper_uniform_CT_EOD",
    "mti_armoury_trooper_uniform_CT_Medic", 
    "mti_armoury_trooper_uniform_SCT",
    "mti_armoury_trooper_uniform_SCT_EOD",
    "mti_armoury_trooper_uniform_SCT_Medic",
    "mti_armoury_trooper_uniform_VCT",
    "mti_armoury_trooper_uniform_VCT_EOD",
    "mti_armoury_trooper_uniform_VCT_Medic",
    "mti_armoury_trooper_uniform_CSP", 
    "mti_armoury_trooper_uniform_CSP_EOD",
    "mti_armoury_trooper_uniform_CSP_Medic",
    "mti_armoury_trooper_uniform_CLC",
    "mti_armoury_trooper_uniform_CLC_EOD",
    "mti_armoury_trooper_uniform_CLC_Medic",
    "mti_armoury_trooper_uniform_CS",
    "mti_armoury_trooper_uniform_CSM",
    "mti_armoury_trooper_uniform_CL",
    "mti_armoury_trooper_uniform_Mokka",
    "mti_armoury_trooper_uniform_mc_Rat",
    "mti_armoury_trooper_uniform_Scorch",
    "mti_armoury_trooper_uniform_Pyro",
    "mti_armoury_trooper_uniform_Shiro",
    "mti_armoury_trooper_uniform_Ark",
    "mti_armoury_trooper_uniform_STUKA",
    "mti_armoury_trooper_uniform_Akeno",
    "mti_armoury_trooper_uniform_Zyys",
    "mti_armoury_trooper_uniform_Arcanist",
    "mti_armoury_trooper_uniform_War",
    "mti_armoury_trooper_uniform_Leer",
    "mti_armoury_trooper_uniform_Kix",
    "mti_armoury_trooper_uniform_Gonk",
    "mti_armoury_trooper_uniform_Glide",
    "mti_armoury_trooper_uniform_Pariah",
    "mti_armoury_trooper_uniform_Saber",
    "mti_armoury_trooper_uniform_Lucks",
    "mti_armoury_trooper_uniform_Spyro",
    "mti_armoury_trooper_uniform_Storyz",
    "mti_armoury_trooper_uniform_Maroon",
    "mti_armoury_trooper_uniform_Dust",
    "mti_armoury_trooper_uniform_Otter",
    "mti_armoury_trooper_uniform_Anchor",
    "mti_armoury_trooper_uniform_Dox",
    "mti_armoury_trooper_uniform_Spectre",
    "mti_armoury_trooper_uniform_Sparrow",
    "mti_armoury_trooper_uniform_Beviin",
    "mti_armoury_trooper_uniform_Anubis",
    "mti_armoury_trooper_uniform_Loken",
    "mti_armoury_trooper_uniform_Karrazim",
    "mti_armoury_trooper_uniform_Fenrir",
    "mti_armoury_trooper_uniform_Xarl",
    "mti_armoury_trooper_uniform_Yoshi",
    "mti_armoury_trooper_uniform_Kyle",
    "mti_armoury_trooper_uniform_Loki",
    "mti_armoury_trooper_uniform_Slothem",
    "mti_armoury_trooper_uniform_Sin",
    "mti_armoury_trooper_uniform_Noir",
    "mti_armoury_trooper_uniform_Lich",
    "mti_armoury_trooper_uniform_Blurr",
    "mti_armoury_trooper_uniform_Hex",
    "mti_armoury_trooper_uniform_Mist",
    "mti_armoury_commando_uniform_Draco",
    "mti_armoury_commando_uniform_Nightwolf", 
    "mti_armoury_commando_uniform_Daycare", 
    "mti_armoury_commando_uniform_Val", 
    "mti_armoury_commando_uniform_Baboon", 
    "mti_armoury_commando_uniform_Dxon", 
    "mti_armoury_commando_uniform_Leer", 
    "mti_armoury_commando_uniform_Shoto", 
    "mti_armoury_commando_uniform_Sparrow", 
    "mti_armoury_commando_uniform_Karrazim", 
    "mti_armoury_commando_uniform_Bezzy", 
    "mti_armoury_commando_uniform_Rented", 
    "mti_armoury_commando_uniform_Noble", 
    "mti_armoury_commando_uniform_Vill", 
    "mti_armoury_commando_uniform_Rat", 
    "mti_armoury_commando_uniform_Noir", 
    "mti_armoury_commando_uniform_Lich", 
    "mti_armoury_commando_uniform_Smig", 
    "mti_armoury_commando_uniform_Duck", 
    "mti_armoury_commando_uniform_Set", 
    "mti_armoury_commando_uniform_Falcon", 
    "mti_armoury_commando_uniform_Lucks", 
    "mti_armoury_commando_uniform_Glide", 
    "mti_armoury_commando_uniform_Flashy", 
    "mti_armoury_commando_uniform_Valor", 
    "mti_armoury_commando_uniform_Hex", 
    "mti_armoury_commando_uniform_Akeno", 
    "mti_armoury_commando_uniform_Zyys", 
    "mti_armoury_commando_uniform_Ark", 
    "mti_armoury_commando_uniform_Stuka", 
    "mti_armoury_commando_uniform_Beviin", 
    "mti_armoury_commando_uniform_Mokka", 
    "mti_armoury_commando_uniform_Celt",
    "mti_armoury_commando_uniform_Klepto", 
    "mti_armoury_commando_uniform_Shoto",
    "mti_armoury_commando_uniform_Dragoon",
    "mti_armoury_commando_uniform_Miller",
    "mti_armoury_commando_uniform_Dust",
    "mti_armoury_commando_uniform_Murdoc",
    "mti_armoury_commando_uniform_Beems",
    "mti_armoury_commando_uniform_Kyle",
    "mti_armoury_commando_uniform_Besh",
    "mti_armoury_commando_uniform_Tippers",
    "mti_armoury_commando_uniform_Stec",
    "mti_armoury_commando_uniform_Mist",
    "mti_armoury_commando_uniform_Kalma",
    "mti_armoury_commando_uniform_Sig",
    "mti_armoury_commando_uniform_Storyz",
    "mti_armoury_commando_uniform_Potato",
    "mti_armoury_commando_uniform_Slothem",
    "mti_armoury_commando_uniform_Spider",
    "mti_armoury_commando_uniform_Izuu",
    "mti_armoury_commando_uniform_Loken",
    "mti_armoury_commando_uniform_Bow",
    "mti_armoury_commando_uniform_Schmootz",
    "mti_armoury_commando_uniform_Anchor",
    "mti_armoury_commando_uniform_Dox",
    "mti_armoury_commando_uniform_Puck",
    "mti_armoury_commando_uniform_Short",
    "mti_armoury_commando_uniform_Sid",
    "mti_armoury_commando_uniform_Wolfen",
    "mti_armoury_commando_uniform_Cuddler",
    "mti_armoury_commando_uniform_Sicko",
    "mti_armoury_commando_uniform_Yoshi",
    "mti_armoury_commando_uniform_Abu",
    "mti_armoury_commando_uniform_Mads",
    "mti_armoury_commando_uniform_Catch",
    "mti_armoury_commando_uniform_Scrump",
    "mti_armoury_commando_uniform_Donnie",
    "mti_armoury_commando_uniform_Mig",
    "mti_armoury_commando_uniform_Graaz",
    "mti_armoury_commando_uniform_Dad",
    "mti_armoury_commando_uniform_General",
    "mti_armoury_pilot_uniform_CX_C",
    "mti_armoury_pilot_uniform_CX",
    "mti_armoury_pilot_uniform_CX_X",
    "mti_armoury_pilot_uniform_CX_P",
    "mti_armoury_pilot_uniform_CX_S",
    "mti_armoury_pilot_uniform_CX_O",
    "mti_armoury_pilot_uniform_Murdoc",
    "mti_armoury_pilot_uniform_Ark",
    "mti_armoury_pilot_uniform_Spyro",
    "mti_armoury_pilot_uniform_Hancock",
    "mti_armoury_pilot_uniform_Beems",
    "mti_armoury_pilot_uniform_Bezzy",
    "mti_armoury_pilot_uniform_Marine",
    "mti_armoury_pilot_uniform_Yoshi",
    "mti_armoury_pilot_uniform_Zyys",
    "mti_armoury_arc_uniform_Arcanist",
    "mti_armoury_arc_uniform_Rat",
    "mti_armoury_arc_uniform_Shields",
    "mti_armoury_arc_uniform_Ones",
    "mti_armoury_arc_uniform_Saber",
    "mti_armoury_arc_uniform_Falcon",
    "mti_armoury_arc_uniform_Ghost",
    "mti_armoury_arc_uniform_Chimera",
    "mti_armoury_arc_uniform_Kev",
    "mti_armoury_arc_uniform_Leer",
    "mti_armoury_arc_uniform_Hex",
    "mti_armoury_arc_uniform_Malice",
    "mti_armoury_arc_uniform_Beviin",
    "mti_armoury_arc_uniform_Xarl",
    "mti_armoury_arc_uniform_Xetor",
    "mti_armoury_arc_uniform_Spooks",
    "mti_armoury_arc_uniform_Loken",
    "mti_armoury_arc_uniform_Bezzy",
    "mti_armoury_arc_uniform_Beems",
    "mti_armoury_arc_uniform_Miller",
    "mti_armoury_arc_uniform_Leer",
    "mti_armoury_arc_uniform_Besh",
    "mti_armoury_arc_uniform_Loki",
    "mti_armoury_arc_uniform_Maroon",
    "mti_armoury_arc_uniform_Potato",
    "mti_armoury_arc_uniform_Sig",
    "mti_armoury_arc_uniform_Storyz",
    "mti_armoury_arc_uniform_Rented",
    "mti_armoury_arc_uniform_Oneshot",
    "mti_armoury_arc_uniform_Spyro",
    "mti_armoury_arc_uniform_Ramsey",
    "mti_armoury_arc_uniform_Dxon",
    "mti_armoury_arc_uniform_Odin",
    "mti_armoury_arc_uniform_Dust",
    "mti_armoury_arc_uniform_Mist",
    "mti_armoury_arc_uniform_Sin",
    "mti_armoury_arc_uniform_Spider",
    "mti_armoury_arc_uniform_Killa",
    "mti_armoury_arc_uniform_Short",
    "mti_armoury_arc_uniform_Jitters",
    "mti_armoury_arc_uniform_Nightwolf",
    "mti_armoury_arc_uniform_Xiao",
    "mti_armoury_arc_uniform_Sparrow",
    "mti_armoury_arc_uniform_Blurr",
    "mti_armoury_arc_uniform_Dad",
    "mti_armoury_arc_uniform_Dimi",
    "mti_armoury_arc_uniform_J3ff",
    "mti_armoury_arc_uniform_Tec",
    "mti_armoury_arc_uniform_Prussia",
    "mti_armoury_commando_uniform_base",
    "mti_armoury_commando_uniform_Cadet",
    "mti_armoury_commando_uniform_eod",
    "mti_armoury_commando_uniform_sniper",
    "mti_armoury_commando_uniform_tech",
    "mti_armoury_commando_uniform_sl",
    "mti_armoury_commando_uniform_exotic",
    "mti_armoury_commando_uniform_medic",
    "mti_armoury_commando_uniform_heavy",
    "mti_armoury_commando_uniform_Arctic",
    "mti_armoury_commando_uniform_Desert",
    "mti_armoury_commando_uniform_Jungle",
    "mti_armoury_commando_uniform_Night",
    "mti_armoury_jumptrooper_uniform_Cadet",
    "mti_armoury_jumptrooper_uniform_Medic",
    "mti_armoury_jumptrooper_uniform_EOD",
    "mti_armoury_jumptrooper_uniform_Trooper",
    "mti_armoury_jumptrooper_uniform_Siege",
    "mti_armoury_jumptrooper_uniform_Tec",
    "mti_armoury_jumptrooper_uniform_Monarch",
    "mti_armoury_jumptrooper_uniform_J3ff",
    "mti_armoury_jumptrooper_uniform_Prussia",
    "mti_armoury_jumptrooper_uniform_Sparrow",
    "mti_armoury_jumptrooper_uniform_Mads",
    "mti_armoury_jumptrooper_uniform_Storyz",
    "mti_armoury_jumptrooper_uniform_Nova",
    "mti_armoury_jumptrooper_uniform_Max",
    "mti_armoury_jumptrooper_uniform_Iris",
    "mti_armoury_jumptrooper_uniform_Haunt",
    "mti_armoury_jumptrooper_uniform_Schmootz",
    "mti_armoury_jumptrooper_uniform_Kinetic",
    "mti_armoury_covertops_uniform_assassin",
    "mti_armoury_covertops_uniform_Jakub",
    "mti_armoury_covertops_uniform_Spiring",
    "mti_armoury_covertops_uniform_Stec",
    "mti_armoury_covertops_uniform_Dagger",
    "mti_armoury_covertops_uniform_Cruiser",
    "mti_armoury_covertops_uniform_Anubis",
    "mti_armoury_covertops_uniform_Yoshi",
    "mti_armoury_covertops_uniform_Templar",
    "mti_armoury_covertops_uniform_Asriel",
    "mti_armoury_covertops_uniform_Spider",
    "mti_armoury_covertops_uniform_Lost",
    "mti_armoury_covertops_uniform_Premade",
    "mti_armoury_covertops_uniform_shadow",
    "mti_armoury_covertops_uniform_Ghost",
    "mti_armoury_covertops_uniform_Saber",
    "mti_armoury_covertops_uniform_Hail",
    "mti_armoury_fieldsupport_uniform_mags",
    "mti_armoury_fieldsupport_uniform_Tyr",
    "mti_armoury_fieldsupport_uniform_Haunt",
    "mti_armoury_fieldsupport_uniform_Maple",
    "mti_armoury_fieldsupport_uniform_Bere",
    "mti_armoury_fieldsupport_uniform_Fenrir",
    "mti_armoury_fieldsupport_uniform_Stuka",
    "mti_armoury_fieldsupport_uniform_Ark",
    "mti_armoury_fieldsupport_uniform_Pariah",
    "mti_armoury_fieldsupport_uniform_Akeno",
    "mti_armoury_fieldsupport_uniform_Trooper",
    "mti_armoury_fieldsupport_uniform_Medic"
];         //Uniforms given to Normal Rebels

private _dlcUniforms = [];          //Uniforms given if DLCs are enabled, only given to the Arsenal not Rebels

if (_hasContact) then {_dlcUniforms append []};
if (_hasApex) then {_dlcUniforms append []};

["uniforms", _rebUniforms + _dlcUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["headgear", ["H_Beret_blk"]] call _fnc_saveToTemplate;          //Headgear used by Rebel AI until you have Armored Headgear.

/////////////////////
///  Identities   ///
/////////////////////

//Faces and Voices given to Rebel AI
["faces", ["lsd_gar_cloneA_head"]] call _fnc_saveToTemplate;
["voices", ["JLTS_voice_clone"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["JLTS_CloneBinocular"]];

_loadoutData set ["uniforms", _rebUniforms];

_loadoutData set ["facewear", ["SWLB_CEE_Clone_Scarf_White", "SWLB_CEE_Clone_Hood", "SWLB_CEE_Clone_Scarf_Orange", "ls_misc_poncho_facewear"]];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
////////////////////////

private _squadLeaderTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};

private _prefix = "militia";
private _unitTypes = [
    ["Petros", _squadLeaderTemplate],
    ["SquadLeader", _squadLeaderTemplate],
    ["Rifleman", _riflemanTemplate],
    ["staticCrew", _riflemanTemplate],
    ["Medic", _riflemanTemplate, [["medic", true]]],
    ["Engineer", _riflemanTemplate, [["engineer", true]]],
    ["ExplosivesExpert", _riflemanTemplate, [["explosiveSpecialist", true]]],
    ["Grenadier", _riflemanTemplate],
    ["LAT", _riflemanTemplate],
    ["AT", _riflemanTemplate],
    ["AA", _riflemanTemplate],
    ["MachineGunner", _riflemanTemplate],
    ["Marksman", _riflemanTemplate],
    ["Sniper", _riflemanTemplate],
    ["Unarmed", _riflemanTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;