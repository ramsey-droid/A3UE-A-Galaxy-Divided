private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "Mandalorian Survivors"] call _fnc_saveToTemplate;

["flag", "ls_flag_mandalorian_damaged"] call _fnc_saveToTemplate;
["flagTexture", "\ls\core\addons\data\flags\flag_mandalorian_damaged_ca.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "Mandalorian"] call _fnc_saveToTemplate;

["vehiclesBasic", ["AGD_Rebel_Speeder_Unarmed"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["AGD_Rebel_Speeder_Unarmed"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["AGD_Rebel_Speeder_armed"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["AGD_ITT_Rebel_Unarmed"]] call _fnc_saveToTemplate;
["vehiclesAT", ["WM_AAC_Speeder_Rocket", "WM_V25_Speeder", "WM_AAC_Speeder", "3AS_PX10_REB_F","AGD_Rebel_ITT"]] call _fnc_saveToTemplate;
["vehiclesAA", ["AGD_AAC_AA"]] call _fnc_saveToTemplate;

["vehiclesBoat", ["O_G_Boat_Transport_01_F"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["3AS_Gozanti_Civ_Green"]] call _fnc_saveToTemplate;
["vehiclesMedical", []] call _fnc_saveToTemplate;

["vehiclesCivCar", ["AGD_Fennek_Civ"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["AGD_Truck_Civ"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["3AS_Aegis_Carrier_Civ_Blue"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", []] call _fnc_saveToTemplate;
["vehiclesCivPlane", []] call _fnc_saveToTemplate;
["vehiclesCivSupply", ["AGD_Truck_Civ"]] call _fnc_saveToTemplate;

["staticMGs", ["ls_vehicle_mrbc","3AS_HeavyRepeater_Unarmoured"]] call _fnc_saveToTemplate;
["staticAT", ["AGD_Shellcracker_AT"]] call _fnc_saveToTemplate;
["staticAA", ["AGD_Shellcracker_AA"]] call _fnc_saveToTemplate;
["staticMortars", ["ls_vehicle_mortar_mercenary"]] call _fnc_saveToTemplate;
["staticMortarMagHE", "ls_5Rnd_82mm_mortar_HE"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", ""] call _fnc_saveToTemplate;

["minesAT", ["HX_AT_Mine_Mag"]] call _fnc_saveToTemplate;
["minesAPERS", ["APERSMine_Range_Mag"]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", ["ls_explosive_breachCharge_magazine"]] call _fnc_saveToTemplate;
["breachingExplosivesTank", ["ls_explosive_demoCharge_magazine"]] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["lootCrate", "A3AP_Box_Syndicate_Ammo_F"] call _fnc_saveToTemplate;
["rallyPoint", "3AS_Small_Mando_Stand"] call _fnc_saveToTemplate;

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
	"IDA_Galaar15",
	"IDA_Blaster_Cell_Power3_40Rnd_Yellow",
	"ls_imperialBackpack_satchel",
	"ls_mandalorianVest_eldarGrunt",
	"ls_mandalorianVest_ordoGrunt",
	"ls_mandalorianVest_vizslaGrunt",
	"ls_mandalorianVest_deathwatchGrunt",
	"ls_mandalorianVest_standard",
    "IDA_Westar35",
    "IDA_Blaster_Cell_Power2_20Rnd_yellow",
	["3AS_RPS6_F", 15],
	["3AS_DetPack", 10],
	["ls_explosive_breachCharge_magazine", 10],
	["ls_explosive_demoCharge_magazine", 7]
];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","ls_radios_hush98"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155","ls_mandalorianBackpack_radio"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","ls_radios_hush98"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["ls_radios_hush98","ls_mandalorianBackpack_radio"]};
_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = ["ls_mandalorianUniform",
"ls_mandalorianUniform_traditionalWoman"
   ];          //Uniforms given to Normal Rebels

private _dlcUniforms = [];          //Uniforms given if DLCs are enabled, only given to the Arsenal not Rebels

if (_hasContact) then {_dlcUniforms append [];
};

if (_hasApex) then {_dlcUniforms append [];
};

["uniforms", _rebUniforms + _dlcUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["headgear", ["ls_mandalorianHelmet_traditional", "ls_mandalorianHelmet_dinDjarin","ls_mandalorianHelmet_eldarGrunt","ls_mandalorianHelmet_vizslaGrunt","ls_mandalorianHelmet_ordoGrunt","ls_mandalorianHelmet_deathwatchGrunt"]] call _fnc_saveToTemplate;          //Headgear used by Rebell Ai until you have Armored Headgear.

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
["voices", ["Male01ENGB","Male02ENGB","Male03ENGB","Male04ENGB","Male05ENGB"]] call _fnc_saveToTemplate;
//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniforms];

_loadoutData set ["facewear", ["ls_mandalorian_rangefinder_hud"]];

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
