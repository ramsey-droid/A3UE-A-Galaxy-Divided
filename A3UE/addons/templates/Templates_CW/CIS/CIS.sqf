//////////////////////////
//   Side Information   //
//////////////////////////

["name", "CIS"] call _fnc_saveToTemplate;
["spawnMarkerName", "CIS Providence"] call _fnc_saveToTemplate;

["flag", "ls_flag_cis"] call _fnc_saveToTemplate;
["flagTexture", "\ls\core\addons\data\flags\flag_cis_ca.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "JLTS_Flag_CIS"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["vehiclesDropPod", ["ls_droidDispenser"]] call _fnc_saveToTemplate; //"ls_ground_droidDispenser"

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;     //Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["3AS_Fliknot_F"]] call _fnc_saveToTemplate; 			//this line determines basic vehicles, the lightest kind available. -- Example: ["vehiclesBasic", ["B_Quadbike_01_F"]] -- Array, can contain multiple assets
["vehiclesLightUnarmed", ["3AS_Combat_Speeder_F"]] call _fnc_saveToTemplate; 		
["vehiclesLightArmed",["3AS_Combat_Speeder_F", "lsd_car_ast"]] call _fnc_saveToTemplate; 		
["vehiclesTrucks", ["3AS_PAC_F"]] call _fnc_saveToTemplate; 			
["vehiclesCargoTrucks", ["3AS_PAC_F"]] call _fnc_saveToTemplate; 	
["vehiclesAmmoTrucks", ["3AS_SAC_Repair_F"]] call _fnc_saveToTemplate; 
["vehiclesRepairTrucks", ["3AS_SAC_Repair_F"]] call _fnc_saveToTemplate; 	
["vehiclesFuelTrucks", ["3AS_SAC_Repair_F"]] call _fnc_saveToTemplate;		
["vehiclesMedical", ["3AS_SAC_Repair_F"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", ["3AS_SAC_F"]] call _fnc_saveToTemplate;
["vehiclesAirborne", ["3AS_Advanced_DSD", "3AS_PAC_F"]] call _fnc_saveToTemplate;
["vehiclesAPCs", ["3AS_PAC_F"]] call _fnc_saveToTemplate;
["vehiclesIFVs", ["3AS_AAT_CIS"]] call _fnc_saveToTemplate;
["vehiclesLightTanks",  ["3AS_N99","3AS_Advanced_DSD","3AS_Heavy_AAT_Flamer_F"]] call _fnc_saveToTemplate;
["vehiclesTanks", ["3AS_AAT_CIS", "3AS_AAT_CIS", "3AS_GAT", "3AS_N99"]] call _fnc_saveToTemplate;
["vehiclesAA", ["3AS_GAT_Light"]] call _fnc_saveToTemplate;

["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", []] call _fnc_saveToTemplate;
["vehiclesAmphibious", []] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["3AS_CIS_Vulture_CAS_Brown"]] call _fnc_saveToTemplate;
["vehiclesPlanesLargeCAS", ["3AS_CIS_Vulture_CAS_F","3AS_CIS_Vulture_CAS_F","3AS_CIS_Vulture_CAS_F","3AS_CIS_Vulture_CAS_F","3AS_CIS_Vulture_CAS_F","3AS_CIS_Vulture_CAS_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["3AS_CIS_Vulture_AA_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesLargeAA", ["3AS_CIS_Vulture_AA_F","3AS_CIS_Vulture_AA_F","3AS_CIS_Vulture_AA_F","3AS_CIS_Vulture_AA_F","3AS_CIS_Vulture_AA_F","3AS_CIS_Vulture_AA_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", ["ls_vehicle_cisDropship"]] call _fnc_saveToTemplate;

["vehiclesPlanesGunship", ["3AS_HMP_Gunship"]] call _fnc_saveToTemplate;

["vehiclesHelisLight", ["3AS_CIS_Vulture_F"]] call _fnc_saveToTemplate; 		//this line determines light helis -- Example: ["vehiclesHelisLight", ["B_Heli_Light_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisTransport", ["3AS_HMP_Transport", "3AS_MAF_Transport_F"]] call _fnc_saveToTemplate; 	//this line determines transport helis -- Example: ["vehiclesHelisTransport", ["B_Heli_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisLightAttack", ["3AS_MAF_Gunship_F"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["3AS_HMP_Gunship"]] call _fnc_saveToTemplate; 		

["vehiclesArtillery", ["3AS_Hailfire_Rocket","3AS_Heavy_AAT_Defoliator_F"]] call _fnc_saveToTemplate;
["magazines", createHashMapFromArray [
["3AS_Hailfire_Rocket", ["12Rnd_230mm_rockets"]],
["3AS_Heavy_AAT_Defoliator_F", ["3AS_6Rnd_200mm_Mo_shells"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["lsd_ground_agtRaptor"]] call _fnc_saveToTemplate;
["uavsPortable", ["3as_CIS_ScavDroid"]] call _fnc_saveToTemplate;

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", ["3AS_Combat_Speeder_F"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["3AS_PAC_F"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["3AS_Combat_Speeder_F"]] call _fnc_saveToTemplate;
["vehiclesMilitiaAPCs", ["3AS_GAT_Light"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["3AS_Combat_Speeder_F"]] call _fnc_saveToTemplate;

["staticMGs", ["3AS_J10s_F"]] call _fnc_saveToTemplate;
["staticAT", ["3as_ParticleCannon"]] call _fnc_saveToTemplate;
["staticAA", ["AGD_Shellcracker_AA"]] call _fnc_saveToTemplate;
["staticMortars", ["3AS_CIS_Mortar"]] call _fnc_saveToTemplate;
["staticHowitzers", []] call _fnc_saveToTemplate;

["vehicleRadar", "ls_vehicle_radarDish_opfor"] call _fnc_saveToTemplate;
["vehicleSam", "3as_FlakCannon"] call _fnc_saveToTemplate;

["howitzerMagazineHE", ""] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

//Minefield definition
["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine", "APERSBoundingMine_Range_Mag"]] call _fnc_saveToTemplate;


#include "CW_Vehicle_Attributes.sqf"

/////////////////////
///  Identities   ///
/////////////////////

["voices", ["ls_voice_b1Droid"]] call _fnc_saveToTemplate;
["faces", ["ls_hideHead"]] call _fnc_saveToTemplate;


//////////////////////////
//       Loadouts       //
//////////////////////////

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", []];
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];

_loadoutData set ["lightATLaunchers", [
["3AS_RPS6_F", "", "", "", [], [], ""],
["3AS_RPS6_G", "", "acc_flashlight", "", [], [], ""]
]];
_loadoutData set ["ATLaunchers", ["3AS_E60R_F"]];
_loadoutData set ["missileATLaunchers", [
["3AS_E60R_F", "", "acc_flashlight", "", ["3AS_E60R_AT"], [], ""]
]];
_loadoutData set ["AALaunchers", [
["ls_weapon_e60r_aa", "", "acc_flashlight", "", ["ls_magazine_e60r_aa"], [], ""]
]];
_loadoutData set ["sidearms", []];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]]; 					//this line determines the AT mines which can be carried by units -- Example: ["ATMine_Range_Mag"] -- Array, can contain multiple assets
_loadoutData set ["APMines", ["APERSMine_Range_Mag"]]; 					//this line determines the APERS mines which can be carried by units -- Example: ["APERSMine_Range_Mag"] -- Array, can contain multiple assets
_loadoutData set ["lightExplosives", ["ls_explosive_demoCharge_magazine"]]; 			//this line determines light explosives -- Example: ["DemoCharge_Remote_Mag"] -- Array, can contain multiple assets
_loadoutData set ["heavyExplosives", ["IDA_explosive_Detpack_mag", "IDA_explosive_Detpack2_mag"]]; 			//this line determines heavy explosives -- Example: ["SatchelCharge_Remote_Mag"] -- Array, can contain multiple assets

_loadoutData set ["antiInfantryGrenades", ["IDA_grenade_Detonator_mag", "3AS_SonicDet"]]; 		//this line determines anti infantry grenades (frag and such) -- Example: ["HandGrenade", "MiniGrenade"] -- Array, can contain multiple assets
_loadoutData set ["antiTankGrenades", ["IDA_grenade_Imploder_mag", "IDA_grenade_Penetrator_mag"]]; 			//this line determines anti tank grenades. Leave empty when not available. -- Array, can contain multiple assets
_loadoutData set ["smokeGrenades", ["IDA_grenade_Smoke_mag"]];
_loadoutData set ["signalsmokeGrenades", ["IDA_grenade_Smoke_Purple_mag", "IDA_grenade_Smoke_Red_mag", "IDA_grenade_Smoke_Green_mag", "IDA_grenade_Smoke_Blue_mag"]];


//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["JLTS_droid_comlink"]];			//this line determines radio
_loadoutData set ["gpses", ["ItemGPS"]];			//this line determines GPS
_loadoutData set ["NVGs", ["JLTS_NVG_droid_chip_1"]];						//this line determines NVGs -- Array, can contain multiple assets
_loadoutData set ["binoculars", ["JLTS_DroidBinocular"]];		//this line determines the binoculars
_loadoutData set ["Rangefinder", ["JLTS_DroidBinocular"]];

_loadoutData set ["traitorUniforms", ["3AS_U_CIS_Light_Armor"]];
_loadoutData set ["traitorVests", ["3AS_CIS_Grenadier_Vest"]];
_loadoutData set ["traitorHats", ["3as_CIS_Light_helmet"]];

_loadoutData set ["officerUniforms", ["3AS_U_CIS_TS"]];
_loadoutData set ["officerVests", ["ls_gar_clone_vest"]];
_loadoutData set ["officerHats", [""]];

_loadoutData set ["cloakUniforms", []];
_loadoutData set ["cloakVests", []];

_loadoutData set ["uniforms", []];
_loadoutData set ["slUniforms", []];
_loadoutData set ["vests", []];
_loadoutData set ["Hvests", []];
_loadoutData set ["glVests", []];
_loadoutData set ["backpacks", []];
_loadoutData set ["ViperBP", []];
_loadoutData set ["longRangeRadios", []];
_loadoutData set ["helmets", []];
_loadoutData set ["slHat", []];
_loadoutData set ["sniHats", []];



_loadoutData set ["glasses", []];
_loadoutData set ["goggles", []];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries", "CW_DroidParts"];
private _eeItems = ["ToolKit", "MineDetector", "CW_DroidParts"];
private _mmItems = ["CW_DroidParts"];

if (A3A_hasACE) then {
    _slItems append ["ACE_microDAGR", "ACE_DAGR"];
    _eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", ["CW_DroidParts"]];
_loadoutData set ["items_medic_extras", ["CW_DroidParts"]];
_loadoutData set ["items_grenadier_extras", ["CW_DroidParts"]];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", ["CW_DroidParts"]];
_loadoutData set ["items_at_extras", ["CW_DroidParts"]];
_loadoutData set ["items_aa_extras", ["CW_DroidParts"]];
_loadoutData set ["items_machineGunner_extras", ["CW_DroidParts"]];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", ["CW_DroidParts"]];
_loadoutData set ["items_crew_extras", ["CW_DroidParts"]];
_loadoutData set ["items_unarmed_extras", ["CW_DroidParts"]];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_sfLoadoutData set ["uniforms", ["ls_droidUniform_bx","ls_droidUniform_bx_captain"]];
_sfLoadoutData set ["vests", ["ls_droidVest_bx"]];
_sfLoadoutData set ["backpacks", ["JLTS_B1_antenna_training"]];
_sfLoadoutData set ["helmets", []];
_sfLoadoutData set ["binoculars", ["JLTS_DroidBinocular"]];

//SF Weapons
_sfLoadoutData set ["rifles", [
["AGD_E5", "", "", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""]
]];
_sfLoadoutData set ["carbines", [
["AGD_SBB3", "", "", "", ["IDA_Blaster_Cell_Scatter_6Rnd_Red"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
["ls_weapon_mpl57", "", "", "", ["ls_magazine_2Rnd_40mw_G77_HEAB"], [], ""]
]];
_sfLoadoutData set ["SMGs", [
["AGD_DC23", "", "", "", ["IDA_Blaster_Cell_Scatter_6Rnd_Blue"], [], ""]
]];
_sfLoadoutData set ["machineGuns", [
["AGD_E5C", "", "", "", ["IDA_Blaster_Cell_Power3_60Rnd_Red"], [], ""],
["AGD_T15", "", "", "", ["IDA_Blaster_Cell_Power2_100Rnd_Blue"], [], ""]
]];
_sfLoadoutData set ["marksmanRifles", [
["IDA_E5S", "", "", "", ["IDA_Blaster_Cell_Power5_5Rnd_Red"], [], ""]
]];
_sfLoadoutData set ["sniperRifles", [
["IDA_E5S", "", "", "", ["IDA_Blaster_Cell_Power5_5Rnd_Red"], [], ""]
]];
_sfLoadoutData set ["sidearms", [
["JLTS_RG4D", "", "", "", ["JLTS_RG4D_mag"], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData set ["uniforms", ["IDA_B1_uniform","ls_droidUniform_b2"]];
_eliteLoadoutData set ["vests", ["ls_gar_clone_vest"]];
_eliteLoadoutData set ["mgVests", ["ls_gar_clone_vest"]];
_eliteLoadoutData set ["medVests", ["ls_gar_clone_vest"]];
_eliteLoadoutData set ["glVests", ["ls_gar_clone_vest"]];
_eliteLoadoutData set ["backpacks", ["JLTS_B1_backpack"]];
_eliteLoadoutData set ["atBackpacks", ["JLTS_B1_backpack"]];
_eliteLoadoutData set ["helmets", []];
_eliteLoadoutData set ["NVGs", ["JLTS_NVG_droid_chip_1"]];
_eliteLoadoutData set ["binoculars", ["JLTS_DroidBinocular"]];
_eliteLoadoutData set ["antiInfantryGrenades", ["3AS_ThermalDetonator"]];
_eliteLoadoutData set ["lightATLaunchers", [
["ls_weapon_rps6", "", "", "", ["ls_mag_rpg_1rnd"], [], ""]
]];
_eliteLoadoutData set ["ATLaunchers", [
["SWLW_E60R", "", "", "", ["SWLW_e60r_at_mag"], [], ""]
]];

_eliteLoadoutData set ["slRifles", [
["AGD_E5", "", "", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""]
]];
_eliteLoadoutData set ["rifles", [
["AGD_E5", "", "", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""]
]];
_eliteLoadoutData set ["carbines", [
["AGD_SBB3", "", "", "", ["IDA_Blaster_Cell_Scatter_6Rnd_Red"], [], ""],
["AGD_E5", "", "", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""]
]];
_eliteLoadoutData set ["designatedGrenadeLaunchers", [
["ls_weapon_mpl57", "", "", "", ["ls_magazine_2Rnd_40mw_G77_HEAB"], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["ls_weapon_mpl57", "", "", "", ["ls_magazine_2Rnd_40mw_G77_HEAB"], [], ""]
]];
_eliteLoadoutData set ["machineGuns", [
["AGD_E5C", "", "", "", ["IDA_Blaster_Cell_Power3_60Rnd_Red"], [], ""],
["AGD_T15", "", "", "", ["IDA_Blaster_Cell_Power2_100Rnd_Blue"], [], ""]
]];
_eliteLoadoutData set ["marksmanRifles", [
["IDA_E5S", "", "", "", ["IDA_Blaster_Cell_Power5_5Rnd_Red"], [], ""],
["AGD_E5", "", "", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""]
]];
_eliteLoadoutData set ["sniperRifles", [
["IDA_E5S", "", "", "", ["IDA_Blaster_Cell_Power5_5Rnd_Red"], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
["JLTS_RG4D", "", "", "", ["JLTS_RG4D_mag"], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_militaryLoadoutData set ["uniforms", ["IDA_B1_uniform","ls_droidUniform_b2"]];
_militaryLoadoutData set ["vests", ["ls_gar_clone_vest"]];
_militaryLoadoutData set ["glVests", ["ls_gar_clone_vest"]];
_militaryLoadoutData set ["Hvests", ["ls_gar_clone_vest"]];
_militaryLoadoutData set ["backpacks", ["JLTS_B1_backpack"]];
_militaryLoadoutData set ["helmets", []];
_militaryLoadoutData set ["slHat", []];
_militaryLoadoutData set ["binoculars", ["JLTS_DroidBinocular"]];

_militaryLoadoutData set ["rifles", [
["AGD_E5", "", "", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
["AGD_SBB3", "", "", "", ["IDA_Blaster_Cell_Scatter_6Rnd_Red"], [], ""],
["AGD_E5", "", "", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["ls_weapon_mpl57", "", "", "", ["ls_magazine_2Rnd_40mw_G77_HEAB"], [], ""]
]];
_militaryLoadoutData set ["SMGs", [
["AGD_DC23", "", "", "", ["IDA_Blaster_Cell_Scatter_6Rnd_Blue"], [], ""],
["AGD_E5", "", "", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""]
]];
_militaryLoadoutData set ["machineGuns", [
["AGD_E5C", "", "", "", ["IDA_Blaster_Cell_Power3_60Rnd_Red"], [], ""],
["AGD_T15", "", "", "", ["IDA_Blaster_Cell_Power2_100Rnd_Blue"], [], ""]
]];
_militaryLoadoutData set ["marksmanRifles", [
["IDA_E5S", "", "", "", ["IDA_Blaster_Cell_Power5_5Rnd_Red"], [], ""],
["AGD_E5", "", "", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""]
]];
_militaryLoadoutData set ["sniperRifles", [
["IDA_E5S", "", "", "", ["IDA_Blaster_Cell_Power5_5Rnd_Red"], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
["JLTS_RG4D", "", "", "", ["JLTS_RG4D_mag"], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_policeLoadoutData set ["uniforms", ["lsd_cis_oomSecurity_uniform"]];
_policeLoadoutData set ["vests", ["ls_gar_clone_vest"]];
_policeLoadoutData set ["helmets", []];
_policeLoadoutData set ["smgs", [
["AGD_SBB3", "", "", "", ["IDA_Blaster_Cell_Scatter_6Rnd_Red"], [], ""],
["AGD_DC23", "", "", "", ["IDA_Blaster_Cell_Scatter_6Rnd_Blue"], [], ""]
]];
_policeLoadoutData set ["sidearms", [
["JLTS_RG4D", "", "", "", ["JLTS_RG4D_mag"], [], ""]
]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_militiaLoadoutData set ["uniforms", ["IDA_B1_uniform","IDA_B1_uniform_Heavy","IDA_B1_uniform_Spec"]];
_militiaLoadoutData set ["vests", ["ls_gar_clone_vest"]];
_militiaLoadoutData set ["backpacks", ["JLTS_B1_backpack"]];
_militiaLoadoutData set ["helmets", []];
_militiaLoadoutData set ["slHat", []];

_militiaLoadoutData set ["rifles", [
["AGD_E5", "", "", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
["AGD_E5", "", "", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
["ls_weapon_mpl57", "", "", "", ["ls_magazine_2Rnd_40mw_G77_HEAB"], [], ""]
]];
_militiaLoadoutData set ["SMGs", [
["AGD_SBB3", "", "", "", ["IDA_Blaster_Cell_Scatter_6Rnd_Red"], [], ""]
]];
_militiaLoadoutData set ["machineGuns", [
["AGD_E5C", "", "", "", ["IDA_Blaster_Cell_Power3_60Rnd_Red"], [], ""]
]];
_militiaLoadoutData set ["marksmanRifles", [
["AGD_E5", "", "", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""]
]];
_militiaLoadoutData set ["sniperRifles", [
["IDA_E5S", "", "", "", ["IDA_Blaster_Cell_Power5_5Rnd_Red"], [], ""]
]];
_militiaLoadoutData set ["sidearms", [
["JLTS_RG4D", "", "", "", ["JLTS_RG4D_mag"], [], ""]
]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_crewLoadoutData set ["uniforms", ["JLTS_DroidB1_Security"]];			
_crewLoadoutData set ["vests", ["ls_gar_clone_vest"]];				
_crewLoadoutData set ["helmets", []];
_crewLoadoutData set ["carbines", [
["AGD_E5", "", "", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""]
]];

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["JLTS_DroidB1_Pilot"]];
_pilotLoadoutData set ["vests", ["ls_gar_clone_vest"]];
_pilotLoadoutData set ["helmets", []];
_pilotLoadoutData set ["carbines", [
["AGD_E5", "", "", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""]
]];





/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////

private _squadLeaderTemplate = {
    ["slHat"] call _fnc_setHelmet;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["backpacks"] call _fnc_setBackpack;

    [["slRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;
    ["signalsmokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["binoculars"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["longRangeRadios"] call _fnc_setBackpack;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;
      [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_medic"] call _fnc_addItemSet;
    ["items_medic_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [["glVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["grenadeLaunchers"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_grenadier_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 4] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [["glVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;


    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_explosivesExpert_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["lightExplosives", 2] call _fnc_addItem;
    if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_engineer_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_lat_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["machineGuns"] call _fnc_setPrimary;
    ["primary", 4] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_machineGunner_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate= {
    ["sniHats"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["marksmanRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_marksman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["sniperRifles"] call _fnc_setPrimary;
    ["primary", 7] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["SMGs"] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_police_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_crew_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
    ["traitorHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["traitorVests"] call _fnc_setVest;
    ["traitorUniforms"] call _fnc_setUniform;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _officerTemplate = {
    ["officerHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["officerVests"] call _fnc_setVest;
    ["officerUniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;
    
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _patrolSniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["cloakVests","vests"] call _fnc_fallback] call _fnc_setVest;
    [["cloakUniforms","uniforms"] call _fnc_fallback] call _fnc_setUniform;

    [["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _patrolSpotterTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["cloakVests","vests"] call _fnc_fallback] call _fnc_setVest;
    [["cloakUniforms","uniforms"] call _fnc_fallback] call _fnc_setUniform;

    [selectRandom ["rifles", "carbines", "marksmanRifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];


[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
    params ["_name", "_loadoutTemplate"];
    private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
    private _finalName = _prefix + _name;
    [_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate, [], [_prefix]],
	["Standard", _policeTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Pilot", _crewTemplate]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _squadLeaderTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;