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
["flagTexture", ""] call _fnc_saveToTemplate;
["flagMarkerType", ""] call _fnc_saveToTemplate;

["vehiclesBasic", ["3AS_ISP_Transport", "MTI_Barc"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", []] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["MTI_ISP_Base", "MTI_MUTT_C", "MTI_Barc_Sidecar", "MTI_PX10_R3", "MTI_PX10"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["MTI_MUTT_L", "MTI_MUTT_I"]] call _fnc_saveToTemplate;
["vehiclesAT", ["MTI_TX130", "MTI_TX130_Recon", "MTI_TX130_Super", "MTI_ATAP", "MTI_ATTE", "MTI_ATTE_Super", "MTI_UTAT", "MTI_Juggernaut"  ]] call _fnc_saveToTemplate;
["vehiclesAA", ["MTI_RX200"]] call _fnc_saveToTemplate;

["vehiclesBoat", []] call _fnc_saveToTemplate;

["vehiclesPlane", ["MTI_LAATi_Base", "MTI_LAATle_Gunship", "MTI_LAATi_Mk2", "MTI_nuclass", "MTI_RhoCLass", "MTI_LAATle_Stealth", "MTI_LAATs", "MTI_arc_170", "MTI_BTLB", "MTI_Delta7_Base", "MTI_Vwing", "MTI_Z95"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["MTI_Barc_Stretcher"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["C_Offroad_01_F"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["C_Truck_02_covered_F"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["a3a_C_Heli_Transport_02_F", "a3a_C_Heli_Light_02_blue_F", "C_Heli_Light_01_civil_F"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["C_Rubberboat", "C_Boat_Civil_01_F"]] call _fnc_saveToTemplate;
["vehiclesCivPlane", ["C_Plane_Civil_01_F", "3AS_Aegis_Carrier_Civ_Blue"]] call _fnc_saveToTemplate;
["vehiclesCivSupply", ["a3a_Van_02_black_vehicle_F"]] call _fnc_saveToTemplate;

["staticMGs", ["MTI_UST_Turret", "MTI_HeavyRepeater", "MTI_BlasterTurret"]] call _fnc_saveToTemplate;
["staticAT", ["mti_mortar_turret"]] call _fnc_saveToTemplate;
["staticAA", []] call _fnc_saveToTemplate;
["staticMortars", []] call _fnc_saveToTemplate;
["staticMortarMagHE", ""] call _fnc_saveToTemplate;
["staticMortarMagSmoke", ""] call _fnc_saveToTemplate;

["minesAT", []] call _fnc_saveToTemplate;
["minesAPERS", []] call _fnc_saveToTemplate;

["breachingExplosivesAPC", []] call _fnc_saveToTemplate;
["breachingExplosivesTank", []] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["lootCrate", "mti_supplies_Servicing"] call _fnc_saveToTemplate;
["rallyPoint", ""] call _fnc_saveToTemplate;

//animation sources - camo nets, slat cages, decals etc, digit is probability of appearance
["animations", [
    ["vehClass", ["animsource_example_1", 0.25, "animsource_example_2", 0.3]]
]] call _fnc_saveToTemplate;

//vehicle skins
["variants", [
    ["vehClass", ["paint", 1]]
]] call _fnc_saveToTemplate;w


//Enter #include "Modset_Reb_Vehicle_Attributes.sqf" here

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = ["MTI_DC15A", "MTI_DC15S", "MTI_DC15S_mag", "mti_armoury_trooper_vest_base", "MTI_DP23", "MTI_DP23_mag", "MTI_HMRCO_blu", "MTI_DC15A_mag", "MTI_RPS6_D_Loaded", "ACE_personalAidKit", "MTI_HRCO_blu"];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","JLTS_clone_comlink"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["JLTS_clone_comlink","mti_armoury_trooper_backpack_RTO"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","JLTS_clone_comlink"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["JLTS_clone_comlink","mti_armoury_trooper_backpack_RTO"]};
_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = ["mti_armoury_trooper_uniform_CR", 
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
"mti_armoury_trooper_uniform_Mist"
];          //Uniforms given to Normal Rebels

private _dlcUniforms = [];          //Uniforms given if DLCs are enabled, only given to the Arsenal not Rebels

if (_hasContact) then {_dlcUniforms append [];
};

if (_hasApex) then {_dlcUniforms append [];
};

["uniforms", _rebUniforms + _dlcUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["headgear", ["mti_armoury_trooper_helmet_CR", "mti_armoury_trooper_helmet_CT"]] call _fnc_saveToTemplate;          //Headgear used by Rebell Ai until you have Armored Headgear.

/////////////////////
///  Identities   ///
/////////////////////

//Faces and Voices given to Rebell AI
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

_loadoutData set ["facewear", []];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

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
