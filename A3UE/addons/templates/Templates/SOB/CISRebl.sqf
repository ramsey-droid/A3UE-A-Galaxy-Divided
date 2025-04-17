private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "CIS"] call _fnc_saveToTemplate;

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", "ls_statics_props\flags\data\flag_cis.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "JLTS_flag_CIS"] call _fnc_saveToTemplate;

["vehiclesBasic", ["3AS_Fliknot_Brown", "3AS_Fliknot_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["mti_factions_cis_SAC_Trade"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["mti_factions_cis_Combat_speeder", "mti_factions_cis_PAC_Trade"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["OPTRE_m1015_mule_ins"]] call _fnc_saveToTemplate;
["vehiclesAT", ["mti_factions_cis_GAT_Light_Olive", "mti_factions_cis_ast"]] call _fnc_saveToTemplate;
["vehiclesAA", ["mti_factions_cis_Hailfire_SAM"]] call _fnc_saveToTemplate;

["vehiclesBoat", ["optre_catfish_mg_f"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["mti_factions_cis_Vulture_Base", "3AS_HMP_Transport"]] call _fnc_saveToTemplate;
["vehiclesMedical", []] call _fnc_saveToTemplate;

["vehiclesCivCar", ["C_Offroad_01_F", "C_Hatchback_01_F"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["C_Van_01_transport_F"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["a3a_C_Heli_Light_02_blue_F"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["C_Rubberboat"]] call _fnc_saveToTemplate;
["vehiclesCivPlane", ["C_Plane_Civil_01_F"]] call _fnc_saveToTemplate;
["vehiclesCivSupply", ["C_Truck_02_box_F"]] call _fnc_saveToTemplate;

["staticMGs", ["mti_factions_cis_J10s", "mti_factions_cis_EWeb_Unarmoured"]] call _fnc_saveToTemplate;
["staticAT", ["B_static_AT_F"]] call _fnc_saveToTemplate;
["staticAA", ["B_static_AA_F"]] call _fnc_saveToTemplate;
["staticMortars", ["mti_factions_cis_mortar"]] call _fnc_saveToTemplate;
["staticMortarMagHE", ["MTI_Red_HE_Mag"]] call _fnc_saveToTemplate;
["staticMortarMagSmoke", ["3AS_8Rnd_82mm_Mo_Smoke_white"]] call _fnc_saveToTemplate;

["minesAT", ["ATMine"]] call _fnc_saveToTemplate;
["minesAPERS", ["APERSMine_Range_Mag"]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", ["MTI_BreachingCharge_Mag"]] call _fnc_saveToTemplate;
["breachingExplosivesTank", ["MTI_BreachingCharge_Mag"]] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["lootCrate", "NCA_civilianSupplyCrate_blue"] call _fnc_saveToTemplate;
["rallyPoint", "SFA_GonkFatherMeme"] call _fnc_saveToTemplate;

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

private _initialRebelEquipment = ["JLTS_E5", "JLTS_E5_mag", "JLTS_RG4D", "JLTS_RG4D_mag", "WBK_Dutch_Vibro", "JLTS_B1_backpack", "JLTS_B1_backpack_prototype"];

if (A3A_hasTFAR) then {_initialRebelEquipment append []};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append []};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append []};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append []};
_initialRebelEquipment append ["JLTS_E5", "JLTS_E5_mag", "JLTS_RG4D", "JLTS_RG4D_mag", "WBK_Dutch_Vibro", "JLTS_B1_backpack", "JLTS_B1_backpack_prototype"];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = ["JLTS_DroidB1", 
"JLTS_DroidB1_Marine",
"JLTS_DroidB1_Pilot",
"JLTS_DroidB1_Prototype", 
"JLTS_DroidB1_Security",
"lsd_cis_bxDroid_uniform",
"3AS_U_CIS_Light_Armor",
"lsd_cis_bxDiplomatDroid_uniform"
];          //Uniforms given to Normal Rebels

private _dlcUniforms = [];          //Uniforms given if DLCs are enabled, only given to the Arsenal not Rebels

if (_hasContact) then {_dlcUniforms append []};
if (_hasApex) then {_dlcUniforms append []};

["uniforms", _rebUniforms + _dlcUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["headgear", []] call _fnc_saveToTemplate;          //Headgear used by Rebel AI until you have Armored Headgear.

/////////////////////
///  Identities   ///
/////////////////////

//Faces and Voices given to Rebel AI
["faces", ["lsd_cis_bx_head", "ls_mirialan_male3_yellow", "ls_mirialan_male2_sand", "ls_mirialan_male1_green", "Head_chiss_01", "Head_SFA_Cathar_02", "Head_SFA_Trandoshan_01"]] call _fnc_saveToTemplate;
["voices", ["lsd_voice_B1BattleDroid", "Male01ENGVR"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", []];
_loadoutData set ["binoculars", ["JLTS_DroidBinocular"]];

_loadoutData set ["uniforms", _rebUniforms];

_loadoutData set ["facewear", []];

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