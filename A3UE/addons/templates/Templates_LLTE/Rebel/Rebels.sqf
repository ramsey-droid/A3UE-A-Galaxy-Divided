private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "Rebel Alliance"] call _fnc_saveToTemplate;

["flag", "ls_flag_rebelAlliance_damaged"] call _fnc_saveToTemplate;
["flagTexture", "\ls\core\addons\data\flags\flag_rebelAlliance_damaged_ca.paa"] call _fnc_saveToTemplate;
["flagMarkerType", ""] call _fnc_saveToTemplate;

["vehiclesBasic", ["JMSLLTE_O_veh_AA2_reb_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["JMSLLTE_B_veh_v35c_reb_F"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["JMSLLTE_B_veh_x34mk2_reb_F","JMSLLTE_O_veh_AA2mk2_reb_F","JMSLLTE_O_veh_AA5mk2_reb_F"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["JMSLLTE_O_veh_AA5_reb_F"]] call _fnc_saveToTemplate;
["vehiclesAT", ["WM_AAC_Speeder_Rocket", "WM_V25_Speeder", "WM_AAC_Speeder", "3AS_PX10_REB_F","AGD_Rebel_ITT"]] call _fnc_saveToTemplate;
["vehiclesAA", ["AGD_AAC_AA"]] call _fnc_saveToTemplate;

["vehiclesBoat", ["O_G_Boat_Transport_01_F"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["JMSLLTE_Uwing_veh_F","3AS_Civilian_Transport_03"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["JMSLLTE_O_veh_AA5sup_reb_F"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["JMSLLTE_C_veh_g17_F"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["JMSLLTE_C_veh_AA5_F"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["3AS_Aegis_Carrier_Civ_Blue"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["C_Boat_Civil_01_F"]] call _fnc_saveToTemplate;
["vehiclesCivPlane", []] call _fnc_saveToTemplate;
["vehiclesCivSupply", ["JMSLLTE_C_veh_AA5sup_F"]] call _fnc_saveToTemplate;

["staticMGs", ["JMSLLTE_O_vehgr_m45turret_reb_F","3AS_HeavyRepeater_Unarmoured"]] call _fnc_saveToTemplate;
["staticAT", ["AGD_Shellcracker_AT"]] call _fnc_saveToTemplate;
["staticAA", ["AGD_Shellcracker_AA"]] call _fnc_saveToTemplate;
["staticMortars", ["ls_vehicle_mortar_mercenary"]] call _fnc_saveToTemplate;
["staticMortarMagHE", "ls_5Rnd_82mm_mortar_HE"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", ""] call _fnc_saveToTemplate;

["minesAT", ["HX_AT_Mine_Mag"]] call _fnc_saveToTemplate;
["minesAPERS", ["APERSMine_Range_Mag"]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", ["ls_explosive_breachCharge_magazine"]] call _fnc_saveToTemplate;
["breachingExplosivesTank", ["ls_explosive_demoCharge_magazine"]] call _fnc_saveToTemplate;

["vehicleLightSource", "land_3AS_fob_light_reb_tall"] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["lootCrate", "A3AP_Box_Syndicate_Ammo_F"] call _fnc_saveToTemplate;
["rallyPoint", "3AS_Double_Reb_Stand"] call _fnc_saveToTemplate;

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
    "JMSLLTE_dh17",
    "JMSLLTE_DH17_30Rnd_Mag",
    "JMSLLTE_dl18pistol",
    "JMSLLTE_DL18_20rnd_Mag",
    "ls_vest_holster_maroon",
    "JMSLLTE_HeavyBand_brown_armor",
    "JMSLLTE_back_rebsmall_v1",
	["3AS_RPS6_F", 15],
	["3AS_DetPack", 10],
	["ls_explosive_breachCharge_magazine", 10],
	["ls_explosive_demoCharge_magazine", 7]
];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","ls_radios_hush98"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155","JMSLLTE_back_rebradio_v1_black"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","ls_radios_hush98"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["ls_radios_hush98","JMSLLTE_back_rebradio_v1_black"]};
_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = ["JMSLLTE_ScumTroopHeavy_wood_F_CombatUniform",
"JMSLLTE_ScumTroopCom_black_F_CombatUniform",
"JMSLLTE_ScumTroopCom_black2_F_CombatUniform",
"JMSLLTE_ScumTroopCom_brown_F_CombatUniform",
"ls_uniform_spacer",
"ls_uniform_spacer_brown"
   ];          //Uniforms given to Normal Rebels

private _dlcUniforms = [];          //Uniforms given if DLCs are enabled, only given to the Arsenal not Rebels

if (_hasContact) then {_dlcUniforms append [];
};

if (_hasApex) then {_dlcUniforms append [];
};

["uniforms", _rebUniforms + _dlcUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["headgear", ["ls_helmet_jockey", "ls_helmet_jockey_alt"]] call _fnc_saveToTemplate;          //Headgear used by Rebell Ai until you have Armored Headgear.

/////////////////////
///  Identities   ///
/////////////////////

//Faces and Voices given to Rebell AI
["faces", [
    "TanoanHead_A3_02",
    "WhiteHead_02",
    "WhiteHead_18",
    "AsianHead_A3_05",
    "ls_chiss_male1_blue",
    "GreekHead_A3_01",
    "ls_chiss_male3_purple",
    "GreekHead_A3_04",
    "WhiteHead_07",
    "TanoanHead_A3_04",
    "WhiteHead_26",
    "LivonianHead_7",
    "TanoanHead_A3_05",
    "TanoanHead_A3_07",
    "ls_mirialan_male1_green",
    "ls_mirialan_male1_sand",
    "ls_mirialan_male1_yellow",
    "ls_mirialan_male2_green",
    "ls_mirialan_male2_sand",
    "ls_mirialan_male2_yellow",
    "ls_mirialan_male3_green",
    "ls_mirialan_male3_sand",
    "ls_mirialan_male3_yellow",
    "ls_zabrak_male2t1_base",
    "ls_zabrak_male2t2_pale",
    "ls_zelosian_male1",
    "ls_zelosian_male2",
    "ls_zeltron_male3_red",
    "ls_zeltron_male2_pink",
    "ls_zeltron_male1_red",
    "Head_AbedDark",
    "Head_AbedGrey",
    "Head_AbedPink",
    "Head_AbedYellow",
    "Head_AqualishBrown",
    "Head_AqualishGreen",
    "Head_AqualishLight",
    "Head_DurosBlue",
    "Head_DurosBlue2",
    "Head_DurosGreen",
    "Head_DurosGrey",
    "Head_QuarrenBrown",
    "Head_QuarrenPink",
    "Head_QuarrenRed",
    "Head_QuarrenYellow",
    "Head_RodianBlue",
    "Head_RodianGreen",
    "Head_RodianOlive",
    "Head_RodianRed",
    "Head_SullustanSkin"
    ]] call _fnc_saveToTemplate;
["voices", ["Male01ENGB","Male02ENGB","Male03ENGB","Male04ENGB","Male05GRE","Male10ENG","Male03POL","Male01CHI","Male02PER","Male01RUS","Male01ENGFRE","Male02FRE"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniforms];

_loadoutData set ["facewear", ["ls_jabiimGlasses_goggles"]];

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
