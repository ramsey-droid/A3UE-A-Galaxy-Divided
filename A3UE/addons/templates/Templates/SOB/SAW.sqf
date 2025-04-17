private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "SOB"] call _fnc_saveToTemplate;

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", "\z\mti\addons\common\data\SOB_Flag_Grey.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "JLTS_flag_Rep"] call _fnc_saveToTemplate;

["vehiclesBasic", ["MTI_Barc"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["3AS_ISP_Transport"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["MTI_MUTT_I", "MTI_MUTT_C", "mti_factions_rebels_Jeep"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["B_Truck_01_covered_F"]] call _fnc_saveToTemplate;
["vehiclesAT", ["3AS_PX10_REB_F", "3AS_PX10_REB_UP", "3AS_PX10_REB_R3", "I_G_Offroad_01_AT_F", "mti_factions_rebels_AAC_Speeder", "mti_factions_rebels_MTI_AAC_Rocket"]] call _fnc_saveToTemplate;
["vehiclesAA", ["OPTRE_M12R_AA"]] call _fnc_saveToTemplate;

["vehiclesBoat", ["optre_catfish_mg_f"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["MTI_Vwing", "mti_factions_rebels_ForestSpeeder", "mti_factions_rebels_AG_ForestSpeeder"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["MTI_Barc_Stretcher"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["OPTRE_M12_CIV", "OPTRE_M12_CIV2"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["C_Van_01_transport_F"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["a3a_C_Heli_Light_02_blue_F"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["C_Rubberboat"]] call _fnc_saveToTemplate;
["vehiclesCivPlane", ["C_Plane_Civil_01_F"]] call _fnc_saveToTemplate;
["vehiclesCivSupply", ["C_Truck_02_box_F"]] call _fnc_saveToTemplate;

["staticMGs", ["MTI_HeavyRepeater", "mti_factions_rebels_FDTower"]] call _fnc_saveToTemplate;
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

["lootCrate", "mti_supplies_crate_empty"] call _fnc_saveToTemplate;
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

private _initialRebelEquipment = ["TKE_FCFWebbing2", "V_TKEWork_belt", "TKE_FCFWebbing1", "WBK_AlterHis_Volksturmgewerh", "STG_30Rnd_Mag", "WBK_AlterHis_MP30_Drilling", "2Rnd_12Gauge_Slug", "Black_WM_Rebel_bag"];

if (A3A_hasTFAR) then {_initialRebelEquipment append []};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append []};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append []};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append []};
_initialRebelEquipment append ["TKE_FCFWebbing2", "V_TKEWork_belt", "TKE_FCFWebbing1", "WBK_AlterHis_Volksturmgewerh", "STG_30Rnd_Mag", "WBK_AlterHis_MP30_Drilling", "2Rnd_12Gauge_Slug", "Black_WM_Rebel_bag"];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = ["U_UCFACamoV1_Uniform1", 
"U_UCFACamoV2_Uniform1",
"U_MTF_Uniform1",
"U_MTF_Sweater", 
"U_UCFACamoV1_Uniform2",
"U_UCFACamoV2_Uniform2",
"U_UCFA_Uniform2",
"U_UCMCCamoV1_Uniform2",
"U_MDTFCamoV2_Uniform2",
"U_MTF_Uniform2"];          //Uniforms given to Normal Rebels

private _dlcUniforms = [];          //Uniforms given if DLCs are enabled, only given to the Arsenal not Rebels

if (_hasContact) then {_dlcUniforms append []};
if (_hasApex) then {_dlcUniforms append []};

["uniforms", _rebUniforms + _dlcUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["headgear", ["H_TKEWork_UCFABooniehatMilcap_F", 
"H_TKEWork_UCFACamoV1Booniehat_F", 
"H_TKEWork_UCFACamoV2Booniehat_F",
"H_TKEWork_UCFACamoV1Milcap_F", 
"H_TKEWork_UCFACamoV2Milcap_F", 
"H_TKEWork_UCMCCamoV1Milcap_F", 
"H_TKEWork_MDTFCamoV2Booniehat_F", 
"H_TKEWork_MDTFCamoV2Milcap_F", 
"H_TKEWork_MTFMilcap_F", 
"H_TKEWork_UCFAMilcap_F"
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
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", []];
_loadoutData set ["binoculars", []];

_loadoutData set ["uniforms", _rebUniforms];

_loadoutData set ["facewear", ["TKE_FaceCoverGrey", "TKE_HeadsetEPFWGrey", "TKE_FaceCoverEPFWGrey", "TKE_UCMCGogglesDown"]];

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