private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "Jedi Survivors"] call _fnc_saveToTemplate;

["flag", "ls_flag_rebelAlliance_damaged"] call _fnc_saveToTemplate;
["flagTexture", "\ls\core\addons\data\flags\flag_jedi_damaged_ca.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "JLTS_flag_Rep"] call _fnc_saveToTemplate;

["vehiclesBasic", ["3AS_BarcSideCar_212","3AS_Barc_212"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["3AS_ISP_Transport"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["3AS_ISP"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["3AS_RTT_Wheeled"]] call _fnc_saveToTemplate;
["vehiclesAT", ["3AS_PX10_REP_F"]] call _fnc_saveToTemplate;
["vehiclesAA", ["AGD_AAC_AA"]] call _fnc_saveToTemplate;

["vehiclesBoat", ["O_G_Boat_Transport_01_F"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["3AS_Gozanti_Republic"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["3AS_ITT_Medical"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["C_Offroad_01_F"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["C_Van_01_transport_F"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["3AS_Aegis_Carrier_Civ_Blue"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["C_Boat_Civil_01_F"]] call _fnc_saveToTemplate;
["vehiclesCivPlane", []] call _fnc_saveToTemplate;
["vehiclesCivSupply", ["C_Truck_02_transport_F"]] call _fnc_saveToTemplate;

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

["vehicleLightSource", "land_3AS_gar_tall"] call _fnc_saveToTemplate;


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
    "3AS_DP23_F",
    "3AS_10Rnd_EC30_Pellets",
	"WBK_lightsaber_jedi",
	"WBK_lightsaber_green",
	"WBK_lightsaber2_yellow",
	"WBK_Cybercrystal",
	"lightsaber_style_1",
	"lightsaber_style_2",
	"Force_tir_2",
    "3AS_DC17S_F",
    "3AS_16Rnd_EC20_Mag",
    "ls_gar_beltBag_leg",
	"JLTS_CloneVestHolster",
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

private _rebUniforms = [
"ls_garUniform_jediCommander",
"AGD_CU_Clonetrooper1",
"AGD_CU_Clonetrooper_104",
"AGD_CU_Clonetrooper_327",
"AGD_CU_Clonetrooper_41",
"AGD_CU_Clonetrooper_501"
   ];          //Uniforms given to Normal Rebels

private _dlcUniforms = [];          //Uniforms given if DLCs are enabled, only given to the Arsenal not Rebels

private _officerUniform = ["ls_garUniform_jediCommander"];
private _officerHat = ["GoG_HolsterSwordVestBack"];
private _officerVest = ["JLTS_CloneVestCommander_501_Rex"];

if (_hasContact) then {_dlcUniforms append [];
};

if (_hasApex) then {_dlcUniforms append [];
};

["uniforms", _rebUniforms + _dlcUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal
["officerUniform", _officerUniform] call _fnc_saveToTemplate;
["officerHat", _officerHat] call _fnc_saveToTemplate;
["officerVest", _officerVest] call _fnc_saveToTemplate;

["headgear", ["AGD_CU_CloneHelmet1",
"AGD_CU_CloneHelmet_104",
"AGD_CU_CloneHelmet_327",
"AGD_CU_CloneHelmet_41",
"AGD_CU_CloneHelmet_501"
]] call _fnc_saveToTemplate;          //Headgear used by Rebell Ai until you have Armored Headgear.

/////////////////////
///  Identities   ///
/////////////////////

//Faces and Voices given to Rebell AI
["faces", [
    "ls_cloneA",
    "ls_cloneB",
    "ls_cloneC",
    "ls_cloneD",
    "ls_cloneE",
    "ls_cloneF",
    "ls_cloneG",
    "ls_cloneH",
    "ls_cloneDeveloper_n3rf",
    "ls_cloneDeveloper_dutch",
    "ls_cloneDeveloper_gambit",
    "ls_cloneDeveloper_khaos",
    "ls_cloneDeveloper_marco",
    "ls_cloneDeveloper_whiplash"
]] call _fnc_saveToTemplate;
["voices", ["JLTS_voice_clone"]] call _fnc_saveToTemplate;

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
    ["Petros", _petrosTemplate],
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
