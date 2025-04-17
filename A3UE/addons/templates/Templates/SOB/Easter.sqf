private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "Clone Underground"] call _fnc_saveToTemplate;

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", "\z\mti\addons\common\data\SOB_Flag_Grey.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "JLTS_flag_Rep"] call _fnc_saveToTemplate;

["vehiclesBasic", ["MTI_Barc"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["MTI_Barc", "NCA_AA5Orbak"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["MTI_MUTT_I", "MTI_MUTT_C", "mti_factions_rebels_Jeep"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["OPTRE_m1087_stallion_cover_unsc"]] call _fnc_saveToTemplate;
["vehiclesAT", ["MTI_PX10_Armored", "I_G_Offroad_01_AT_F"]] call _fnc_saveToTemplate;
["vehiclesAA", ["OPTRE_M12R_AA"]] call _fnc_saveToTemplate;

["vehiclesBoat", ["optre_catfish_unarmed_f"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["mti_factions_rebels_DesertSpeeder", "mti_factions_rebels_ForestSpeeder"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["MTI_Barc_Stretcher"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["C_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["C_Truck_02_covered_F"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["a3a_C_Heli_Light_02_blue_F"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["C_Rubberboat"]] call _fnc_saveToTemplate;
["vehiclesCivPlane", ["C_Plane_Civil_01_F"]] call _fnc_saveToTemplate;
["vehiclesCivSupply", ["C_Truck_02_box_F"]] call _fnc_saveToTemplate;

["staticMGs", ["MTI_HeavyRepeater", "NCA_EWeb"]] call _fnc_saveToTemplate;
["staticAT", ["B_static_AT_F"]] call _fnc_saveToTemplate;
["staticAA", ["B_static_AA_F"]] call _fnc_saveToTemplate;
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

["lootCrate", "mti_supplies_crate_empty_wide"] call _fnc_saveToTemplate;
["rallyPoint", "land_TKE_MilLightRed"] call _fnc_saveToTemplate;

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

private _initialRebelEquipment = ["3AS_EC17_F", "3AS_ScatterGun_F", "WBK_axe", "TFAR_anprc148jem", "3AS_8Rnd_EY30_Pellets", "3AS_14Rnd_EM10_Mag", "Black_WM_Rebel_Radio", "Black_WM_Rebel_bag", "V_TKEWork_belt", "TKE_FCFWebbing2", "TKE_FCFWebbing1", "JLTS_CloneVestRecon"];

if (A3A_hasTFAR) then {_initialRebelEquipment append []};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append []};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append []};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append []};
_initialRebelEquipment append [];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = ["lsd_gar_bodyGloveLegArmor_uniform", "NCA_cloneArmor_uniform_enlisted", "3AS_Clone_Phase1_Dirty_Armor", "JLTS_CloneArmor_medic", "JLTS_CloneArmor_bomb", "3AS_Clone_Phase1_Dirty_Armor_Captain", "3AS_Clone_Phase1_Dirty_Armor_Commander", "3AS_Clone_Phase1_Dirty_Armor_Sergeant", "3AS_Clone_Phase1_Dirty_Armor_Lieutenant", "TKE_CombatUniRolledV1MDCamo_U_B", "TKE_CombatUniRolledV2MDCamo_U_B", "mti_armoury_trooper_uniform_CT", "TKE_CombatUniRolledV2FCF_U_B", "mti_armoury_trooper_uniform_CT_EOD", "mti_armoury_trooper_uniform_CT_Medic", "NCA_GMArmor_uniform", "TKE_CombatUniRolledV1FCF_U_B"];          //Uniforms given to Normal Rebels

private _dlcUniforms = [];          //Uniforms given if DLCs are enabled, only given to the Arsenal not Rebels

if (_hasContact) then {_dlcUniforms append []};
if (_hasApex) then {_dlcUniforms append []};

["uniforms", _rebUniforms + _dlcUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["headgear", ["NCA_P1Helmet", "NCA_GMHelmet"
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

_loadoutData set ["facewear", ["TKE_FaceCover", "ls_misc_poncho_facewear", "G_Balaclava_blk", "SWLB_CEE_Clone_Hood", "SWLB_CEE_Clone_Scarf_Stewart"]];

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