//these variables determine whether specified dlcs are loaded
private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

#include "..\..\script_component.hpp" // TAKE NOTE OF THIS. WITHOUT THIS, YOU CAN'T USE MACROS LIKE QPATHTOFOLDER.

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "Hutt Cartel"] call _fnc_saveToTemplate; 						//this line determines the faction name -- Example: ["name", "NATO"] - ENTER ONLY ONE OPTION
["spawnMarkerName", format [localize "STR_supportcorridor", "Hutt"]] call _fnc_saveToTemplate; 			//this line determines the name tag for the "carrier" on the map -- Example: ["spawnMarkerName", "NATO support corridor"] - ENTER ONLY ONE OPTION. Format and localize function can be used for translation

["flag", "Flag_AAF_F"] call _fnc_saveToTemplate; 						//this line determines the flag -- Example: ["flag", "Flag_NATO_F"] - ENTER ONLY ONE OPTION
["flagTexture", "\ls\core\addons\data\flags\flag_rebelAlliance_damaged_ca.paa"] call _fnc_saveToTemplate; 				//this line determines the flag texture -- Example: ["flagTexture", "\A3\Data_F\Flags\Flag_NATO_CO.paa"] - ENTER ONLY ONE OPTION
["flagMarkerType", "Rebel_Alliance"] call _fnc_saveToTemplate; 			//this line determines the flag marker type -- Example: ["flagMarkerType", "flag_NATO"] - ENTER ONLY ONE OPTION

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "I_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_AAF_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["JMSLLTE_I_veh_skiff_hutt_F"]] call _fnc_saveToTemplate; 			//this line determines basic vehicles, the lightest kind available. -- Example: ["vehiclesBasic", ["B_Quadbike_01_F"]] -- Array, can contain multiple assets
["vehiclesLightUnarmed", ["JMSLLTE_I_veh_skiff_hutt_F"]] call _fnc_saveToTemplate; 		//this line determines light and unarmed vehicles. -- Example: ["vehiclesLightUnarmed", ["B_MRAP_01_F"]] -- Array, can contain multiple assets
["vehiclesLightArmed",["JMSLLTE_I_veh_skiff_rt97_hutt_F"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["JMSLLTE_O_veh_AA5mk2_reb_F"]] call _fnc_saveToTemplate; 			//this line determines the trucks -- Example: ["vehiclesTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesCargoTrucks", ["JMSLLTE_O_veh_AA5sup_reb_F"]] call _fnc_saveToTemplate; 		//this line determines cargo trucks -- Example: ["vehiclesCargoTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesAmmoTrucks", ["AGD_Truck_Imp_Ammo"]] call _fnc_saveToTemplate; 		//this line determines ammo trucks -- Example: ["vehiclesAmmoTrucks", ["B_Truck_01_ammo_F"]] -- Array, can contain multiple assets
["vehiclesRepairTrucks", ["3AS_PX10_REB_R3"]] call _fnc_saveToTemplate; 		//this line determines repair trucks -- Example: ["vehiclesRepairTrucks", ["B_Truck_01_Repair_F"]] -- Array, can contain multiple assets
["vehiclesFuelTrucks", ["AGD_Truck_Imp_Fuel"]] call _fnc_saveToTemplate;		//this line determines fuel trucks -- Array, can contain multiple assets
["vehiclesMedical", ["AGD_Rebel_ITT_Medical"]] call _fnc_saveToTemplate;			//this line determines medical vehicles -- Array, can contain multiple assets
["vehiclesAPCs", ["JMSLLTE_I_veh_skiff_rt97_hutt_F"]] call _fnc_saveToTemplate; 				//this line determines APCs -- Example: ["vehiclesAPCs", ["B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_CRV_F"]] -- Array, can contain multiple assets
["vehiclesTanks", ["WM_AAC_Speeder_Rocket", "JMSLLTE_vehgr_ATST_mimb_F", "WM_AAC_Speeder"]] call _fnc_saveToTemplate; 			//this line determines tanks -- Example: ["vehiclesTanks", ["B_MBT_01_cannon_F", "B_MBT_01_TUSK_F"]] -- Array, can contain multiple assets
["vehiclesAA", ["AGD_AAC_AA"]] call _fnc_saveToTemplate; 				//this line determines AA vehicles -- Example: ["vehiclesAA", ["B_APC_Tracked_01_AA_F"]] -- Array, can contain multiple assets
["vehiclesLightAPCs", []] call _fnc_saveToTemplate;			//this line determines light APCs
["vehiclesIFVs", ["JMSLLTE_vehgr_ATST_reb_F"]] call _fnc_saveToTemplate;				//this line determines IFVs

["vehiclesDropPod", ["3AS_EscapePod"]] call _fnc_saveToTemplate; 

["vehicleRadar", "ls_vehicle_radarDish_blufor"] call _fnc_saveToTemplate;
["vehicleSam", "JMSLLTE_O_vehgr_yag4_reb_F"] call _fnc_saveToTemplate;

["vehiclesTransportBoats", ["I_Boat_Transport_01_F"]] call _fnc_saveToTemplate; 	//this line determines transport boats -- Example: ["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesGunBoats", ["I_Boat_Armed_01_minigun_F"]] call _fnc_saveToTemplate; 			//this line determines gun boats -- Example: ["vehiclesGunBoats", ["B_Boat_Armed_01_minigun_F"]] -- Array, can contain multiple assets
["vehiclesAmphibious", ["JMSLLTE_B_veh_x34mk2_reb_F"]] call _fnc_saveToTemplate; 		//this line determines amphibious vehicles  -- Example: ["vehiclesAmphibious", ["B_APC_Wheeled_01_cannon_F"]] -- Array, can contain multiple assets

["vehiclesPlanesCAS", ["JMSLLTE_YwingA4_SawI_veh_F"]] call _fnc_saveToTemplate; 		//this line determines CAS planes -- Example: ["vehiclesPlanesCAS", ["B_Plane_CAS_01_dynamicLoadout_F"]] -- Array, can contain multiple assets
["vehiclesPlanesAA", ["JMSLLTE_Xwing_Saw_veh_F"]] call _fnc_saveToTemplate; 			//this line determines air supperiority planes -- Example: ["vehiclesPlanesAA", ["B_Plane_Fighter_01_F"]] -- Array, can contain multiple assets
["vehiclesPlanesTransport", ["JMSLLTE_Uwing_veh_SawI_F"]] call _fnc_saveToTemplate; 	//this line determines transport planes -- Example: ["vehiclesPlanesTransport", ["B_T_VTOL_01_infantry_F"]] -- Array, can contain multiple assets

["vehiclesHelisLight", ["ls_vehicle_laatle_transportGunship"]] call _fnc_saveToTemplate; 		//this line determines light helis -- Example: ["vehiclesHelisLight", ["B_Heli_Light_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisTransport", ["JMSLLTE_UwingHeli_veh_SawI_F"]] call _fnc_saveToTemplate; 	//this line determines transport helis -- Example: ["vehiclesHelisTransport", ["B_Heli_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisLightAttack", ["JMSLLTE_Uwing_veh_SawI_F"]] call _fnc_saveToTemplate;		// this line determines light attack helicopters
["vehiclesHelisAttack", ["JMSLLTE_Uwing_veh_SawI_F"]] call _fnc_saveToTemplate; 		//this line determines attack helis -- Example: ["vehiclesHelisAttack", ["B_Heli_Attack_01_F"]] -- Array, can contain multiple assets

["vehiclesArtillery", ["WM_AAC_Speeder_Artillery"]] call _fnc_saveToTemplate;		//this line determines SPAs
["magazines", createHashMapFromArray [
["WM_AAC_Speeder_Artillery", ["12Rnd_230mm_rockets"]]
]] call _fnc_saveToTemplate;			//this line determines ammo to be used with specified SPA, hashMap makes sure that SPA gets proper ammo

["uavsAttack", ["JMSLLTE_vulture_reb_F"]] call _fnc_saveToTemplate; 				//this line determines attack UAVs -- Example: ["uavsAttack", ["B_UAV_02_CAS_F"]] -- Array, can contain multiple assets
["uavsPortable", ["JLTS_UAV_prowler_cis"]] call _fnc_saveToTemplate; 				//this line determines portable UAVs -- Example: ["uavsPortable", ["B_UAV_01_F"]] -- Array, can contain multiple assets

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", ["JMSLLTE_I_veh_skiff_rt97_hutt_F"]] call _fnc_saveToTemplate; //this line determines lightly armed militia vehicles -- Example: ["vehiclesMilitiaLightArmed", ["B_G_Offroad_01_armed_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaTrucks", ["JMSLLTE_I_veh_skiff_hutt_F"]] call _fnc_saveToTemplate; 	//this line determines militia trucks (unarmed) -- Example: ["vehiclesMilitiaTrucks", ["B_G_Van_01_transport_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaCars", ["JMSLLTE_C_veh_x34_F"]] call _fnc_saveToTemplate; 		//this line determines militia cars (unarmed) -- Example: ["vehiclesMilitiaCars", ["B_G_Offroad_01_F"]] -- Array, can contain multiple assets

["vehiclesMilitiaAPCs", ["3AS_PX10_IMP_F"]] call _fnc_saveToTemplate;     					//this line determines militia APCs

["vehiclesPolice", ["JMSLLTE_I_veh_skiff_hutt_F"]] call _fnc_saveToTemplate; 			//this line determines police cars -- Example: ["vehiclesPolice", ["B_GEN_Offroad_01_gen_F"]] -- Array, can contain multiple assets

["staticMGs", ["ls_vehicle_mrbc", "3AS_HeavyRepeater_Armoured"]] call _fnc_saveToTemplate; 					//this line determines static MGs -- Example: ["staticMG", ["B_HMG_01_high_F"]] -- Array, can contain multiple assets
["staticAT", ["AGD_Shellcracker_AT"]] call _fnc_saveToTemplate; 					//this line determinesstatic ATs -- Example: ["staticAT", ["B_static_AT_F"]] -- Array, can contain multiple assets
["staticAA", ["AGD_Shellcracker_AA"]] call _fnc_saveToTemplate; 					//this line determines static AAs -- Example: ["staticAA", ["B_static_AA_F"]] -- Array, can contain multiple assets
["staticMortars", ["WM_ImperialMortar"]] call _fnc_saveToTemplate; 				//this line determines static mortars -- Example: ["staticMortars", ["B_Mortar_01_F"]] -- Array, can contain multiple assets
["staticHowitzers", []] call _fnc_saveToTemplate;							//this line determines static howitzers. Basically it's just a stronger mortar, use same syntax as above.

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate; 			//this line determines available HE-shells for the static mortars - !needs to be compatible with the mortar! -- Example: ["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] - ENTER ONLY ONE OPTION
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate; 		//this line determines smoke-shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] - ENTER ONLY ONE OPTION
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;		//this line determines flare shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Flare_white"] - ENTER ONLY ONE OPTION

["howitzerMagazineHE", ""] call _fnc_saveToTemplate;			//this line determines available HE-shells for the static howitzers - !needs to be compatible with the howitzer! -- same syntax as above - ENTER ONLY ONE OPTION

//Minefield definition
["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

["animations", [
    ["I_APC_Wheeled_03_cannon_F", ["showCamonetHull", 0.25, "showSLATHull", 0.3]],
    ["I_MBT_03_cannon_F", ["showCamonetHull", 0.3, "showCamonetTurret", 0.25, "HideTurret", 0.3, "HideHull", 0.3]],
    ["I_APC_tracked_03_cannon_F", ["showCamonetHull", 0.3, "showCamonetTurret", 0.3, "showTools", 0.3, "showSLATHull", 0.3, "showSLATTurret", 0.3]],
    ["I_LT_01_AA_F", ["showCamonetHull", 0.3, "showTools", 0.25, "showSLATHull", 0.3]],
    ["I_LT_01_AT_F", ["showCamonetHull", 0.3, "showTools", 0.25, "showSLATHull", 0.3]],
    ["I_LT_01_cannon_F", ["showCamonetHull", 0.3, "showTools", 0.25, "showSLATHull", 0.3]]
]] call _fnc_saveToTemplate;		//this makes specified vehicles randomly spawn with specified cosmetics applied

/////////////////////
///  Identities   ///
/////////////////////

["faces", [
    "WhiteHead_20",
    "WhiteHead_15",
    "WhiteHead_30",
    "WhiteHead_14",
    "TanoanHead_A3_01",
    "WhiteHead_29",
    "WhiteHead_10",
    "AsianHead_A3_04",
    "WhiteHead_27",
    "WhiteHead_28",
    "RussianHead_1",
    "WhiteHead_26",
    "AfricanHead_02",
    "WhiteHead_24",
    "ls_cloneA",
    "Ioannou",
    "Mavros",
	"Head_MimbaneseDark",
	"Head_MimbaneseLines",
	"Head_MimbaneseOrange",
	"Head_MimbaneseRed",
	"Head_NiktoBrown",
	"Head_NiktoBrown2",
	"Head_NiktoDark",
	"Head_NiktoGreen",
	"Head_NiktoGrey",
	"Head_NiktoOrange",
	"Head_WeequayBrown",
	"Head_WeequayDark",
	"Head_WeequayGrey",
	"Head_WeequayBod"
]] call _fnc_saveToTemplate;
["voices", ["Male01ENGB","Male02ENGB","Male03ENGB","Male04ENGB","Male05ENGB","Male06ENGB"]] call _fnc_saveToTemplate;

["insignia", ["", "", ""]] call _fnc_saveToTemplate;
["milInsignia", ["", "", ""]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", []];
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["designatedGrenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];

_loadoutData set ["lightATLaunchers", [
["3AS_RPS6_F", "", "", "", [], [], ""],
["3AS_RPS6_G", "", "acc_flashlight", "", [], [], ""],
["WM_Launch_HH15", "", "acc_flashlight", "", ["WM_ProtonTorpedo"], [], ""]
]];
_loadoutData set ["ATLaunchers", ["3AS_HH12_F", "3AS_RPS6_HP"]];
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
_loadoutData set ["maps", ["ItemMap"]];				//this line determines map
_loadoutData set ["watches", ["ItemWatch"]];		//this line determines watch
_loadoutData set ["compasses", ["ItemCompass"]];	//this line determines compass
_loadoutData set ["radios", ["ls_radios_dcs"]];			//this line determines radio
_loadoutData set ["gpses", ["ItemGPS"]];			//this line determines GPS
_loadoutData set ["NVGs", ["ls_nvg_goggles"]];						//this line determines NVGs -- Array, can contain multiple assets
_loadoutData set ["binoculars", ["IDA_Electrobinoculars_Rep"]];		//this line determines the binoculars
_loadoutData set ["rangefinders", ["JMSLLTE_W_TD23_tan_F"]];

_loadoutData set ["traitorUniforms", ["WM_ParaMilitary_Shirt_Rolled"]];		//this line determines traitor uniforms for traitor mission
_loadoutData set ["traitorVests", ["ls_imperialVest_army_damaged"]];			//this line determines traitor vesets for traitor mission
_loadoutData set ["traitorHats", ["ls_helmet_jockey_alt"]];			//this line determines traitor headgear for traitor missions

_loadoutData set ["officerUniforms", ["JMSLLTE_ScumOfficer_orange_F_CombatUniform"]];		//this line determines officer uniforms for assassination mission
_loadoutData set ["officerVests", ["JMSLLTE_RA_Officerrank_gr_lt_armor","JMSLLTE_RA_Officerrank_gr_gen_armor","JMSLLTE_RA_Officerrank_gr_cpt_armor","JMSLLTE_RA_Officerrank_gr_col_armor","JMSLLTE_RA_Officerrank_gr_maj_armor"]];			//this line determines officer vesets for assassination mission
_loadoutData set ["officerHats", ["JMSLLTE_OfcapP_helmet"]];	//this line determines officer headgear for assassination missions

_loadoutData set ["uniforms", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slUniforms", []];
_loadoutData set ["vests", []];						//don't fill this line - this is only to set the variable
_loadoutData set ["Hvests", []];
_loadoutData set ["sniVests", ["ls_vest_holster_maroon"]];
_loadoutData set ["backpacks", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["longRangeRadios", ["JMSLLTE_back_rebradio_v1_black"]];
_loadoutData set ["atBackpacks", ["JMSLLTE_back_rebpackH_v1_black"]];
_loadoutData set ["helmets", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slHat", ["ls_helmet_serviceComlink", "ls_helmet_serviceComlink_brown","JMSLLTE_PathM1_b_gr_helmet"]];
_loadoutData set ["sniHats", ["JMSLLTE_Path_1_brown_cap"]];

_loadoutData set ["glasses", ["ls_glasses_coif","G_JMSLLTE_OfheadPh","G_JMSLLTE_Facecover_dark"]];	//cosmetics
_loadoutData set ["goggles", ["ls_jabiimGlasses_goggles","G_JMSLLTE_MechGlass"]];		//cosmetics

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

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_sfLoadoutData set ["uniforms", ["ls_rebelUniform_honorGuard"]];
_sfLoadoutData set ["vests", ["ls_vest_holster_maroon"]];
_sfLoadoutData set ["Hvests", ["JMSLLTE_Gunner_vest_armor"]];
_sfLoadoutData set ["backpacks", ["JMSLLTE_back_dengv1_old"]];
_sfLoadoutData set ["helmets", ["JMSLLTE_NavyV_white_helmet", "JMSLLTE_NavyV_greenO_helmet"]];
_sfLoadoutData set ["binoculars", ["IDA_Electrobinoculars_Rep"]];

_sfLoadoutData set ["slRifles", [
["AGD_SPK12", "muzzle_snds_M", "acc_flashlight", "optic_MRCO", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["AGD_SPK12", "muzzle_snds_M", "acc_flashlight", "optic_Hamr", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["AGD_E10_UGL", "muzzle_snds_M", "acc_flashlight", "optic_MRCO", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["IDA_HE_LauncherGrenade", "IDA_Smoke_LauncherGrenade"], ""],
["AGD_E10_UGL", "muzzle_snds_M", "acc_flashlight", "optic_Hamr", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["IDA_HE_LauncherGrenade", "IDA_Smoke_LauncherGrenade"], ""]
]];
_sfLoadoutData set ["rifles", [
["AGD_E11D", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["AGD_E22", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["AGD_IQA11", "", "", "IDA_TargetingScope", [], [], "bipod_01_F_blk"],
["AGD_A260", "", "", "optic_MRCO", [], [], ""]
]];
_sfLoadoutData set ["carbines", [
["AGD_E11D", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_DC17M", "", "acc_flashlight", "", ["IDA_Blaster_Clip_Power4_5Rnd_Blue", "IDA_Blaster_Clip_Power2_60Rnd_Blue", "IDA_Blaster_Clip_Grenade"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
["3AS_MPL_F", "", "", "", ["3AS_3Rnd_HE_Grenade_shell", "3AS_3Rnd_HEAT_Grenade_shell"], [], ""],
["AGD_E10_UGL", "muzzle_snds_M", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];

_sfLoadoutData set ["SMGs", [
["AGD_E11D", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["AGD_E22", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["AGD_IQA11", "", "", "IDA_TargetingScope", [], [], "bipod_01_F_blk"],
["AGD_A260", "", "", "optic_MRCO", [], [], ""]
]];

private _mgs = [
    ["IDA_DLT19", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_60Rnd_Red"], [], "bipod_03_F_blk"],
    ["AGD_DC15L_F", "", "acc_flashlight", "3AS_optic_DC15L_F", ["3AS_200Rnd_EM40_Mag"], [], "3AS_bipod_DC15L_F"]
];

_sfLoadoutData set ["machineGuns", _mgs];

_sfLoadoutData set ["marksmanRifles", [
    ["IDA_773Firepuncher", "", "acc_flashlight", "", [], [], "bipod_01_F_blk"],
    ["IDA_774CX", "", "acc_flashlight", "", [], [], "bipod_01_F_blk"],
    ["IDA_DLT19D", "", "acc_flashlight", "", [], [], "bipod_01_F_blk"]
]];
_sfLoadoutData set ["sniperRifles", [
["IDA_IQA11", "", "", "", [], [], ""],
["IDA_Galaar90", "", "", "", [], [], ""]
]];
_sfLoadoutData set ["sidearms", [
["IDA_E11P", "", "", "", [], [], ""],
["3AS_DC17S_F", "3AS_muzzle_DC17S_F", "", "", ["3AS_16Rnd_EM20_Mag"], [], ""],
["3AS_FE20_GrenadeLauncherPistol", "", "", "", ["3AS_1UGL_MK54_HE_shell"], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData set ["uniforms", ["JMSLLTE_BHj_black_F_CombatUniform","JMSLLTE_BHj_red_F_CombatUniform","JMSLLTE_BoOld_rust_F_CombatUniform","JMSLLTE_BHj_yel_F_CombatUniform"]];
_eliteLoadoutData set ["slUniforms", ["JMSLLTE_BHj_hax_F_CombatUniform"]];
_eliteLoadoutData set ["vests", ["JMSLLTE_BHjumpHidden_armor"]];
_eliteLoadoutData set ["Hvests", ["JMSLLTE_PathfinderVest_armor"]];
_eliteLoadoutData set ["backpacks", ["JMSLLTE_back_rebpackH_v1_black", "JMSLLTE_back_rebpack_v1_black"]];
_eliteLoadoutData set ["helmets", ["JMSLLTE_MercDisk_white_helmet","JMSLLTE_MercDisk_green_helmet","JMSLLTE_MercDisk_red_helmet","JMSLLTE_MercDisk_yel_helmet","JMSLLTE_MercSphere_white_helmet","JMSLLTE_MercSphere_red_helmet","JMSLLTE_MercLegio_hax_helmet","JMSLLTE_MercLegio_red_helmet","JMSLLTE_MercLegio_black_helmet","JMSLLTE_MercDisk_black_helmet"]];
_eliteLoadoutData set ["binoculars", ["JMSLLTE_W_TD23_black_F"]];

_eliteLoadoutData set ["slRifles", [
["AGD_SPK12", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_60Rnd_Red"], [], ""],
["JMSLLTE_dh17rifle", "", "acc_flashlight", "", ["JMSLLTE_DH17_60Rnd_Mag"], [], ""],
["JMSLLTE_dh17rifle", "", "acc_flashlight", "JMSLLTE_dh17r_holo_Scope", ["JMSLLTE_DH17_60Rnd_Mag"], [], ""],
["JMSLLTE_a180", "", "acc_flashlight", "JMSLLTE_a180_bl_Scope", ["JMSLLTE_A180_25rnd_Mag"], [], ""],
["AGD_A260", "", "acc_flashlight", "optic_MRCO", [], [], ""],
["AGD_FA11", "", "acc_flashlight", "", [], [], ""],
["AGD_DC23", "", "acc_flashlight", "", [], [], ""],
["JMSLLTE_a180rifle", "", "acc_flashlight", "JMSLLTE_a180_bl_Scope", ["JMSLLTE_A180_25rnd_Mag"], [], ""]
]];
_eliteLoadoutData set ["rifles", [
["AGD_SPK12", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_60Rnd_Red"], [], ""],
["JMSLLTE_dh17rifle", "", "acc_flashlight", "", ["JMSLLTE_DH17_60Rnd_Mag"], [], ""],
["JMSLLTE_dh17rifle", "", "acc_flashlight", "JMSLLTE_dh17r_holo_Scope", ["JMSLLTE_DH17_60Rnd_Mag"], [], ""],
["JMSLLTE_a180", "", "acc_flashlight", "JMSLLTE_a180_bl_Scope", ["JMSLLTE_A180_25rnd_Mag"], [], ""],
["AGD_A260", "", "acc_flashlight", "optic_MRCO", [], [], ""],
["AGD_FA11", "", "acc_flashlight", "", [], [], ""],
["AGD_DC23", "", "acc_flashlight", "", [], [], ""],
["JMSLLTE_a180rifle", "", "acc_flashlight", "JMSLLTE_a180_bl_Scope", ["JMSLLTE_A180_25rnd_Mag"], [], ""],
["AGD_FA11", "", "acc_flashlight", "optic_MRCO", ["IDA_Blaster_Cell_Power3_40Rnd_Green"], [], ""],
["JMSLLTE_a280", "", "JMSLLTE_acc_flashlight", "", ["JMSLLTE_A280_30rnd_Mag"], [], ""],
["JMSLLTE_a280", "", "JMSLLTE_acc_flashlight", "JMSLLTE_a280_bl_Scope", ["JMSLLTE_A280_30rnd_Mag"], [], ""],
["JMSLLTE_a280", "", "JMSLLTE_acc_flashlight", "JMSLLTE_a280_holo_Scope", ["JMSLLTE_A280_30rnd_Mag"], [], ""],
["JMSLLTE_a280stock", "", "JMSLLTE_acc_flashlight", "JMSLLTE_m45_bl_Scope", ["JMSLLTE_A280_30rnd_Mag"], [], ""],
["JMSLLTE_a280c", "", "JMSLLTE_acc_flashlight", "JMSLLTE_a280_holo_Scope", ["JMSLLTE_A280C_20rnd_Mag"], [], ""],
["JMSLLTE_a280cr", "", "JMSLLTE_acc_flashlight", "", ["JMSLLTE_A280CR_20rnd_Mag"], [], ""],
["JMSLLTE_a280", "", "JMSLLTE_acc_flashlight", "", ["JMSLLTE_A280_30rnd_Mag"], [], ""]
]];
_eliteLoadoutData set ["carbines", [
["AGD_DC15C_F", "", "acc_flashlight", "3AS_optic_DC15C_F", ["3AS_40Rnd_EM40_Mag"], [], ""],
["AGD_DC15C_F", "", "acc_flashlight", "", ["3AS_40Rnd_EM40_Mag"], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["AGD_E11_UGL", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["AGD_E11_UGL", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_eliteLoadoutData set ["SMGs", [
["AGD_E11", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["AGD_E11", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""]
]];

_eliteLoadoutData set ["machineGuns", [
    ["AGD_T21", "", "acc_flashlight", "", [], [], ""],
    ["AGD_T15", "", "acc_flashlight", "", [], [], ""],
    ["AGD_DLT19", "", "acc_flashlight", "", [], [], ""],
    ["WM_OppressorFlamethrower", "", "acc_flashlight", "", [], [], ""]
]];


private _marksmanRifles = [
    ["WM_DLT19X", "", "", "", [], [], "WM_DLT_Bipod"],
    ["AGD_DC15X_Evil", "", "", "", [], [], "bipod_01_F_blk"]
];
_eliteLoadoutData set ["marksmanRifles", _marksmanRifles];

_eliteLoadoutData set ["sniperRifles", [
["ls_weapon_firepuncher", "", "", "", [], [], ""],
["IDA_IQA11", "", "", "IDA_TargetingScope", [], [], "bipod_01_F_blk"],
["JMSLLTE_E17DRifle", "", "", "", [], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
["IDA_E11P", "", "", "", [], [], ""],
["3AS_DC17S_F", "3AS_muzzle_DC17S_F", "", "", ["3AS_16Rnd_EM20_Mag"], [], ""],
["3AS_SE14R", "", "", "3AS_Imp_Optic_SE14R", ["3AS_15Rnd_EM20_SE14R_Mag"], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["uniforms", ["JMSLLTE_BHcom_bl_F_CombatUniform","JMSLLTE_BHcom_red_F_CombatUniform","JMSLLTE_BHcom_yel_F_CombatUniform","JMSLLTE_BHcom_hax_F_CombatUniform","JMSLLTE_BHcom_green_F_CombatUniform"]];
_militaryLoadoutData set ["slUniforms", ["JMSLLTE_BoOld_rust_F_CombatUniform"]];
_militaryLoadoutData set ["vests", ["JMSLLTE_BHcomBelt_armor","JMSLLTE_BHcomGren_armor"]];
_militaryLoadoutData set ["Hvests", ["JMSLLTE_Jinata_ArmorAmHeavy"]];
_militaryLoadoutData set ["backpacks", ["JMSLLTE_back_dengv1_old"]];
_militaryLoadoutData set ["helmets", ["JMSLLTE_MercDisk_white_helmet","JMSLLTE_MercDisk_green_helmet","JMSLLTE_MercDisk_red_helmet","JMSLLTE_MercDisk_yel_helmet","JMSLLTE_MercSphere_white_helmet","JMSLLTE_MercSphere_red_helmet","JMSLLTE_MercLegio_hax_helmet","JMSLLTE_MercLegio_red_helmet","JMSLLTE_MercLegio_black_helmet","JMSLLTE_MercDisk_black_helmet"]];
_militaryLoadoutData set ["binoculars", ["ls_clone_electrobinocularsCommander_night"]];

_militaryLoadoutData set ["slRifles", [
["AGD_SPK12", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_60Rnd_Red"], [], ""],
["JMSLLTE_dh17rifle", "", "acc_flashlight", "", ["JMSLLTE_DH17_60Rnd_Mag"], [], ""],
["JMSLLTE_dh17rifle", "", "acc_flashlight", "JMSLLTE_dh17r_holo_Scope", ["JMSLLTE_DH17_60Rnd_Mag"], [], ""],
["JMSLLTE_a180", "", "acc_flashlight", "JMSLLTE_a180_bl_Scope", ["JMSLLTE_A180_25rnd_Mag"], [], ""],
["AGD_A260", "", "acc_flashlight", "optic_MRCO", [], [], ""],
["AGD_FA11", "", "acc_flashlight", "", [], [], ""],
["AGD_DC23", "", "acc_flashlight", "", [], [], ""],
["JMSLLTE_a180rifle", "", "acc_flashlight", "JMSLLTE_a180_bl_Scope", ["JMSLLTE_A180_25rnd_Mag"], [], ""]
]];
_militaryLoadoutData set ["rifles", [
["AGD_SPK12", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_60Rnd_Red"], [], ""],
["JMSLLTE_dh17rifle", "", "acc_flashlight", "", ["JMSLLTE_DH17_60Rnd_Mag"], [], ""],
["JMSLLTE_dh17rifle", "", "acc_flashlight", "JMSLLTE_dh17r_holo_Scope", ["JMSLLTE_DH17_60Rnd_Mag"], [], ""],
["JMSLLTE_a180", "", "acc_flashlight", "JMSLLTE_a180_bl_Scope", ["JMSLLTE_A180_25rnd_Mag"], [], ""],
["AGD_A260", "", "acc_flashlight", "optic_MRCO", [], [], ""],
["AGD_FA11", "", "acc_flashlight", "", [], [], ""],
["AGD_DC23", "", "acc_flashlight", "", [], [], ""],
["JMSLLTE_a180rifle", "", "acc_flashlight", "JMSLLTE_a180_bl_Scope", ["JMSLLTE_A180_25rnd_Mag"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
["AGD_SPK12", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_60Rnd_Red"], [], ""],
["JMSLLTE_a180stock", "", "", "JMSLLTE_a180_bl_Scope", ["JMSLLTE_A180_25rnd_Mag"], [], ""],
["JMSLLTE_a300c", "", "", "JMSLLTE_dh17_holo_Scope", ["JMSLLTE_A300C_30rnd_Mag"], [], ""],
["JMSLLTE_a475", "", "", "JMSLLTE_a280_holo_Scope", ["JMSLLTE_A475_25rnd_Mag"], [], ""],
["AGD_E11", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["AGD_E10_UGL", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["IDA_HE_LauncherGrenade", "IDA_Smoke_LauncherGrenade"], ""],
["AGD_E11_UGL", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["IDA_HE_LauncherGrenade", "IDA_Smoke_LauncherGrenade"], ""]
]];
_militaryLoadoutData set ["SMGs", [
["3AS_ScatterGun_F", "", "", "", ["3AS_8Rnd_ESlugY_Mag"], [], ""],
["AGD_DC15S_F", "", "", "", ["3AS_60Rnd_EM30_mag"], [], ""],
["ls_weapon_acpr", "", "", "", ["ls_magazine_acpr"], [], ""],
["IDA_SE28", "", "", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""]
]];

private _mgs = [
    ["IDA_DLT19", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_60Rnd_Red"], [], "bipod_03_F_blk"],
    ["AGD_DC15L_F", "", "acc_flashlight", "3AS_optic_DC15L_F", ["3AS_200Rnd_EM40_Mag"], [], "3AS_bipod_DC15L_F"],
	["IDA_M41", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power2_100Rnd_Green"], [], "bipod_03_F_blk"],
	["IDA_T15", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power2_100Rnd_Blue"], [], "3AS_bipod_DC15L_F"],
	["ls_weapon_zh73", "", "acc_flashlight", "ls_cows_zh73_scope", [], [], ""],
	["IDA_E5C", "", "acc_flashlight", "", [], [], ""]
];

_militaryLoadoutData set ["machineGuns", _mgs];

private _marksmanRifles = [
    ["JMSLLTE_a310", "", "JMSLLTE_acc_flashlight_reb", "JMSLLTE_a300_bl_Scope", [], [], ""],
    ["JMSLLTE_dlt20a", "", "", "JMSLLTE_a280c_bl_Scope", [], [], ""]
];

_militaryLoadoutData set ["marksmanRifles", _marksmanRifles];

_militaryLoadoutData set ["sniperRifles", [
["AGD_DC15X_Evil", "", "", "", ["IDA_Blaster_Cell_Power5_5Rnd_Red"], [], "bipod_01_F_blk"],
["IDA_774CX", "", "", "", ["IDA_Blaster_Cell_Power4_10Rnd_Red"], [], ""],
["JMSLLTE_E17DRifle", "", "", "", [], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
["JMSLLTE_dl44pistol", "", "", "", [], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["ls_uniform_spacer_alt","ls_uniform_spacer"]];
_policeLoadoutData set ["vests", ["ls_vest_spacer"]];
private _helmets = ["ls_helmet_service"];
if (_hasLawsOfWar) then {
    _helmets pushBack "ls_helmet_service";
};
_policeLoadoutData set ["helmets", _helmets];

_policeLoadoutData set ["SMGs", [
["JMSLLTE_dh17", "", "acc_flashlight", "JMSLLTE_dh17_holo_Scope", [], [], ""],
["JMSLLTE_dt12pistol", "", "acc_flashlight", "", [], [], ""],
["JMSLLTE_ee4", "", "acc_flashlight", "", [], [], ""]
]];
_policeLoadoutData set ["sidearms", ["JMSLLTE_a180pistol"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["JMSLLTE_HuttBas_brown_F_CombatUniform","JMSLLTE_HuttHeavy_brown_F_CombatUniform","JMSLLTE_HuttSkiff_brown_F_CombatUniform","JMSLLTE_HuttBas_dark_F_CombatUniform"]];
_militiaLoadoutData set ["vests", ["JMSLLTE_PirBas_armor","JMSLLTE_PirBas_dark_armor","JMSLLTE_PirBasB_armor"]];
_militiaLoadoutData set ["Hvests", ["JMSLLTE_PirHeavy_bright_armor","JMSLLTE_PirHeavy_armor","JMSLLTE_PirHeavy_beige_armor"]];
_militiaLoadoutData set ["backpacks", ["JMSLLTE_back_rebpack_v1_black","JMSLLTE_back_rebsmall_v1"]];
_militiaLoadoutData set ["helmets", ["JMSLLTE_PirSkiff_helmet","JMSLLTE_PirSkiffM_helmet"]];

_militiaLoadoutData set ["slRifles", [
["JMSLLTE_a180rifle", "", "acc_flashlight", "JMSLLTE_a180_bl_Scope", ["JMSLLTE_A180_25rnd_Mag"], [], ""],
["JMSLLTE_a180rifle", "", "acc_flashlight", "JMSLLTE_a280_bl_Scope", ["JMSLLTE_A180_25rnd_Mag"], [], ""],
["JMSLLTE_a180rifle", "", "acc_flashlight", "JMSLLTE_dh17_holo_Scope", ["JMSLLTE_A180_25rnd_Mag"], [], ""],
["JMSLLTE_a180rifle", "", "acc_flashlight", "JMSLLTE_a280_holo_Scope", ["JMSLLTE_A180_25rnd_Mag"], [], ""],
["AGD_SPK12", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_60Rnd_Red"], [], ""]
]];
_militiaLoadoutData set ["rifles", [
["ls_weapon_acpr", "", "", "", ["ls_magazine_acpr"], [], ""],
["ls_weapon_zh73", "", "acc_flashlight", "ls_cows_zh73_scope", ["ls_magazine_zh73"], [], ""],
["3AS_ScatterGun_F", "", "", "", ["3AS_8Rnd_ESlugY_Mag"], [], ""],
["JMSLLTE_a180rifle", "", "acc_flashlight", "JMSLLTE_a280_holo_Scope", ["JMSLLTE_A180_25rnd_Mag"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
["JMSLLTE_a180", "", "acc_flashlight", "JMSLLTE_a180_bl_Scope", ["JMSLLTE_A180_25rnd_Mag"], [], ""],
["JMSLLTE_a180stock", "", "acc_flashlight", "JMSLLTE_a180_bl_Scope", ["JMSLLTE_A180_25rnd_Mag"], [], ""],
["JMSLLTE_dh17", "", "JMSLLTE_acc_flashlight_reb", "JMSLLTE_dh17_holo_Scope", ["JMSLLTE_DH17_30Rnd_Mag"], [], ""],
["IDA_E5", "", "acc_flashlight", "3AS_optic_DC15C_F", ["3AS_40Rnd_EM40_Mag"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
["AGD_DC15S_GL", "", "acc_flashlight", "", ["3AS_40Rnd_EM40_Mag"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["AGD_E10_UGL", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["IDA_HE_LauncherGrenade","IDA_HE_LauncherGrenade","IDA_HE_LauncherGrenade"], ""]
]];
_militiaLoadoutData set ["SMGs", ["AGD_SPK12", "IDA_SE28", "3AS_Cinnagaran_Carbine_F"]];
_militiaLoadoutData set ["machineGuns", [
["IDA_DLT19", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_60Rnd_Red"], [], "bipod_03_F_blk"],
["IDA_M41", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power2_100Rnd_Green"], [], ""]
]];

private _marksmanRifles = [["JMSLLTE_a280", "", "acc_flashlight", "JMSLLTE_a280c_bl_Scope", [], [], ""]];
private _sniperRifles = [["JMSLLTE_dlt20a", "", "", "JMSLLTE_rt97c_bl_Scope", [], [], ""]];

_militiaLoadoutData set ["marksmanRifles", _marksmanRifles];
_militiaLoadoutData set ["sniperRifles", _sniperRifles];
_militiaLoadoutData set ["sidearms", ["JMSLLTE_dl44pistol", "JMSLLTE_dt12pistol"]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["ls_uniform_spacer"]];
_crewLoadoutData set ["vests", ["ls_vest_spacer"]];
_crewLoadoutData set ["helmets", ["ls_helmet_serviceComlink_brown"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["JMSLLTE_ScumPilotJack_beige_F_CombatUniform"]];
_pilotLoadoutData set ["vests", ["JMSLLTE_PilotBreather_xwing"]];
_pilotLoadoutData set ["helmets", ["JMSLLTE_Xwing_whiteReb_helmet"]];





/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 2, "slHat", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

    [["slRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["signalsmokeGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;
    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1.25]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    if (random 1 < 0.3) then {
        [["designatedGrenadeLaunchers", "grenadeLaunchers"] call _fnc_fallback] call _fnc_setPrimary;
        ["backpacks"] call _fnc_setBackpack;
    } else {
        ["grenadeLaunchers"] call _fnc_setPrimary;
    };
    
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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    [selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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

private _marksmanTemplate = {
    [selectRandomWeighted ["helmets", 2,"sniHats", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["sniVests","vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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
	["Sniper", _sniperTemplate, [], [_prefix]]
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
	["Sniper", _sniperTemplate, [], [_prefix]]
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
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate, [], ["other"]]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
["other", [["Pilot", _crewTemplate, [], ["other"]]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _officerTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate, [], ["other"]]], _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;