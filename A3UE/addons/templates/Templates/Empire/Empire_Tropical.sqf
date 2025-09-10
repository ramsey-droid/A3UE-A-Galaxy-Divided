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

["name", "Galactic Empire"] call _fnc_saveToTemplate; 						//this line determines the faction name -- Example: ["name", "NATO"] - ENTER ONLY ONE OPTION
["spawnMarkerName", format [localize "STR_supportcorridor", "Imperial"]] call _fnc_saveToTemplate; 			//this line determines the name tag for the "carrier" on the map -- Example: ["spawnMarkerName", "NATO support corridor"] - ENTER ONLY ONE OPTION. Format and localize function can be used for translation

["flag", "Flag_AAF_F"] call _fnc_saveToTemplate; 						//this line determines the flag -- Example: ["flag", "Flag_NATO_F"] - ENTER ONLY ONE OPTION
["flagTexture", "\ls\core\addons\data\flags\flag_imperial_ca.paa"] call _fnc_saveToTemplate; 				//this line determines the flag texture -- Example: ["flagTexture", "\A3\Data_F\Flags\Flag_NATO_CO.paa"] - ENTER ONLY ONE OPTION
["flagMarkerType", "Galactic_Empire"] call _fnc_saveToTemplate; 			//this line determines the flag marker type -- Example: ["flagMarkerType", "flag_NATO"] - ENTER ONLY ONE OPTION

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "I_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_AAF_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["WM_ITT_Imperial"]] call _fnc_saveToTemplate; 			//this line determines basic vehicles, the lightest kind available. -- Example: ["vehiclesBasic", ["B_Quadbike_01_F"]] -- Array, can contain multiple assets
["vehiclesLightUnarmed", ["WM_74Z_Imperial_Brown"]] call _fnc_saveToTemplate; 		//this line determines light and unarmed vehicles. -- Example: ["vehiclesLightUnarmed", ["B_MRAP_01_F"]] -- Array, can contain multiple assets
["vehiclesLightArmed",["WM_ITT_Imperial"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["3AS_ITT"]] call _fnc_saveToTemplate; 			//this line determines the trucks -- Example: ["vehiclesTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesCargoTrucks", ["3AS_ITT_Logistic"]] call _fnc_saveToTemplate; 		//this line determines cargo trucks -- Example: ["vehiclesCargoTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesAmmoTrucks", ["AGD_Truck_Imp_Ammo"]] call _fnc_saveToTemplate; 		//this line determines ammo trucks -- Example: ["vehiclesAmmoTrucks", ["B_Truck_01_ammo_F"]] -- Array, can contain multiple assets
["vehiclesRepairTrucks", ["AGD_Truck_Imp_Repair"]] call _fnc_saveToTemplate; 		//this line determines repair trucks -- Example: ["vehiclesRepairTrucks", ["B_Truck_01_Repair_F"]] -- Array, can contain multiple assets
["vehiclesFuelTrucks", ["AGD_Truck_Imp_Fuel"]] call _fnc_saveToTemplate;		//this line determines fuel trucks -- Array, can contain multiple assets
["vehiclesMedical", ["3AS_ITT_Medical"]] call _fnc_saveToTemplate;			//this line determines medical vehicles -- Array, can contain multiple assets
["vehiclesAPCs", ["3AS_PX10_IMP_F", "3AS_PX10_IMP_UP", "WM_ATST"]] call _fnc_saveToTemplate; 				//this line determines APCs -- Example: ["vehiclesAPCs", ["B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_CRV_F"]] -- Array, can contain multiple assets
["vehiclesTanks", ["WM_M1", "3AS_Jug_Imperial", "3AS_ATAT", "3AS_ATTE_Imperial"]] call _fnc_saveToTemplate; 			//this line determines tanks -- Example: ["vehiclesTanks", ["B_MBT_01_cannon_F", "B_MBT_01_TUSK_F"]] -- Array, can contain multiple assets
["vehiclesAA", ["3AS_RX200_Base"]] call _fnc_saveToTemplate; 				//this line determines AA vehicles -- Example: ["vehiclesAA", ["B_APC_Tracked_01_AA_F"]] -- Array, can contain multiple assets
["vehiclesLightAPCs", []] call _fnc_saveToTemplate;			//this line determines light APCs
["vehiclesIFVs", []] call _fnc_saveToTemplate;				//this line determines IFVs

["vehiclesDropPod", ["3AS_EscapePod"]] call _fnc_saveToTemplate; 

["vehiclesTransportBoats", ["WM_ITT_Imperial"]] call _fnc_saveToTemplate; 	//this line determines transport boats -- Example: ["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesGunBoats", ["WM_ITT_Imperial"]] call _fnc_saveToTemplate; 			//this line determines gun boats -- Example: ["vehiclesGunBoats", ["B_Boat_Armed_01_minigun_F"]] -- Array, can contain multiple assets
["vehiclesAmphibious", ["3AS_Jug_Imperial"]] call _fnc_saveToTemplate; 		//this line determines amphibious vehicles  -- Example: ["vehiclesAmphibious", ["B_APC_Wheeled_01_cannon_F"]] -- Array, can contain multiple assets

["vehiclesPlanesCAS", ["WM_TieBomber"]] call _fnc_saveToTemplate; 		//this line determines CAS planes -- Example: ["vehiclesPlanesCAS", ["B_Plane_CAS_01_dynamicLoadout_F"]] -- Array, can contain multiple assets
["vehiclesPlanesAA", ["WM_Tiefighter", "WM_TieInterceptor", "3AS_VWing_Imperial"]] call _fnc_saveToTemplate; 			//this line determines air supperiority planes -- Example: ["vehiclesPlanesAA", ["B_Plane_Fighter_01_F"]] -- Array, can contain multiple assets
["vehiclesPlanesTransport", ["3AS_Gozanti_F"]] call _fnc_saveToTemplate; 	//this line determines transport planes -- Example: ["vehiclesPlanesTransport", ["B_T_VTOL_01_infantry_F"]] -- Array, can contain multiple assets

["vehiclesHelisLight", ["ls_vehicle_laatle_transportGunship"]] call _fnc_saveToTemplate; 		//this line determines light helis -- Example: ["vehiclesHelisLight", ["B_Heli_Light_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisTransport", ["WM_Lambda"]] call _fnc_saveToTemplate; 	//this line determines transport helis -- Example: ["vehiclesHelisTransport", ["B_Heli_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisLightAttack", ["ls_vehicle_laatle"]] call _fnc_saveToTemplate;		// this line determines light attack helicopters
["vehiclesHelisAttack", ["3AS_LAAT_Mk1_Imperial"]] call _fnc_saveToTemplate; 		//this line determines attack helis -- Example: ["vehiclesHelisAttack", ["B_Heli_Attack_01_F"]] -- Array, can contain multiple assets

["vehiclesArtillery", ["3AS_AV7"]] call _fnc_saveToTemplate;		//this line determines SPAs
["magazines", createHashMapFromArray [
["3AS_AV7", ["3AS_32Rnd_300mm_Mo_shells"]]
]] call _fnc_saveToTemplate;			//this line determines ammo to be used with specified SPA, hashMap makes sure that SPA gets proper ammo

["uavsAttack", ["O_T_UAV_04_CAS_F"]] call _fnc_saveToTemplate; 				//this line determines attack UAVs -- Example: ["uavsAttack", ["B_UAV_02_CAS_F"]] -- Array, can contain multiple assets
["uavsPortable", ["3AS_H3NR1_Drone_Scout_Imperial"]] call _fnc_saveToTemplate; 				//this line determines portable UAVs -- Example: ["uavsPortable", ["B_UAV_01_F"]] -- Array, can contain multiple assets

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", ["3AS_ITT_Logistic"]] call _fnc_saveToTemplate; //this line determines lightly armed militia vehicles -- Example: ["vehiclesMilitiaLightArmed", ["B_G_Offroad_01_armed_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaTrucks", ["3AS_ITT_Logistic"]] call _fnc_saveToTemplate; 	//this line determines militia trucks (unarmed) -- Example: ["vehiclesMilitiaTrucks", ["B_G_Van_01_transport_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaCars", ["WM_74Z_Imperial_Brown"]] call _fnc_saveToTemplate; 		//this line determines militia cars (unarmed) -- Example: ["vehiclesMilitiaCars", ["B_G_Offroad_01_F"]] -- Array, can contain multiple assets

["vehiclesMilitiaAPCs", ["3AS_PX10_IMP_F"]] call _fnc_saveToTemplate;     			//this line determines militia APCs

["vehiclesPolice", ["3AS_BarcSideCar_501"]] call _fnc_saveToTemplate; 			//this line determines police cars -- Example: ["vehiclesPolice", ["B_GEN_Offroad_01_gen_F"]] -- Array, can contain multiple assets

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
    "Mavros"
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
["JLTS_RPS6", "", "acc_flashlight", "", ["JLTS_RPS6_HE_mag", "JLTS_RPS6_mag"], [], ""]
]];
_loadoutData set ["ATLaunchers", ["3AS_HH12_F", "3AS_RPS6_HP"]];
_loadoutData set ["missileATLaunchers", [
["3AS_PLX1_F", "", "acc_flashlight", "", ["3AS_JLTS_MK43_AT"], [], ""]
]];
_loadoutData set ["AALaunchers", [
["3AS_PLX1_AA", "", "acc_flashlight", "", ["3AS_JLTS_MK39_AA"], [], ""]
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
_loadoutData set ["radios", ["ItemRadio"]];			//this line determines radio
_loadoutData set ["gpses", ["ItemGPS"]];			//this line determines GPS
_loadoutData set ["NVGs", ["ls_nvg_goggles"]];						//this line determines NVGs -- Array, can contain multiple assets
_loadoutData set ["binoculars", ["Binocular"]];		//this line determines the binoculars
_loadoutData set ["rangefinders", ["Rangefinder"]];

_loadoutData set ["stormUniforms", ["AGD_MudtrooperUniform"]];
_loadoutData set ["stormVests", ["WM_Basic_armor","3AS_V_Imperial_Army_Vest_Poncho_F","ls_gar_cfr_vest","ls_vest_holster_maroon"]];
_loadoutData set ["stormHats", ["AGD_MudtrooperHelmet"]];

_loadoutData set ["traitorUniforms", ["WM_ParaMilitary_Shirt_Rolled"]];		//this line determines traitor uniforms for traitor mission
_loadoutData set ["traitorVests", ["ls_imperialVest_army_damaged"]];			//this line determines traitor vesets for traitor mission
_loadoutData set ["traitorHats", ["ls_helmet_jockey_alt"]];			//this line determines traitor headgear for traitor missions

_loadoutData set ["officerUniforms", ["ls_imperialUniform_army_armored_mudtrooper"]];		//this line determines officer uniforms for assassination mission
_loadoutData set ["officerVests", ["ls_imperialVest_officer_mudtrooper_h"]];			//this line determines officer vesets for assassination mission
_loadoutData set ["officerHats", ["ls_imperialHelmet_kepi_g_mudtrooper","ls_imperialHelmet_army_gdr_mudtrooper"]];	//this line determines officer headgear for assassination missions

_loadoutData set ["uniforms", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slUniforms", []];
_loadoutData set ["vests", []];						//don't fill this line - this is only to set the variable
_loadoutData set ["Hvests", []];
_loadoutData set ["sniVests", ["ls_cloneVest_recon"]];
_loadoutData set ["backpacks", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["longRangeRadios", ["IDA_Imperial_Backpack_Radio"]];
_loadoutData set ["atBackpacks", ["IDA_Imperial_Backpack"]];
_loadoutData set ["helmets", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slHat", ["H_Beret_blk", "H_MilCap_dgtl"]];
_loadoutData set ["sniHats", ["H_Booniehat_dgtl"]];

_loadoutData set ["glasses", ["ls_imperial_earPiece", "AGD_Poncho_F"]];	//cosmetics
_loadoutData set ["goggles", ["ls_imperial_earPiece", "AGD_Poncho_F"]];		//cosmetics

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
_sfLoadoutData set ["uniforms", ["ls_imperialUniform_army_armored_isb", "ls_imperialUniform_army_armored_r_isb"]];
_sfLoadoutData set ["vests", ["ls_imperialVest_army_ISB_h", "ls_imperialVest_army_ISB"]];
_sfLoadoutData set ["Hvests", ["ls_imperialVest_isb_heavy_h"]];
_sfLoadoutData set ["backpacks", ["ls_imperialBackpack_chestRigPouch", "ls_imperialBackpack_chestRig"]];
_sfLoadoutData set ["helmets", ["ls_imperialHelmet_army_isb","ls_imperialHelmet_army_gu_isb"]];
_sfLoadoutData set ["binoculars", ["IDA_Electrobinoculars_Rep"]];

_sfLoadoutData set ["slRifles", [
["IDA_E10", "muzzle_snds_M", "acc_flashlight", "optic_MRCO", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_E10", "muzzle_snds_M", "acc_flashlight", "optic_Hamr", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_E10_UGL", "muzzle_snds_M", "acc_flashlight", "optic_MRCO", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["IDA_HE_LauncherGrenade", "IDA_Smoke_LauncherGrenade"], ""],
["IDA_E10_UGL", "muzzle_snds_M", "acc_flashlight", "optic_Hamr", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["IDA_HE_LauncherGrenade", "IDA_Smoke_LauncherGrenade"], ""]
]];
_sfLoadoutData set ["rifles", [
["IDA_E11D", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_E22", "", "acc_flashlight", "IDA_E11_scope", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_IQA11", "", "", "IDA_TargetingScope", [], [], "bipod_01_F_blk"],
["IDA_A260", "", "", "optic_MRCO", [], [], ""]
]];
_sfLoadoutData set ["carbines", [
["IDA_E11D", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_DC17M", "", "acc_flashlight", "IDA_E11_scope", ["IDA_Blaster_Clip_Power4_5Rnd_Blue", "IDA_Blaster_Clip_Power2_60Rnd_Blue", "IDA_Blaster_Clip_Grenade"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
["3AS_MPL_F", "", "", "", ["3AS_3Rnd_HE_Grenade_shell", "3AS_3Rnd_HEAT_Grenade_shell"], [], ""],
["IDA_E10_UGL", "muzzle_snds_M", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];

_sfLoadoutData set ["SMGs", [
["IDA_E11D", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_E22", "", "acc_flashlight", "IDA_E11_scope", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_IQA11", "", "", "IDA_TargetingScope", [], [], "bipod_01_F_blk"],
["IDA_A260", "", "", "optic_MRCO", [], [], ""]
]];

private _mgs = [
    ["IDA_DLT19", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_60Rnd_Red"], [], "bipod_03_F_blk"],
    ["3AS_DC15L_F", "", "acc_flashlight", "3AS_optic_DC15L_F", ["3AS_200Rnd_EM40_Mag"], [], "3AS_bipod_DC15L_F"]
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
_eliteLoadoutData set ["uniforms", ["AGD_MudtrooperUniform"]];
_eliteLoadoutData set ["slUniforms", ["AGD_MudtrooperUniform"]];
_eliteLoadoutData set ["vests", ["ls_gar_cfr_vest", "ls_vest_holster"]];
_eliteLoadoutData set ["Hvests", ["WM_Pauldron"]];
_eliteLoadoutData set ["backpacks", ["3AS_B_Imperial_Stormtrooper_Backpack_F", "3AS_B_Imperial_Stormtrooper_Backpack_RTO_F", "3AS_B_Imperial_Stormtrooper_Backpack_Sand_F", "3AS_B_Imperial_Stormtrooper_Backpack_Medic_F"]];
_eliteLoadoutData set ["helmets", ["AGD_MudtrooperHelmet"]];
_eliteLoadoutData set ["binoculars", ["ls_clone_electrobinocularsCommander"]];

_eliteLoadoutData set ["slRifles", [
["IDA_E11", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_E11", "", "acc_flashlight", "IDA_E11_scope", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_E11_UGL", "", "acc_flashlight", "IDA_E11_scope", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["IDA_HE_LauncherGrenade", "IDA_Smoke_LauncherGrenade"], ""],
["IDA_E11_UGL", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["IDA_HE_LauncherGrenade", "IDA_Smoke_LauncherGrenade"], ""],
["3AS_WestarM5_F", "", "acc_flashlight", "3AS_Optic_Scope_WestarM5", ["3AS_60Rnd_EM50_RedPlasma"], [], ""]
]];
_eliteLoadoutData set ["rifles", [
["IDA_E11", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_E11", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_FA11", "", "acc_flashlight", "optic_MRCO", ["IDA_Blaster_Cell_Power3_40Rnd_Green"], [], ""]
]];
_eliteLoadoutData set ["carbines", [
["3AS_DC15C_F", "", "acc_flashlight", "3AS_optic_DC15C_F", ["3AS_40Rnd_EM40_Mag"], [], ""],
["3AS_DC15C_F", "", "acc_flashlight", "", ["3AS_40Rnd_EM40_Mag"], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["IDA_E11_UGL", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["IDA_E11_UGL", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_eliteLoadoutData set ["SMGs", [
["IDA_E11", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_E11", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""]
]];

_eliteLoadoutData set ["machineGuns", [
    ["IDA_T21", "", "acc_flashlight", "", [], [], ""],
    ["IDA_T15", "", "acc_flashlight", "", [], [], ""],
    ["IDA_DLT19", "", "acc_flashlight", "", [], [], ""],
    ["WM_OppressorFlamethrower", "", "acc_flashlight", "", [], [], ""]
]];


private _marksmanRifles = [
    ["WM_DLT19X", "", "", "", [], [], "WM_DLT_Bipod"],
    ["IDA_DC15X_Evil", "", "", "", [], [], "bipod_01_F_blk"]
];

if (_hasMarksman) then {
    _marksmanRifles append [
        ["WM_DLT19X", "", "", "", [], [], "WM_DLT_Bipod"]
    ];
};
_eliteLoadoutData set ["marksmanRifles", _marksmanRifles];

_eliteLoadoutData set ["sniperRifles", [
["ls_weapon_firepuncher", "", "", "", [], [], ""],
["IDA_IQA11", "", "", "IDA_TargetingScope", [], [], "bipod_01_F_blk"]
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
_militaryLoadoutData set ["uniforms", ["ls_imperialUniform_army_armored_mudtrooper", "ls_imperialUniform_army_armored_mudtrooper", "ls_imperialUniform_army_mudtrooper"]];
_militaryLoadoutData set ["slUniforms", ["ls_imperialUniform_army_armored_r_mudtrooper"]];
_militaryLoadoutData set ["vests", ["ls_imperialVest_army_medium_mudtrooper", "ls_imperialVest_army_mudtrooper", "ls_imperialVest_army_mudtrooper_h", "ls_imperialVest_medic_mudtrooper"]];
_militaryLoadoutData set ["Hvests", ["ls_imperialVest_mudtrooper_damaged"]];
_militaryLoadoutData set ["backpacks", ["IDA_Imperial_Backpack_Straps", "IDA_Imperial_Backpack_Radio", "ls_backpack_chestRigPouch", "ls_imperialBackpack_shoulderPouch"]];
_militaryLoadoutData set ["helmets", ["ls_imperialHelmet_army_mudtrooper", "ls_imperialHelmet_army_gur_mudtrooper", "ls_imperialHelmet_army_gu_mudtrooper", "ls_imperialHelmet_army_gdr_mudtrooper", "ls_imperialHelmet_army_gd_mudtrooper"]];
_militaryLoadoutData set ["binoculars", ["ls_clone_electrobinocularsCommander_night"]];

_militaryLoadoutData set ["slRifles", [
["IDA_E10", "", "acc_flashlight", "IDA_E11_scope", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_E11", "", "acc_flashlight", "IDA_E11_scope", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_E10_UGL", "", "acc_flashlight", "IDA_E11_scope", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["IDA_HE_LauncherGrenade", "IDA_Smoke_LauncherGrenade"], ""],
["IDA_E11_UGL", "", "acc_flashlight", "IDA_E11_scope", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["IDA_HE_LauncherGrenade", "IDA_Smoke_LauncherGrenade"], ""]
]];
_militaryLoadoutData set ["rifles", [
["IDA_E10", "", "acc_flashlight", "IDA_E11_scope", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_E11", "", "acc_flashlight", "IDA_E11_scope", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_E22", "", "acc_flashlight", "IDA_E11_scope", ["IDA_Blaster_Cell_Power3_60Rnd_Red"], [], ""],
["IDA_E22", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_60Rnd_Red"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
["IDA_E10", "", "acc_flashlight", "IDA_E11_scope", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_E11", "", "acc_flashlight", "IDA_E11_scope", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["IDA_E10_UGL", "", "acc_flashlight", "IDA_E11_scope", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["IDA_HE_LauncherGrenade", "IDA_Smoke_LauncherGrenade"], ""],
["IDA_E11_UGL", "", "acc_flashlight", "IDA_E11_scope", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["IDA_HE_LauncherGrenade", "IDA_Smoke_LauncherGrenade"], ""]
]];
_militaryLoadoutData set ["SMGs", [
["3AS_DC15S_F", "", "", "", ["3AS_60Rnd_EM30_mag"], [], ""]
]];

private _mgs = [
    ["IDA_DLT19", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_60Rnd_Red"], [], "bipod_03_F_blk"],
    ["3AS_DC15L_F", "", "acc_flashlight", "3AS_optic_DC15L_F", ["3AS_200Rnd_EM40_Mag"], [], "3AS_bipod_DC15L_F"]
];

_militaryLoadoutData set ["machineGuns", _mgs];

private _marksmanRifles = [
    ["3AS_Valken38X_F", "", "acc_flashlight", "3AS_optic_VK38X_F", ["3AS_10Rnd_EM80_Mag"], [], "3AS_bipod_VK38X_F"],
    ["3AS_DC15A_F", "3AS_muzzle_DC15LE_F", "acc_flashlight", "3AS_optic_DC15LE_F", [], [], "bipod_01_F_blk"]
];

_militaryLoadoutData set ["marksmanRifles", _marksmanRifles];

_militaryLoadoutData set ["sniperRifles", [
["IDA_DC15X_Evil", "", "", "", ["IDA_Blaster_Cell_Power5_5Rnd_Red"], [], "bipod_01_F_blk"],
["IDA_774CX", "", "", "", ["IDA_Blaster_Cell_Power4_10Rnd_Red"], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
["IDA_E11P", "", "", "", [], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["IDA_ShoreTrooper_SGT_M_Uniform","IDA_ShoreTrooper_SGT_F_Uniform", "IDA_ShoreTrooper_F_Uniform", "IDA_ShoreTrooper_M_Uniform"]];
_policeLoadoutData set ["vests", ["WM_Basic_armor"]];
private _helmets = ["IDA_Shoretrooper_Helmet"];
if (_hasLawsOfWar) then {
    _helmets pushBack "IDA_Shoretrooper_Helmet";
};
_policeLoadoutData set ["helmets", _helmets];

_policeLoadoutData set ["SMGs", [
["IDA_DC23", "", "acc_flashlight", "", [], [], ""],
["IDA_E10", "", "acc_flashlight", "", [], [], ""],
["3AS_DC15S_F", "", "acc_flashlight", "", [], [], ""]
]];
_policeLoadoutData set ["sidearms", ["3AS_A180_F"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["ls_imperialUniform_army_mudtrooper", "ls_imperialUniform_army_r_mudtrooper", "ls_imperialUniform_army_armored_mudtrooper"]];
_militiaLoadoutData set ["vests", ["ls_imperialVest_medic_mudtrooper_h","ls_imperialVest_army_tacbelt_mudtrooper", "ls_imperialVest_army_light_mudtrooper", "ls_imperialVest_army_light_mudtrooper_h"]];
_militiaLoadoutData set ["Hvests", ["ls_imperialVest_army_medium_mudtrooper","ls_imperialVest_army_medium_mudtrooper_h","ls_imperialVest_army_mudtrooper"]];
_militiaLoadoutData set ["backpacks", ["ls_imperialBackpack_chestRig", "ls_imperialBackpack_satchel", "IDA_Imperial_Backpack_Straps"]];
_militiaLoadoutData set ["helmets", ["ls_imperialHelmet_kepi_mudtrooper", "ls_imperialHelmet_kepi_g_mudtrooper"]];

if (_hasLawsOfWar) then {
    _militiaLoadoutData set ["helmets", ["ls_imperialHelmet_kepi_mudtrooper", "ls_imperialHelmet_kepi_g_mudtrooper"]];
} else {
    _militiaLoadoutData set ["helmets", ["ls_imperialHelmet_kepi_mudtrooper", "ls_imperialHelmet_kepi_g_mudtrooper"]];
};

_militiaLoadoutData set ["slRifles", [
["IDA_E11", "", "acc_flashlight", "IDA_E11_scope", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_E10", "", "acc_flashlight", "IDA_E11_scope", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["IDA_E10_UGL", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["IDA_HE_LauncherGrenade", "IDA_Smoke_LauncherGrenade", "IDA_SmokeRed_LauncherGrenade"], ""],
["IDA_E11_UGL", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["IDA_HE_LauncherGrenade", "IDA_Smoke_LauncherGrenade", "IDA_SmokeRed_LauncherGrenade"], ""]
]];
_militiaLoadoutData set ["rifles", [
["IDA_E10", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], [], ""],
["3AS_DC15A_F", "", "acc_flashlight", "", ["3AS_45Rnd_EM50_Mag"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
["3AS_DC15S_F", "", "ACE_DBAL_A3_Green", "", ["3AS_60Rnd_EM30_mag"], [], ""],
["3AS_DC15C_F", "", "acc_flashlight", "3AS_optic_DC15C_F", ["3AS_40Rnd_EM40_Mag"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
["3AS_DC15S_GL", "", "acc_flashlight", "", ["3AS_40Rnd_EM40_Mag"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["IDA_E10_UGL", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_40Rnd_Red"], ["IDA_HE_LauncherGrenade","IDA_HE_LauncherGrenade","IDA_HE_LauncherGrenade"], ""]
]];
_militiaLoadoutData set ["SMGs", ["IDA_E10", "IDA_SE28", "3AS_Cinnagaran_Carbine_F"]];
_militiaLoadoutData set ["machineGuns", [
["IDA_DLT19", "", "acc_flashlight", "", ["IDA_Blaster_Cell_Power3_60Rnd_Red"], [], "bipod_03_F_blk"]
]];

private _marksmanRifles = [["IDA_E22", "", "acc_flashlight", "IDA_E11_scope", [], [], ""]];
private _sniperRifles = [["IDA_DLT19D", "", "", "", [], [], ""]];

_militiaLoadoutData set ["marksmanRifles", _marksmanRifles];
_militiaLoadoutData set ["sniperRifles", _sniperRifles];
_militiaLoadoutData set ["sidearms", ["IDA_A260P", "IDA_EC17"]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["ls_imperialUniform_army_armored"]];
_crewLoadoutData set ["vests", ["ls_imperialVest_army_mudtrooper_h"]];
_crewLoadoutData set ["helmets", ["AGD_Imp_DriverHelmet"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["WM_PilotArmor"]];
_pilotLoadoutData set ["vests", ["ls_imperialVest_army_tacbelt_mudtrooper"]];
_pilotLoadoutData set ["helmets", ["WM_PilotHelmet"]];





/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 2]] call _fnc_setHelmet;
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
    ["stormHelmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["stormVests"] call _fnc_setVest;
    ["stormUniforms"] call _fnc_setUniform;
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
    ["stormHelmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["stormVests"] call _fnc_setVest;
    ["stormUniforms"] call _fnc_setUniform;
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
    [selectRandomWeighted ["helmets", 2]] call _fnc_setHelmet;
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
    ["helmets"] call _fnc_setHelmet;
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