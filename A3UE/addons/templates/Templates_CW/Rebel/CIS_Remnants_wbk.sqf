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

["flag", "ls_flag_rebelAlliance_damaged"] call _fnc_saveToTemplate;
["flagTexture", "\ls\core\addons\data\flags\flag_cis_damaged_ca.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "JLTS_flag_CIS"] call _fnc_saveToTemplate;

["vehiclesBasic", ["3AS_Combat_Speeder_F","3AS_Fliknot_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["3AS_SAC_F"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["3AS_PAC_F"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["3AS_RTT_Wheeled"]] call _fnc_saveToTemplate;
["vehiclesAT", ["3AS_N99","ls_vehicle_ast"]] call _fnc_saveToTemplate;
["vehiclesAA", ["AGD_AAC_AA"]] call _fnc_saveToTemplate;

["vehiclesBoat", ["O_G_Boat_Transport_01_F"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["3AS_HMP_Transport"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["3AS_ITT_Medical"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["AGD_Fennek_Civ"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["AGD_Truck_Civ"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["3AS_Aegis_Carrier_Civ_Blue"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", []] call _fnc_saveToTemplate;
["vehiclesCivPlane", []] call _fnc_saveToTemplate;
["vehiclesCivSupply", ["AGD_Truck_Civ"]] call _fnc_saveToTemplate;

["staticMGs", ["ls_vehicle_mrbc"]] call _fnc_saveToTemplate;
["staticAT", ["AGD_Shellcracker_AT"]] call _fnc_saveToTemplate;
["staticAA", ["AGD_Shellcracker_AA"]] call _fnc_saveToTemplate;
["staticMortars", ["WM_ImperialMortar"]] call _fnc_saveToTemplate;
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

["minesAT", ["HX_AT_Mine_Mag"]] call _fnc_saveToTemplate;
["minesAPERS", ["APERSMine_Range_Mag"]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", ["ls_explosive_breachCharge_magazine"]] call _fnc_saveToTemplate;
["breachingExplosivesTank", ["ls_explosive_demoCharge_magazine"]] call _fnc_saveToTemplate;

["vehicleLightSource", "land_3AS_fob_light_cis_off"] call _fnc_saveToTemplate;


//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["lootCrate", "A3AP_Box_Syndicate_Ammo_F"] call _fnc_saveToTemplate;
["rallyPoint", "3AS_Double_Imp_Stand"] call _fnc_saveToTemplate;

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

private _initialRebelEquipment = [
    "AGD_E5",
    "IDA_Blaster_Cell_Power3_40Rnd_Red",
    "AGD_E5C",
    "IDA_Blaster_Cell_Power3_60Rnd_Red",
    "IDA_E5S",
	"IDA_Blaster_Cell_Power5_5Rnd_Red",
	"JLTS_RG4D",
	"JLTS_RG4D_mag",
	["3AS_RPS6_F", 15],
	["3AS_DetPack", 10],
	["ls_explosive_breachCharge_magazine", 10],
	["ls_explosive_demoCharge_magazine", 7]
];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","JLTS_clone_comlink"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155","JLTS_Clone_LR_attachment"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","JLTS_clone_comlink"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["JLTS_clone_comlink","JLTS_Clone_LR_attachment"]};
_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = ["3AS_U_CIS_Light_Armor",
"3AS_U_CIS_Medic_Armor",
"3AS_U_CIS_Heavy_Armor",
"TAS_DroidB1",
"TAS_DroidB1_Security"
   ];          //Uniforms given to Normal Rebels

private _dlcUniforms = [];          //Uniforms given if DLCs are enabled, only given to the Arsenal not Rebels

private _officerUniform = ["3AS_U_CIS_TS"];
private _officerHat = [];
private _officerVest = [];

if (_hasContact) then {_dlcUniforms append [];
};

if (_hasApex) then {_dlcUniforms append [];
};

["uniforms", _rebUniforms + _dlcUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal
["officerUniform", _officerUniform] call _fnc_saveToTemplate;
["officerHat", _officerHat] call _fnc_saveToTemplate;
["officerVest", _officerVest] call _fnc_saveToTemplate;

["headgear", ["3AS_CIS_Light_helmet",
"3AS_CIS_Medic_helmet"
]] call _fnc_saveToTemplate;          //Headgear used by Rebell Ai until you have Armored Headgear.

/////////////////////
///  Identities   ///
/////////////////////

//Faces and Voices given to Rebell AI
["faces", [
    "WhiteHead_07",
    "WhiteHead_15",
    "GreekHead_A3_04",
    "AfricanHead_02",
    "WhiteHead_29",
    "LivonianHead_4",
    "RussianHead_5",
    "LivonianHead_9",
    "GreekHead_A3_11",
    "RussianHead_1",
    "WhiteHead_26",
    "AsianHead_A3_06",
    "TanoanHead_A3_04",
    "WhiteHead_30"
]] call _fnc_saveToTemplate;
["voices", ["ls_voice_b1Droid"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniforms];
_loadoutData set ["officerUniform", _officerUniform];
_loadoutData set ["officerHat", _officerHat];
_loadoutData set ["officerVest", _officerVest];

_loadoutData set ["facewear", []];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
////////////////////////

private _petrosTemplate = {
    ["officerHat"] call _fnc_setHeadgear;
    ["officerUniform"] call _fnc_setUniform;
	["officerVest"] call _fnc_setVest;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

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
    ["Petros", _petrosTemplate, [["baseClass", "WBK_3AS_B1", false]]],
    ["SquadLeader", _squadLeaderTemplate, [["baseClass", "WBK_3AS_B1", false]]],
    ["Rifleman", _riflemanTemplate, [["baseClass", "WBK_3AS_B1", false]]],
    ["staticCrew", _riflemanTemplate, [["baseClass", "WBK_3AS_B1", false]]],
    ["Medic", _riflemanTemplate, [["medic", true]]],
    ["Engineer", _riflemanTemplate, [["engineer", true]]],
    ["ExplosivesExpert", _riflemanTemplate, [["baseClass", "WBK_3AS_B1", false]]],
    ["Grenadier", _riflemanTemplate, [["baseClass", "WBK_3AS_B1", false]]],
    ["LAT", _riflemanTemplate, [["baseClass", "WBK_3AS_B1", false]]],
    ["AT", _riflemanTemplate, [["baseClass", "WBK_3AS_B1", false]]],
    ["AA", _riflemanTemplate, [["baseClass", "WBK_3AS_B1", false]]],
    ["MachineGunner", _riflemanTemplate, [["baseClass", "WBK_LS_B2", true]]],
    ["Marksman", _riflemanTemplate, [["baseClass", "WBK_3AS_B1", false]]],
    ["Sniper", _riflemanTemplate, [["baseClass", "WBK_3AS_B1", false]]],
    ["Unarmed", _riflemanTemplate, [["baseClass", "WBK_3AS_B1", false]]]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
