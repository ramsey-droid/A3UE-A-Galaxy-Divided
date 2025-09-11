//////////////////////////
//   Side Information   //
//////////////////////////

["name", "Republic"] call _fnc_saveToTemplate;
["spawnMarkerName", "Republic Venator"] call _fnc_saveToTemplate;

["flag", "ls_flag_republic"] call _fnc_saveToTemplate;
["flagTexture", "\LS_statics_props\flags\data\flag_republic.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "JLTS_flag_Rep"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["vehiclesDropPod", ["3AS_Rho_Crate_REP_Transport","3AS_EscapePod"]] call _fnc_saveToTemplate; 

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;     //Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["3AS_Barc"]] call _fnc_saveToTemplate; 			//this line determines basic vehicles, the lightest kind available. -- Example: ["vehiclesBasic", ["B_Quadbike_01_F"]] -- Array, can contain multiple assets
["vehiclesLightUnarmed", ["3AS_ISP_Transport"]] call _fnc_saveToTemplate; 		
["vehiclesLightArmed",["3AS_BarcSideCar", "3AS_ISP", "3AS_ISP", "3AS_Barc"]] call _fnc_saveToTemplate; 		
["vehiclesTrucks", ["3AS_RTT_Wheeled"]] call _fnc_saveToTemplate; 		
["vehiclesCargoTrucks", ["3AS_RTT_Wheeled"]] call _fnc_saveToTemplate; 		
["vehiclesAmmoTrucks", ["442_argon_ammo"]] call _fnc_saveToTemplate; 	
["vehiclesRepairTrucks", ["442_argon_repair"]] call _fnc_saveToTemplate; 	
["vehiclesFuelTrucks", ["442_argon_fuel"]] call _fnc_saveToTemplate;	
["vehiclesMedical", ["442_argon_medical"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", ["3AS_RTT", "3AS_RTT_Wheeled", "3AS_PX10_REP_F"]] call _fnc_saveToTemplate;
["vehiclesAPCs", ["3AS_PX10_REP_UP", "3AS_Saber_M1", "3AS_Saber_M1Recon"]] call _fnc_saveToTemplate;
["vehiclesAirborne", ["3AS_PX10_REP_F", "3AS_Saber_M1"]] call _fnc_saveToTemplate;
["vehiclesIFVs", ["3AS_Saber_Super", "3AS_Saber_M1G"]] call _fnc_saveToTemplate;
["vehiclesLightTanks",  ["3AS_Saber_Super", "3AS_Saber_M1G"]] call _fnc_saveToTemplate;
["vehiclesTanks", ["3AS_ATAP_Base","3AS_ATTE_Base","3AS_ATTE_TCW"]] call _fnc_saveToTemplate;
["vehiclesAA", ["3AS_RX200_Base"]] call _fnc_saveToTemplate;

["vehiclesTransportBoats", ["I_Boat_Transport_01_F"]] call _fnc_saveToTemplate; 
["vehiclesGunBoats", []] call _fnc_saveToTemplate; 
["vehiclesAmphibious", []] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["3AS_BTLB_Bomber"]] call _fnc_saveToTemplate;
["vehiclesPlanesLargeCAS", ["3AS_ARC_170_Red"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["3AS_Z95_Republic","3as_Vwing_base", "3AS_Delta7_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesLargeAA", ["3AS_ARC_170_Red","3as_V19_base"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", ["3AS_Republic_Transport_01"]] call _fnc_saveToTemplate;

["vehiclesPlanesGunship", ["3AS_LAAT_Mk1","lsd_heli_laati"]] call _fnc_saveToTemplate;

["vehiclesHelisLight", ["3AS_Patrol_LAAT_Republic"]] call _fnc_saveToTemplate;
["vehiclesHelisTransport", ["3AS_LAAT_Mk2", "3AS_LAAT_Mk2", "3AS_LAAT_Mk2", "3AS_Nu_REP_F","3AS_Rho_REP_F"]] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", ["3AS_LAAT_Mk1"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["3AS_LAAT_Mk1"]] call _fnc_saveToTemplate;


["vehiclesArtillery", ["3AS_AV7"]] call _fnc_saveToTemplate;
["magazines", createHashMapFromArray [
["3AS_AV7", ["3AS_32Rnd_300mm_Mo_shells"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["B_UAV_02_dynamicLoadout_F", "B_T_UAV_03_dynamicLoadout_F"]] call _fnc_saveToTemplate;
["uavsPortable", ["3as_uas2"]] call _fnc_saveToTemplate;

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", ["3AS_ISP"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["3AS_RTT_Wheeled"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["3AS_ISP_Transport"]] call _fnc_saveToTemplate;
["vehiclesMilitiaAPCs", ["3AS_RTT_Wheeled"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["3AS_ISP_Transport"]] call _fnc_saveToTemplate;

["staticMGs", ["3AS_HeavyRepeater_Unarmoured"]] call _fnc_saveToTemplate;
["staticAT", ["3as_ParticleCannon"]] call _fnc_saveToTemplate;
["staticAA", ["AA_Turret"]] call _fnc_saveToTemplate;
["staticMortars", ["3AS_Republic_Mortar"]] call _fnc_saveToTemplate;
["staticHowitzers", []] call _fnc_saveToTemplate;

["vehicleRadar", "ls_vehicle_radarDish_blufor"] call _fnc_saveToTemplate;
["vehicleSam", "3AS_Keeradak_F"] call _fnc_saveToTemplate;

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

["voices", ["JLTS_voice_clone"]] call _fnc_saveToTemplate;
["faces", ["lsd_gar_cloneA_head","lsd_gar_cloneB_head","lsd_gar_cloneC_head","lsd_gar_cloneD_head","lsd_gar_cloneE_head","lsd_gar_cloneF_head","lsd_gar_cloneG_head", "lsd_gar_cloneH_head"]] call _fnc_saveToTemplate;


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
_loadoutData set ["lightATLaunchers", []];
_loadoutData set ["ATLaunchers", [
["ls_weapon_rps6", "", "", "", ["ls_mag_rpg_1rnd"], [], ""]
]];
_loadoutData set ["missileATLaunchers", [
["SWLW_PLX1", "", "", "", ["SWLW_plx1_at_mag"], [], ""]
]];
_loadoutData set ["AALaunchers", [
["SWLW_PLX1_AA", "", "", "", ["SWLW_plx1_aa_mag"], [], ""]
]];
_loadoutData set ["sidearms", []];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag"]];
_loadoutData set ["lightExplosives", ["SWLW_clones_spec_breach_mag"]]; 			
_loadoutData set ["heavyExplosives", ["SWLW_clones_spec_demo_mag"]]; 			

_loadoutData set ["antiInfantryGrenades", ["3AS_ThermalDetonator", "442_impact_mag"]]; 		//this line determines anti infantry grenades (frag and such) -- Example: ["HandGrenade", "MiniGrenade"] -- Array, can contain multiple assets
_loadoutData set ["antiTankGrenades", ["3AS_ThrowableCharge"]]; 			//this line determines anti tank grenades. Leave empty when not available. -- Array, can contain multiple assets
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];


//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["SWLB_comlink"]];			//this line determines radio
_loadoutData set ["gpses", ["ItemGPS"]];			//this line determines GPS
_loadoutData set ["NVGs", ["JLTS_CloneNVG","JLTS_CloneNVGRange","JLTS_CloneNVG_spec","ls_cloneNVG_phase2Headlamp"]];						//this line determines NVGs -- Array, can contain multiple assets
_loadoutData set ["binoculars", ["JLTS_CloneBinocular_black"]];		//this line determines the binoculars
_loadoutData set ["Rangefinder", ["JLTS_CloneBinocular"]];

_loadoutData set ["traitorUniforms", ["SWLB_clone_uniform"]];
_loadoutData set ["traitorVests", ["SWLB_clone_basic_armor"]];
_loadoutData set ["traitorHats", ["SWLB_clone_P2_helmet"]];

_loadoutData set ["stormMarkUniforms", ["JLTS_CloneArmor"]];
_loadoutData set ["stormMarkVests", ["JLTS_CloneVestRecon"]];
_loadoutData set ["stormMarkHats", ["ls_cloneHelmet_arf"]];

_loadoutData set ["stormSniperUniforms", ["ls_cloneUniform_scout"]];
_loadoutData set ["stormSniperVests", ["ls_cloneVest_scout"]];
_loadoutData set ["stormSniperHats", ["ls_cloneHelmet_scout"]];

_loadoutData set ["officerUniforms", ["SWLB_clone_uniform"]];
_loadoutData set ["officerVests", ["SWLB_clone_assault_armor"]];
_loadoutData set ["officerHats", ["SWLB_clone_P2_helmet"]];

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
private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
    _slItems append ["ACE_microDAGR", "ACE_DAGR"];
    _eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", []];
_loadoutData set ["items_grenadier_extras", []];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", []];
_loadoutData set ["items_at_extras", []];
_loadoutData set ["items_aa_extras", []];
_loadoutData set ["items_machineGunner_extras", []];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", []];
_loadoutData set ["items_crew_extras", []];
_loadoutData set ["items_unarmed_extras", []];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_sfLoadoutData set ["uniforms", ["ls_sob_commando_uniform"]];
_sfLoadoutData set ["slUniforms", ["ls_cloneUniform_commando_bravo2"]];
_sfLoadoutData set ["vests", ["ls_sob_commando_eod_vest","ls_sob_commando_sniper_vest","ls_sob_commando_sl_vest","ls_sob_commando_tech_vest","ls_sob_commando_vest"]];
_sfLoadoutData set ["backpacks", ["ls_sob_commando_backpack","ls_sob_commando_eod_backpack","ls_sob_commando_rto_backpack","ls_sob_commando_tech_backpack"]];
_sfLoadoutData set ["helmets", ["ls_sob_commando_helmet"]];
_sfLoadoutData set ["sniHats", ["ls_cloneHelmet_commando_bravo2"]];
_sfLoadoutData set ["slHat", ["ls_sob_commando_helmet"]];
_sfLoadoutData set ["binoculars", ["JLTS_CloneBinocular"]];

//SF Weapons
_sfLoadoutData set ["rifles", [
["3AS_DC17M_F", "", "", "", ["3AS_100Rnd_EC40_mag"], [], ""]
]];
_sfLoadoutData set ["carbines", [
["3AS_DC17M_F", "", "", "", ["3AS_100Rnd_EC40_mag","3AS_100Rnd_EC40_mag","3AS_100Rnd_EC40_mag","3AS_AntiArmour_mag"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
["3AS_DC17M_F", "", "", "", ["3AS_100Rnd_EC40_mag","3AS_AntiArmour_mag"], [], ""]
]];
_sfLoadoutData set ["SMGs", [
["3AS_DC17M_F", "", "", "", ["3AS_100Rnd_EC40_mag"], [], ""]
]];
_sfLoadoutData set ["machineGuns", [
["IDA_Z6", "", "", "", ["IDA_Blaster_Cell_Power1_300Rnd_Blue"], [], ""],
["IDA_Z6", "", "", "", ["IDA_Blaster_Cell_Power1_300Rnd_Blue"], [], ""]
]];
_sfLoadoutData set ["marksmanRifles", [
["3AS_DC17M_F", "", "", "", ["3AS_5Rnd_EC80_mag","3AS_5Rnd_EC80_mag","3AS_5Rnd_EC80_mag","3AS_100Rnd_EC40_mag"], [], ""]
]];
_sfLoadoutData set ["sniperRifles", [
["3AS_DC17M_F", "", "", "", ["3AS_5Rnd_EC80_mag"], [], ""]
]];
_sfLoadoutData set ["sidearms", [
["3AS_pistol_DC15SA_F", "", "", "", ["3AS_15Rnd_EC30_mag"], [], ""]
]];


/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData set ["uniforms", ["JLTS_CloneArmor_212","JLTS_CloneArmor_212_medic","JLTS_CloneArmorGrenadier_212","JLTS_CloneArmorSupport_212"]];
_eliteLoadoutData set ["slUniforms", ["ls_cloneUniform_commando_gregor"]];
_eliteLoadoutData set ["vests", ["JLTS_CloneVestHolster","JLTS_CloneVestHolster","JLTS_CloneVestHolster","JLTS_CloneVestHolster","JLTS_CloneVestHolster","JLTS_CloneVestHolster","JLTS_CloneVestAirborne_212","JLTS_CloneVestKama"]];
_eliteLoadoutData set ["glVests", ["JLTS_CloneVestLieutenant_212"]];
_eliteLoadoutData set ["backpacks", ["SWLB_clone_backpack", "SWLB_clone_backpack_heavy", "SWLB_clone_backpack_medic", "SWLB_clone_backpack_RTO"]];
_eliteLoadoutData set ["atBackpacks", ["ls_cloneBackpack_ammo"]];
_eliteLoadoutData set ["helmets", ["JLTS_CloneHelmetP2_212"]];
_eliteLoadoutData set ["slHat", ["JLTS_CloneHelmetP2_212"]];
_eliteLoadoutData set ["NVGs", ["JLTS_CloneNVGMC_212_Cody"]];
_eliteLoadoutData set ["binoculars", ["JLTS_CloneBinocular"]];
_eliteLoadoutData set ["lightATLaunchers", [
["IDA_RPS6HP", "", "", "", [], [], ""]
]];
_eliteLoadoutData set ["ATLaunchers", [
["JLTS_PLX1_AT", "", "", "", ["JLTS_PLX1_AT_mag"], [], ""]
]];

_eliteLoadoutData set ["slRifles", [
["3AS_DC15C_F", "", "", "", ["3AS_40Rnd_EC40_Mag"], [], ""],
["3AS_DC15A_F", "", "", "", ["3AS_45Rnd_EC50_Mag"], [], ""],
["3AS_DC17M_F", "", "", "", ["3AS_100Rnd_EC40_mag","3AS_100Rnd_EC40_mag","3AS_100Rnd_EC40_mag","3AS_AntiArmour_mag"], [], ""]
]];
_eliteLoadoutData set ["rifles", [
["3AS_DC15C_F", "", "", "", ["3AS_40Rnd_EC40_Mag"], [], ""],
["3AS_DC15A_F", "", "", "", ["3AS_45Rnd_EC50_Mag"], [], ""]
]];
_eliteLoadoutData set ["carbines", [
["3AS_DC15S_F", "", "", "", ["3AS_60Rnd_EC30_mag"], [], ""]
]];
_eliteLoadoutData set ["designatedGrenadeLaunchers", [
["3AS_DC15A_GL", "", "", "", ["3AS_45Rnd_EC50_Mag"], ["3Rnd_HE_Grenade_shell", "3Rnd_Smoke_Grenade_shell", "3AS_3UGL_MK56_Flare_White_shell"], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["3AS_DC15A_GL", "", "", "", ["3AS_45Rnd_EC50_Mag"], ["3Rnd_HE_Grenade_shell", "3Rnd_Smoke_Grenade_shell", "3AS_3UGL_MK56_Flare_White_shell"], ""]
]];
_eliteLoadoutData set ["machineGuns", [
["3AS_DC15L_F", "", "", "3AS_optic_DC15L_F", ["3AS_200Rnd_EC40_Mag"], [], ""],
["3AS_DC15L_F", "", "", "", ["3AS_200Rnd_EC40_Mag"], [], ""],
["IDA_Z6", "", "", "", ["IDA_Blaster_Cell_Power1_300Rnd_Blue"], [], ""]
]];
_eliteLoadoutData set ["marksmanRifles", [
["3AS_Valken38X_F", "", "", "", ["3AS_10Rnd_EC80_Mag"], [], ""],
["3AS_DC15A_F", "", "", "", ["3AS_45Rnd_EC50_Mag"], [], ""],
["3AS_DC15X_F", "", "", "", ["3AS_10Rnd_EC100_Mag"], [], ""]
]];
_eliteLoadoutData set ["sniperRifles", [
["3AS_DC15X_F", "", "", "", ["3AS_10Rnd_EC100_Mag"], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
["3AS_DC17S_F", "", "", "", ["3AS_16Rnd_EC20_Mag"], [], ""]
]];


/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_militaryLoadoutData set ["uniforms", ["JLTS_CloneArmor_501","JLTS_CloneArmor_501_Appo","JLTS_CloneArmor_501_airborne","JLTS_CloneArmor_501_Vill","JLTS_CloneArmor_501_medic","JLTS_CloneArmorSupport_501","JLTS_CloneArmorGrenadier_501"]];
_militaryLoadoutData set ["slUniforms", ["JLTS_CloneArmor_501_Jesse","JLTS_CloneArmor_501_Fives","JLTS_CloneArmor_501_Rex"]];
_militaryLoadoutData set ["vests", ["JLTS_CloneVestHolster","JLTS_CloneVestHolster","JLTS_CloneVestHolster","JLTS_CloneVestHolster","JLTS_CloneVestHolster","JLTS_CloneVestHolster","JLTS_CloneVestAirborne_501","JLTS_CloneVestKama"]];
_militaryLoadoutData set ["Hvests", ["JLTS_CloneVestOfficer_501","JLTS_CloneVestARC_501_Fives"]];
_militaryLoadoutData set ["glVests", ["JLTS_CloneVestAirborneNCO_501","JLTS_CloneVestAirborne_501"]];
_militaryLoadoutData set ["backpacks", ["ls_cloneBackpack_heavy","ls_cloneBackpack_standard","ls_cloneBackpack_ammo"]];
_militaryLoadoutData set ["helmets", ["JLTS_CloneHelmetP2_501","JLTS_CloneHelmetAB_501"]];
_militaryLoadoutData set ["sniHats", ["IDA_501st_BARC_Helmet"]];
_militaryLoadoutData set ["slHat", ["JLTS_CloneHelmetP2_501_Fives","JLTS_CloneHelmetP2_501_Jesse"]];
_militaryLoadoutData set ["binoculars", ["SWLB_clone_binocular"]];

_militaryLoadoutData set ["rifles", [
["3AS_DC15C_F", "", "", "3AS_optic_DC15C_F", ["3AS_40Rnd_EC40_Mag"], [], ""],
["3AS_DC15A_F", "", "", "", ["3AS_45Rnd_EC50_Mag"], [], ""],
["SWLW_DC15A_wooden", "", "", "", ["3AS_45Rnd_EC50_Mag"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
["3AS_DC15S_F", "", "", "", ["3AS_60Rnd_EC30_mag"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["3AS_DC15A_GL", "", "", "", ["3AS_45Rnd_EC50_Mag"], ["3Rnd_HE_Grenade_shell", "3Rnd_Smoke_Grenade_shell", "3AS_3UGL_MK56_Flare_White_shell"], ""]
]];
_militaryLoadoutData set ["SMGs", [
["3AS_DC15S_F", "", "", "", ["3AS_60Rnd_EC30_mag"], [], ""],
["3AS_DP23_F", "", "", "", ["3AS_10Rnd_ESlug_Mag"], [], ""]
]];
_militaryLoadoutData set ["machineGuns", [
["3AS_DC15L_F", "", "", "", ["3AS_200Rnd_EC40_Mag"], [], ""],
["3AS_DC15L_F_wooden", "", "", "", ["3AS_200Rnd_EC40_Mag"], [], ""],
["IDA_Z6", "", "", "", ["IDA_Blaster_Cell_Power1_300Rnd_Blue"], [], ""]
]];
_militaryLoadoutData set ["marksmanRifles", [
["3AS_DC15A_F", "", "", "3AS_optic_DC15LE_F", ["3AS_45Rnd_EC50_Mag"], [], ""],
["3AS_DC15A_F", "", "", "", ["3AS_45Rnd_EC50_Mag"], [], ""],
["3AS_DC15X_F", "", "", "", ["3AS_10Rnd_EC100_Mag"], [], ""]
]];
_militaryLoadoutData set ["sniperRifles", [
["3AS_DC15X_F", "", "", "", ["3AS_10Rnd_EC100_Mag"], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
["3AS_DC17S_F", "", "", "", ["3AS_16Rnd_EC20_Mag"], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_policeLoadoutData set ["uniforms", ["JLTS_CloneArmor_CG"]];
_policeLoadoutData set ["vests", ["JLTS_CloneVestHolster","JLTS_CloneVestHolster","JLTS_CloneVestHolster","JLTS_CloneVestHolster","JLTS_CloneVestHolster","JLTS_CloneVestLieutenant_CG"]];
_policeLoadoutData set ["helmets", ["JLTS_CloneHelmetP2_CG"]];
_policeLoadoutData set ["smgs", [
["3AS_DP23_F", "", "", "", ["3AS_10Rnd_ESlug_Mag"], [], ""],
["3AS_DC15S_F", "", "", "", ["3AS_60Rnd_EC30_mag"], [], ""]
]];
_policeLoadoutData set ["sidearms", [
["3AS_DC17S_F", "", "", "", ["3AS_16Rnd_EC20_Mag"], [], ""]
]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_militiaLoadoutData set ["uniforms", ["JLTS_CloneArmor"]];		//this line determines uniforms for militia loadouts -- Example: ["U_B_CombatUniform_mcam", "U_B_CombatUniform_mcam_tshirt"] -- Array, can contain multiple assets
_militiaLoadoutData set ["slUniforms", ["JLTS_CloneArmor_Sergeant"]];
_militiaLoadoutData set ["vests", ["JLTS_CloneVestHolster","JLTS_CloneVestSuspender","JLTS_CloneVestReconNCO"]];			//this line determines vests for militia loadouts -- Example: ["V_PlateCarrierSpec_mtp", "V_PlateCarrierGL_mtp"] -- Array, can contain multiple assets
_militiaLoadoutData set ["backpacks", ["ls_cloneBackpack_standard","ls_cloneBackpack_medic","ls_cloneBackpack_radio"]];		//this line determines backpacks for militia loadouts -- Example: ["B_AssaultPack_mcamo", "B_Kitbag_mcamo"] -- Array, can contain multiple assets
_militiaLoadoutData set ["helmets", ["JLTS_CloneHelmetP2"]];		//this line determines helmets for police loadouts -- Example: ["H_HelmetB_camo", "H_HelmetB_desert"] -- Array, can contain multiple assets
_militiaLoadoutData set ["sniHats", ["JLTS_CloneHelmetBARC"]];
_militiaLoadoutData set ["slHat", ["JLTS_CloneHelmetP2_Sergeant"]];

_militiaLoadoutData set ["rifles", [
["3AS_DC15C_F", "", "", "", ["3AS_40Rnd_EC40_Mag"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
["3AS_DC15S_F", "", "", "", ["3AS_60Rnd_EC30_mag"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
["3AS_DC15A_GL", "", "", "", ["3AS_45Rnd_EC50_Mag"], ["3Rnd_HE_Grenade_shell", "3Rnd_Smoke_Grenade_shell", "3AS_3UGL_MK56_Flare_White_shell"], ""]
]];
_militiaLoadoutData set ["SMGs", [
["3AS_DC15S_F", "", "", "", ["3AS_60Rnd_EC30_mag"], [], ""],
["3AS_DP23_F", "", "", "", ["3AS_10Rnd_ESlug_Mag"], [], ""]
]];
_militiaLoadoutData set ["machineGuns", [
["3AS_DC15L_F", "", "", "", ["3AS_200Rnd_EC40_Mag"], [], ""]
]];
_militiaLoadoutData set ["marksmanRifles", [
["3AS_DC15A_F", "", "", "", ["3AS_45Rnd_EC50_Mag"], [], ""]
]];
_militiaLoadoutData set ["sniperRifles", [
["3AS_DC15X_F", "", "", "", ["3AS_10Rnd_EC100_Mag"], [], ""]
]];
_militiaLoadoutData set ["sidearms", [
["3AS_DC17S_F", "", "", "", ["3AS_16Rnd_EC20_Mag"], [], ""]
]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_crewLoadoutData set ["uniforms", ["SWLB_clone_uniform"]];			//this line determines uniforms for vehicle crew loadouts -- Example: ["U_B_CombatUniform_mcam", "U_B_CombatUniform_mcam_tshirt"] -- Array, can contain multiple assets
_crewLoadoutData set ["vests", ["SWLB_clone_basic_armor"]];				//this line determines vests for vehicle crew loadouts -- Example: ["V_PlateCarrierSpec_mtp", "V_PlateCarrierGL_mtp"] -- Array, can contain multiple assets
_crewLoadoutData set ["helmets", ["SWLB_clone_P2_helmet", "SWLB_clone_P1_helmet"]];
_crewLoadoutData set ["carbines", [
["3AS_DC15S_F", "", "", "", ["3AS_60Rnd_EC30_mag"], [], ""]
]];

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["SWLB_clone_uniform"]];			//this line determines uniforms for pilot loadouts -- Example: ["U_B_CombatUniform_mcam", "U_B_CombatUniform_mcam_tshirt"] -- Array, can contain multiple assets
_pilotLoadoutData set ["vests", ["SWLB_clone_basic_armor"]];			//this line determines vests for pilot loadouts -- Example: ["V_PlateCarrierSpec_mtp", "V_PlateCarrierGL_mtp"] -- Array, can contain multiple assets
_pilotLoadoutData set ["helmets", ["SWLB_P1_Pilot_Helmet", "SWLB_clone_pilot_P2_helmet"]];	
_pilotLoadoutData set ["carbines", [
["3AS_DC15S_F", "", "", "", ["3AS_60Rnd_EC30_mag"], [], ""]
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
    ["stormSniperHats"] call _fnc_setHelmet;
    ["stormSniperVests"] call _fnc_setVest;
    ["stormSniperUniforms"] call _fnc_setUniform;


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