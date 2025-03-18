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

["vehiclesBasic", []] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", []] call _fnc_saveToTemplate;
["vehiclesLightArmed", []] call _fnc_saveToTemplate;
["vehiclesTruck", []] call _fnc_saveToTemplate;
["vehiclesAT", []] call _fnc_saveToTemplate;
["vehiclesAA", []] call _fnc_saveToTemplate;

["vehiclesBoat", []] call _fnc_saveToTemplate;

["vehiclesPlane", []] call _fnc_saveToTemplate;
["vehiclesMedical", []] call _fnc_saveToTemplate;

["vehiclesCivCar", []] call _fnc_saveToTemplate;
["vehiclesCivTruck", []] call _fnc_saveToTemplate;
["vehiclesCivHeli", []] call _fnc_saveToTemplate;
["vehiclesCivBoat", []] call _fnc_saveToTemplate;
["vehiclesCivPlane", []] call _fnc_saveToTemplate;
["vehiclesCivSupply", []] call _fnc_saveToTemplate;

["staticMGs", []] call _fnc_saveToTemplate;
["staticAT", []] call _fnc_saveToTemplate;
["staticAA", []] call _fnc_saveToTemplate;
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

private _initialRebelEquipment = ["Bat_Clear"];

if (A3A_hasTFAR) then {_initialRebelEquipment append []};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append []};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append []};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append []};
_initialRebelEquipment append [];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = ["SEA_Uniform_Schlabbie"];          //Uniforms given to Normal Rebels

private _dlcUniforms = [];          //Uniforms given if DLCs are enabled, only given to the Arsenal not Rebels

if (_hasContact) then {_dlcUniforms append []};
if (_hasApex) then {_dlcUniforms append []};

["uniforms", _rebUniforms + _dlcUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["headgear", ["H_Watchcap_cbr"
]] call _fnc_saveToTemplate;          //Headgear used by Rebel AI until you have Armored Headgear.

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
_loadoutData set ["maps", []];
_loadoutData set ["watches", []];
_loadoutData set ["compasses", []];
_loadoutData set ["binoculars", []];

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