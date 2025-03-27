//these variables determine whether specified dlcs are loaded
private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "ION"] call _fnc_saveToTemplate; 						//this line determines the faction name -- Example: ["name", "NATO"] - ENTER ONLY ONE OPTION
["spawnMarkerName", format [localize "STR_supportcorridor", "ION"]] call _fnc_saveToTemplate; 			//this line determines the name tag for the "carrier" on the map -- Example: ["spawnMarkerName", "NATO support corridor"] - ENTER ONLY ONE OPTION. Format and localize function can be used for translation

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate; 						//this line determines the flag -- Example: ["flag", "Flag_NATO_F"] - ENTER ONLY ONE OPTION
["flagTexture", "\A3\Data_F\Flags\flag_ion_CO.paa"] call _fnc_saveToTemplate; 				//this line determines the flag texture -- Example: ["flagTexture", "\A3\Data_F\Flags\Flag_NATO_CO.paa"] - ENTER ONLY ONE OPTION
["flagMarkerType", "Faction_ION_black_PMC"] call _fnc_saveToTemplate; 			//this line determines the flag marker type -- Example: ["flagMarkerType", "flag_NATO"] - ENTER ONLY ONE OPTION

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "I_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_AAF_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["mti_factions_ION_ION_Warthog_MG", "mti_factions_ION_ION_AAT"]] call _fnc_saveToTemplate; 			//this line determines basic vehicles, the lightest kind available. -- Example: ["vehiclesBasic", ["B_Quadbike_01_F"]] -- Array, can contain multiple assets
["vehiclesLightUnarmed", ["OPTRE_M12_FAV_CMA", "OPTRE_M12_FAV_APC_CMA"]] call _fnc_saveToTemplate; 		//this line determines light and unarmed vehicles. -- Example: ["vehiclesLightUnarmed", ["B_MRAP_01_F"]] -- Array, can contain multiple assets
["vehiclesLightArmed",["mti_factions_ION_ION_Warthog_TD", "OPTRE_M12_LRV_CMA", "mti_factions_ION_ION_AAT", "OPTRE_M12R_AA_CMA", "OPTRE_M12A1_LRV_CMA"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["OPTRE_m1015_mule_cover_cma", "OPTRE_m1015_mule_cma"]] call _fnc_saveToTemplate; 			//this line determines the trucks -- Example: ["vehiclesTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesCargoTrucks", ["a3a_Van_02_black_vehicle_F", "OPTRE_M813_TT_Police"]] call _fnc_saveToTemplate; 		//this line determines cargo trucks -- Example: ["vehiclesCargoTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesAmmoTrucks", ["OPTRE_m1015_mule_ammo_cma"]] call _fnc_saveToTemplate; 		//this line determines ammo trucks -- Example: ["vehiclesAmmoTrucks", ["B_Truck_01_ammo_F"]] -- Array, can contain multiple assets
["vehiclesRepairTrucks", ["a3a_Van_02_black_service_F"]] call _fnc_saveToTemplate; 		//this line determines repair trucks -- Example: ["vehiclesRepairTrucks", ["B_Truck_01_Repair_F"]] -- Array, can contain multiple assets
["vehiclesFuelTrucks", ["OPTRE_m1015_mule_fuel_cma"]] call _fnc_saveToTemplate;		//this line determines fuel trucks -- Array, can contain multiple assets
["vehiclesMedical", ["OPTRE_M12_FAV_APC_MED_CMA", "OPTRE_m1015_mule_medical_cma"]] call _fnc_saveToTemplate;			//this line determines medical vehicles -- Array, can contain multiple assets
["vehiclesAPCs", ["OPTRE_M12G1_LRV_CMA", "mti_factions_ION_ION_Warthog_TD", "OPTRE_M493_AIE_CMA", "OPTRE_M494_CMA"]] call _fnc_saveToTemplate; 				//this line determines APCs -- Example: ["vehiclesAPCs", ["B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_CRV_F"]] -- Array, can contain multiple assets
["vehiclesTanks", ["mti_factions_ION_ION_AAT", "mti_factions_ION_ION_AAT_Red", "mti_factions_ION_ION_AAT_Black"]] call _fnc_saveToTemplate; 			//this line determines tanks -- Example: ["vehiclesTanks", ["B_MBT_01_cannon_F", "B_MBT_01_TUSK_F"]] -- Array, can contain multiple assets
["vehiclesAA", ["OPTRE_M12R_AA_CMA"]] call _fnc_saveToTemplate; 				//this line determines AA vehicles -- Example: ["vehiclesAA", ["B_APC_Tracked_01_AA_F"]] -- Array, can contain multiple assets
["vehiclesLightAPCs", ["mti_factions_old_republic_WallabeyArmedHMG"]] call _fnc_saveToTemplate;			//this line determines light APCs
["vehiclesIFVs", ["OPTRE_M494_CMA"]] call _fnc_saveToTemplate;				//this line determines IFVs

["vehiclesTransportBoats", ["optre_catfish_unarmed_f"]] call _fnc_saveToTemplate; 	//this line determines transport boats -- Example: ["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesGunBoats", ["optre_catfish_aa_f", "optre_catfish_atgm_f", "optre_catfish_gauss_f", "optre_catfish_mg_f"]] call _fnc_saveToTemplate; 			//this line determines gun boats -- Example: ["vehiclesGunBoats", ["B_Boat_Armed_01_minigun_F"]] -- Array, can contain multiple assets
["vehiclesAmphibious", []] call _fnc_saveToTemplate; 		//this line determines amphibious vehicles  -- Example: ["vehiclesAmphibious", ["B_APC_Wheeled_01_cannon_F"]] -- Array, can contain multiple assets

["vehiclesPlanesCAS", ["mti_factions_ION_vulture_cas", "mti_factions_ION_ion_vulture"]] call _fnc_saveToTemplate; 		//this line determines CAS planes -- Example: ["vehiclesPlanesCAS", ["B_Plane_CAS_01_dynamicLoadout_F"]] -- Array, can contain multiple assets
["vehiclesPlanesAA", ["mti_factions_ION_vulture_aa", "mti_factions_ION_ion_vulture"]] call _fnc_saveToTemplate; 			//this line determines air superiority planes -- Example: ["vehiclesPlanesAA", ["B_Plane_Fighter_01_F"]] -- Array, can contain multiple assets
["vehiclesPlanesTransport", ["B_T_VTOL_01_infantry_F"]] call _fnc_saveToTemplate; 	//this line determines transport planes -- Example: ["vehiclesPlanesTransport", ["B_T_VTOL_01_infantry_F"]] -- Array, can contain multiple assets

["vehiclesHelisLight", ["mti_factions_ION_ion_pelican", "OPTRE_CMA_falcon_armed_S"]] call _fnc_saveToTemplate; 		//this line determines light helis -- Example: ["vehiclesHelisLight", ["B_Heli_Light_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisTransport", ["mti_factions_ION_ion_pelican", "mti_factions_ION_ion_pelican_armed"]] call _fnc_saveToTemplate; 	//this line determines transport helis -- Example: ["vehiclesHelisTransport", ["B_Heli_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisLightAttack", ["mti_factions_ION_ion_pelican_armed", "OPTRE_CMA_falcon_S"]] call _fnc_saveToTemplate;		// this line determines light attack helicopters
["vehiclesHelisAttack", ["mti_factions_ION_ion_pelican_armed"]] call _fnc_saveToTemplate; 		//this line determines attack helis -- Example: ["vehiclesHelisAttack", ["B_Heli_Attack_01_F"]] -- Array, can contain multiple assets

["vehiclesArtillery", ["OPTRE_m1015_mule_mlr_cma", "OPTRE_M875_SPH_CMA"]] call _fnc_saveToTemplate;		//this line determines SPAs
["magazines", createHashMapFromArray [
    ["OPTRE_m1015_mule_mlr_cma", ["12Rnd_230mm_rockets"]],
    ["OPTRE_M875_SPH_CMA", ["32Rnd_155mm_Mo_shells"]]
]] call _fnc_saveToTemplate;			//this line determines ammo to be used with specified SPA, hashMap makes sure that SPA gets proper ammo

["uavsAttack", ["OPTRE_Wombat_B_CMA", "OPTRE_Wombat_B_CMA"]] call _fnc_saveToTemplate; 				//this line determines attack UAVs -- Example: ["uavsAttack", ["B_UAV_02_CAS_F"]] -- Array, can contain multiple assets
["uavsPortable", ["3AS_H3NR1_Drone_Scout_Imperial"]] call _fnc_saveToTemplate; 				//this line determines portable UAVs -- Example: ["uavsPortable", ["B_UAV_01_F"]] -- Array, can contain multiple assets

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", ["OPTRE_M813_TT_CMA", "mti_factions_ION_ION_AAT"]] call _fnc_saveToTemplate; //this line determines lightly armed militia vehicles -- Example: ["vehiclesMilitiaLightArmed", ["B_G_Offroad_01_armed_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaTrucks", ["OPTRE_m1015_mule_cma"]] call _fnc_saveToTemplate; 	//this line determines militia trucks (unarmed) -- Example: ["vehiclesMilitiaTrucks", ["B_G_Van_01_transport_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaCars", ["mti_factions_rebels_Jeep", "mti_factions_ION_ION_AAT"]] call _fnc_saveToTemplate; 		//this line determines militia cars (unarmed) -- Example: ["vehiclesMilitiaCars", ["B_G_Offroad_01_F"]] -- Array, can contain multiple assets

private _militiaAPCs = if (_hasTanks) then {["I_LT_01_cannon_F"]} else {[]};		//this line adds dlc APC to an array if dlc is loaded
["vehiclesMilitiaAPCs", _militiaAPCs] call _fnc_saveToTemplate;						//this line determines militia APCs

["vehiclesPolice", ["OPTRE_M813_TT_Police"]] call _fnc_saveToTemplate; 			//this line determines police cars -- Example: ["vehiclesPolice", ["B_GEN_Offroad_01_gen_F"]] -- Array, can contain multiple assets

["staticMGs", ["mti_factions_cis_Eweb_Armoured", "mti_factions_cis_EWeb_Unarmoured", "mti_factions_cis_J10s"]] call _fnc_saveToTemplate; 					//this line determines static MGs -- Example: ["staticMG", ["B_HMG_01_high_F"]] -- Array, can contain multiple assets
["staticAT", ["mti_factions_ION_ATCannon", "mti_factions_cis_ParticleCannon"]] call _fnc_saveToTemplate; 					//this line determinesstatic ATs -- Example: ["staticAT", ["B_static_AT_F"]] -- Array, can contain multiple assets
["staticAA", ["OPTRE_Static_AA"]] call _fnc_saveToTemplate; 					//this line determines static AAs -- Example: ["staticAA", ["B_static_AA_F"]] -- Array, can contain multiple assets
["staticMortars", ["mti_factions_cis_mortar"]] call _fnc_saveToTemplate; 				//this line determines static mortars -- Example: ["staticMortars", ["B_Mortar_01_F"]] -- Array, can contain multiple assets
["staticHowitzers", []] call _fnc_saveToTemplate;							//this line determines static howitzers. Basically it's just a stronger mortar, use same syntax as above.

["mortarMagazineHE", "MTI_Red_HE_Mag"] call _fnc_saveToTemplate; 			//this line determines available HE-shells for the static mortars - !needs to be compatible with the mortar! -- Example: ["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] - ENTER ONLY ONE OPTION
["mortarMagazineSmoke", "3AS_8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate; 		//this line determines smoke-shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] - ENTER ONLY ONE OPTION
["mortarMagazineFlare", "3AS_8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;		//this line determines flare shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Flare_white"] - ENTER ONLY ONE OPTION

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
    "Head_SFA_Cathar_03", "WBK_ZombieFace_5"
]] call _fnc_saveToTemplate;
["voices", ["Male01FRE"]] call _fnc_saveToTemplate;

["insignia", ["OPTRE_Insignia_emblems_thehand", "", ""]] call _fnc_saveToTemplate;
["milInsignia", ["OPTRE_Insignia_emblems_thehand", "", ""]] call _fnc_saveToTemplate;

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
["MTI_RPS6_D_Loaded", "", "acc_pointer_IR", "", [], [], ""],
["MTI_RPS6", "", "acc_pointer_IR", "", ["MTI_RPS6_mag_AT", "MTI_RPS6_mag_HE"], [], ""]
]];
_loadoutData set ["ATLaunchers", ["WM_Launch_HH12", "MTI_Z6"]];
_loadoutData set ["missileATLaunchers", [
["MTI_RPS6_HP", "", "acc_pointer_IR", "", ["MTI_RPS6_HP_mag_AT"], [], ""]
]];
_loadoutData set ["AALaunchers", [
["3AS_PLX1_AA", "", "acc_pointer_IR", "", ["3AS_JLTS_MK39_AA"], [], ""]
]];
_loadoutData set ["sidearms", ["MTI_RSKF44"]];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]]; 					//this line determines the AT mines which can be carried by units -- Example: ["ATMine_Range_Mag"] -- Array, can contain multiple assets
_loadoutData set ["APMines", ["APERSMine_Range_Mag"]]; 					//this line determines the APERS mines which can be carried by units -- Example: ["APERSMine_Range_Mag"] -- Array, can contain multiple assets
_loadoutData set ["lightExplosives", ["DemoCharge_Remote_Mag"]]; 			//this line determines light explosives -- Example: ["DemoCharge_Remote_Mag"] -- Array, can contain multiple assets
_loadoutData set ["heavyExplosives", ["SatchelCharge_Remote_Mag"]]; 			//this line determines heavy explosives -- Example: ["SatchelCharge_Remote_Mag"] -- Array, can contain multiple assets

_loadoutData set ["antiInfantryGrenades", ["MTI_ThermalDetonator"]]; 		//this line determines anti infantry grenades (frag and such) -- Example: ["HandGrenade", "MiniGrenade"] -- Array, can contain multiple assets
_loadoutData set ["antiTankGrenades", ["MTI_BaradiumCore"]]; 			//this line determines anti tank grenades. Leave empty when not available. -- Array, can contain multiple assets
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];

//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];				//this line determines map
_loadoutData set ["watches", ["ItemWatch"]];		//this line determines watch
_loadoutData set ["compasses", ["ItemCompass"]];	//this line determines compass
_loadoutData set ["radios", ["JLTS_clone_comlink"]];			//this line determines radio
_loadoutData set ["gpses", ["ItemGPS"]];			//this line determines GPS
_loadoutData set ["NVGs", ["mti_armoury_commando_nvg_chip"]];						//this line determines NVGs -- Array, can contain multiple assets
_loadoutData set ["binoculars", ["ace_dragon_sight"]];		//this line determines the binoculars
_loadoutData set ["rangefinders", ["ACE_MX2A"]];

_loadoutData set ["traitorUniforms", ["mti_armoury_arc_uniform_alpha_Bezzy"]];		//this line determines traitor uniforms for traitor mission
_loadoutData set ["traitorVests", ["mti_armoury_arc_vest_alpha_Bezzy"]];			//this line determines traitor vesets for traitor mission
_loadoutData set ["traitorHats", ["mti_armoury_arc_helmet_Alpha_Bezzy"]];			//this line determines traitor headgear for traitor missions

_loadoutData set ["officerUniforms", ["Merc_Uniform_V2_Sewi"]];		//this line determines officer uniforms for assassination mission
_loadoutData set ["officerVests", ["JLTS_CloneVestHolster"]];			//this line determines officer vesets for assassination mission
_loadoutData set ["officerHats", ["mti_factions_ION_helmet_white_base"]];	//this line determines officer headgear for assassination missions

_loadoutData set ["uniforms", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slUniforms", []];
_loadoutData set ["vests", []];						//don't fill this line - this is only to set the variable
_loadoutData set ["Hvests", []];
_loadoutData set ["sniVests", ["V_TKEWork_belt"]];
_loadoutData set ["backpacks", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["longRangeRadios", ["mti_factions_mando_backpack_modular_pack_lr"]];
_loadoutData set ["atBackpacks", ["TKE_EVAPackKMC"]];
_loadoutData set ["helmets", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slHat", ["mti_factions_ION_helmet_elite_base"]];
_loadoutData set ["sniHats", ["TKE_MercHelmClosedKMC", "TKE_MercHelmNVG2KMC"]];

_loadoutData set ["glasses", ["G_Balaclava_TI_blk_F", "LST_Jedi_Mask_Kella", "G_Balaclava_Skull1"]];	//cosmetics
_loadoutData set ["goggles", ["Shadow_mask", "G_Balaclava_TI_G_blk_F"]];		//cosmetics

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
    _slItems append ["ACE_microDAGR", "ACE_DAGR", "MTI_PBA", "MTI_Medisensor", "MTI_medical_stretcher_folded", "MTI_catTab_tablet"];
    _eeItems append ["MTI_Detector", "ACE_DefusalKit", "JLTS_riot_shield_item", "ACE_Clacker", "MTI_BactaPatch"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500", "mti_tech_techpad", "mti_drones_mse6_packed", "JLTS_MSE6_toolkit", "JLTS_MSE6_manual", "MTI_catTab_phone"];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", ["MTI_catTab_phone", "ACE_EntrenchingTool"]];
_loadoutData set ["items_medic_extras", ["MTI_BactaPatch", "MTI_BactaSpray", "ACE_bloodIV", "MTI_PBA", "ACE_surgicalKit", "ACE_personalAidKit"]];
_loadoutData set ["items_grenadier_extras", ["MTI_SatchelCharge_Mag", "ls_mag_caltrops_dispenser", "ClaymoreDirectionalMine_Remote_Mag"]];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", ["ACE_DefusalKit"]];
_loadoutData set ["items_at_extras", ["ToolKit", "OPTRE_AU44_122mm_Throwable"]];
_loadoutData set ["items_aa_extras", ["MTI_MM9Rocket_HE"]];
_loadoutData set ["items_machineGunner_extras", ["ShieldGrenade_Mag"]];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", ["3AS_SonicDet"]];
_loadoutData set ["items_crew_extras", ["ToolKit"]];
_loadoutData set ["items_unarmed_extras", []];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_sfLoadoutData set ["uniforms", ["TKE_Rogue_UniformNCKMC_U_B"]];
_sfLoadoutData set ["vests", ["TKE_KMCArmour1Medium"]];
_sfLoadoutData set ["Hvests", ["TKE_KMCArmour1"]];
_sfLoadoutData set ["backpacks", ["mti_armoury_arc_backpack_base", "mti_factions_bns_Medic_BP", "mti_armoury_commando_backpack_Night", "mti_armoury_fieldsupport_backpack_fsb_trooper"]];
_sfLoadoutData set ["helmets", ["TKE_KMCHelm", "TKE_KMCHelmTeeth"]];
_sfLoadoutData set ["binoculars", ["Laserdesignator_03"]];

_sfLoadoutData set ["slRifles", [
["MTI_DC19SC", "muzzle_snds_M", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_DC19SC", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", [], [], ""],
["MTI_DC19LE", "muzzle_snds_M", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["mti_factions_Imperial_DLT19", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", [], [], ""]
]];
_sfLoadoutData set ["rifles", [
["mti_factions_ION_ION_Elite_Rifle", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_Imperial_DLT19", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_lush_F", [], [], ""]
]];
_sfLoadoutData set ["carbines", [
["mti_factions_Imperial_DLT19", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_Imperial_DLT19", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_lush_F", [], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
["3AS_DC15C_GL", "", "acc_flashlight", "3AS_optic_reflex_DC15C", ["3AS_40Rnd_EM40_Mag"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];

if (_hasWs) then {
    _sfLoadoutData set ["designatedGrenadeLaunchers", [
        ["glaunch_GLX_lxWS", "", "acc_pointer_IR", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Pellet_Grenade_shell_lxWS", "1Rnd_Smoke_Grenade_shell", "3Rnd_HE_Grenade_shell"], ["1Rnd_Smoke_Grenade_shell"], ""],
        ["glaunch_GLX_camo_lxWS", "", "acc_pointer_IR", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Pellet_Grenade_shell_lxWS", "1Rnd_Smoke_Grenade_shell", "3Rnd_HE_Grenade_shell"], [], ""]
    ]];
};

_sfLoadoutData set ["SMGs", [
["mti_factions_ION_ION_Rifle", "muzzle_snds_acp", "", "optic_Holosight", [], [], ""],
["mti_factions_ION_ION_Rifle", "muzzle_snds_acp", "", "optic_Aco_smg", [], [], ""],
["TKE_UCNLasRifle", "muzzle_snds_570", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_Imperial_DLT19", "muzzle_snds_570", "acc_pointer_IR", "optic_Aco_smg", [], [], ""],
["mti_factions_ION_ION_Elite_Rifle", "muzzle_snds_L", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_ION_ION_Elite_Rifle", "muzzle_snds_L", "acc_pointer_IR", "optic_Aco_smg", [], [], ""]
]];

private _mgs = [
    ["MTI_T21", "muzzle_snds_H", "acc_pointer_IR", "optic_NVS", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
    ["MTI_T21", "muzzle_snds_H", "acc_pointer_IR", "optic_MRCO", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
    ["MTI_T21", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
    ["MTI_T21", "muzzle_snds_H", "acc_pointer_IR", "optic_Hamr", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"]
];

if (_hasWs) then {
    _mgs append [
        ["LMG_S77_Compact_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_Holosight_blk_F", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_MRCO", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_Hamr", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""]
    ];
};
_sfLoadoutData set ["machineGuns", _mgs];

_sfLoadoutData set ["marksmanRifles", [
    ["mti_factions_ION_ION_E_Sniper", "muzzle_snds_B", "acc_pointer_IR", "optic_SOS", [], [], "bipod_01_F_blk"],
    ["mti_factions_ION_ION_E_Sniper", "muzzle_snds_B", "acc_pointer_IR", "optic_NVS", [], [], "bipod_01_F_blk"],
    ["mti_factions_ION_ION_E_Sniper", "muzzle_snds_B", "acc_pointer_IR", "optic_Hamr", [], [], "bipod_01_F_blk"]
]];
_sfLoadoutData set ["sniperRifles", [
["mti_factions_old_republic_M99A2S3_RailGun", "", "", "optic_SOS", [], [], ""],
["MTI_NT242p", "", "", "optic_LRPS", [], [], ""]
]];
_sfLoadoutData set ["sidearms", [
["MTI_DC19SA", "muzzle_snds_acp", "acc_flashlight_pistol", "", [], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData set ["uniforms", ["mti_factions_ION_uniform_elite_base"]];
_eliteLoadoutData set ["slUniforms", ["SFA_Republic_Armor_Med"]];
_eliteLoadoutData set ["vests", ["TKE_MDTFArmour2Red", "TKE_MDTFArmour1Red", "TKE_MDTFArmour3_2Red", "TKE_MDTFArmour2_1Grey"]];
_eliteLoadoutData set ["Hvests", ["TKE_KMCArmour1Light"]];
_eliteLoadoutData set ["backpacks", ["mti_factions_ION_backpack_elite_base"]];
_eliteLoadoutData set ["helmets", ["mti_factions_ION_helmet_elite_base"]];
_eliteLoadoutData set ["binoculars", ["Laserdesignator_03"]];

_eliteLoadoutData set ["slRifles", [
["MTI_DC19SC", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_DC19LE", "", "acc_pointer_IR", "optic_Hamr", [], [], ""],
["MTI_BTX", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["mti_factions_ION_ION_Rifle", "", "acc_pointer_IR", "optic_Hamr", [], [], ""]
]];
_eliteLoadoutData set ["rifles", [
["mti_factions_ION_ION_Rifle", "", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["MTI_DC17M", "", "acc_pointer_IR", "optic_Holosight_lush_F", [], [], ""]
]];
_eliteLoadoutData set ["carbines", [
["mti_factions_ION_ION_Elite_Rifle", "", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_ION_ION_Elite_Rifle", "", "acc_pointer_IR", "optic_Holosight_lush_F", [], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["MTI_MPL", "", "acc_flashlight", "3AS_optic_reflex_DC15C", [], ["MTI_40mm_mag_cluster", "MTI_40mm_mag_cluster", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_eliteLoadoutData set ["SMGs", [
["mti_factions_ION_ION_Rifle", "", "", "optic_Holosight", [], [], ""],
["mti_factions_Imperial_DLT19", "", "", "optic_Aco_smg", [], [], ""],
["mti_factions_ION_ION_Elite_Rifle", "", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["OPTRE_Bulldog_Riot_Shield_Urban", "", "acc_pointer_IR", "optic_Aco_smg", [], [], ""],
["MTI_Factions_SpaceDMR1", "", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["OPTRE_M7_Riot_Shield_Urban", "", "acc_pointer_IR", "optic_Aco_smg", [], [], ""]
]];

if (_hasWs) then {
    _eliteLoadoutData set ["machineGuns", [
        ["LMG_S77_lxWS", "", "acc_pointer_IR", "optic_Hamr", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_lxWS", "", "acc_pointer_IR", "optic_Hamr", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_lxWS", "", "acc_pointer_IR", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["MTI_T21", "", "acc_pointer_IR", "optic_Hamr", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
        ["MTI_T21", "", "acc_pointer_IR", "optic_Hamr", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
        ["MTI_T21", "", "acc_pointer_IR", "optic_NVS", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"]
    ]];
} else {
    _eliteLoadoutData set ["machineGuns", [
        ["MTI_T21", "", "acc_pointer_IR", "optic_Hamr", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
        ["MTI_E403", "", "acc_pointer_IR", "optic_Hamr", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
        ["MTI_T21", "", "acc_pointer_IR", "optic_NVS", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"]
    ]];
};

private _marksmanRifles = [
    ["MTI_NT242p", "", "acc_pointer_IR", "optic_tws", [], [], "bipod_01_F_blk"],
    ["MTI_Causality", "", "acc_pointer_IR", "optic_NVS", [], [], "bipod_01_F_blk"],
    ["mti_factions_ION_ION_E_Sniper", "", "acc_pointer_IR", "optic_SOS", [], [], "bipod_01_F_blk"],
    ["OPTRE_SRS99D", "", "acc_pointer_IR", "optic_Hamr", [], [], "bipod_01_F_blk"]
];

if (_hasMarksman) then {
    _marksmanRifles append [
        ["srifle_DMR_06_camo_F", "", "", "optic_SOS", [], [], "bipod_03_F_oli"],
        ["srifle_DMR_06_camo_F", "", "", "optic_Hamr", [], [], "bipod_03_F_oli"],
        ["srifle_DMR_06_camo_F", "", "", "optic_NVS", [], [], "bipod_03_F_oli"]
    ];
};
_eliteLoadoutData set ["marksmanRifles", _marksmanRifles];

_eliteLoadoutData set ["sniperRifles", [
["MTI_DC19X", "", "", "optic_SOS", [], [], ""],
["mti_factions_old_republic_M99A2S3_RailGun", "", "", "optic_LRPS", [], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
["WM_EC17", "", "acc_flashlight_pistol", "", [], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["uniforms", ["mti_factions_ION_uniform_ion_base"]];
_militaryLoadoutData set ["slUniforms", ["mti_factions_ION_uniform_elite_base"]];
_militaryLoadoutData set ["vests", ["TKE_KMCArmour1Light", "mti_factions_ION_vest_ion_heavy"]];
_militaryLoadoutData set ["Hvests", ["TKE_KMCArmour1", "TKE_MDTFArmour2_1Snow"]];
_militaryLoadoutData set ["backpacks", ["mti_factions_ION_backpack_ion_base"]];
_militaryLoadoutData set ["helmets", ["mti_factions_ION_helmet_ion_base", "OPTRE_ONI_Researcher_Headgear"]];
_militaryLoadoutData set ["binoculars", ["Laserdesignator_03"]];

_militaryLoadoutData set ["slRifles", [
["mti_factions_ION_ION_MG", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["mti_factions_ION_ION_Elite_Rifle", "", "acc_pointer_IR", "MTI_HMRCO_blu", [], [], ""],
["3AS_Arkanian_F", "", "acc_pointer_IR", "3AS_Optic_Arkanian_2_F", [], [], ""],
["mti_factions_old_republic_BoltBlaster_Shotgun", "", "acc_pointer_IR", "OPTRE_M393_EOTECH", [], [], ""]
]];
_militaryLoadoutData set ["rifles", [
["mti_factions_ION_ION_Rifle", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "MTI_HRCO_red", [], [], ""],
["MTI_DLT19X", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["MTI_ZH73", "", "", "optic_Holosight", [], [], ""],
["TKE_UCNLMG", "", "", "optic_Aco_smg", [], [], ""],
["mti_factions_ION_ION_Elite_Rifle", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["TKE_UCNMMGGreen", "", "acc_flashlight", "optic_Aco_smg", [], [], ""],
["OPTRE_M6C_Riot_Shield_Snow", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_ION_ION_Elite_Rifle", "", "acc_flashlight", "optic_Holosight_lush_F", [], [], ""],
["TKE_KMCSMG", "muzzle_snds_H", "OPTRE_M7_Laser", "OPTRE_M6G_Scope", ["TKE_45rnd_pdw_mag"], [], ""],
["TKE_UCNBPRifle", "muzzle_snds_H", "OPTRE_M12_Laser", "TKE_ThermScope", ["TKE_30rnd_575x45_magTG"], [], ""],
["TKE_MDStdRifleStripped", "muzzle_snds_H", "acc_flashlight", "TKE_ReflexSight", ["TKE_MD30rnd_575x45_magTG"], [], ""],
["OPTRE_M90A", "", "acc_flashlight", "TKE_ReflexSight", ["OPTRE_6Rnd_8Gauge_Pellets"], [], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_HMRCO_blu", ["MTI_DC15S_mag"], [], ""],
["MTI_Arkanian", "", "acc_flashlight", "3AS_Optic_Arkanian_2_F", ["MTI_Arkanian_Mag"], [], ""],
["MTI_Arkanian", "", "acc_flashlight", "MTI_HRCO_grn", ["MTI_Arkanian_Mag"], [], ""],
["TKE_MDRifle", "muzzle_snds_H", "acc_flashlight", "TKE_ReflexSight", ["TKE_35rnd_62x35_magTYMD"], [], ""],
["TKE_UCNMMGBeige", "ACE_muzzle_mzls_H", "acc_flashlight", "TKE_MRCOSight", ["TKE_100rnd_ucnmmg_mag"], [], ""],
["TKE_UCNLMG", "", "acc_flashlight", "OPTRE_M393_ACOG", ["TKE_150rnd_62x35_magUCN"], [], ""],
["TKE_UCNRifle3", "", "acc_flashlight", "OPTRE_M7_Sight", ["TKE_35rnd_62x35_mag"], [], ""],
["mti_factions_ION_ION_Heavy_MG", "", "acc_flashlight", "SFA_B3K2_scope", ["mti_factions_ION_MG_Lime_Mag"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
["mti_factions_ION_ION_Rifle", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["MTI_ZH73", "", "", "optic_Holosight", [], [], ""],
["mti_factions_ION_ION_Rifle", "", "", "optic_Aco_smg", [], [], ""],
["mti_factions_ION_ION_Elite_Rifle", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_ION_ION_Rifle", "", "acc_flashlight", "optic_Aco_smg", [], [], ""],
["OPTRE_M6C_Riot_Shield_Snow", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["MTI_EE2", "", "acc_flashlight_smg_01", "MTI_EE2_scope", [], [], ""],
["MTI_ZH73", "", "acc_flashlight_smg_01", "optic_Aco_smg", [], [], ""],
["MTI_DW32S", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["MTI_DP23", "", "acc_flashlight", "MTI_HMRCO_blu", [], [], ""],
["MTI_ACPR", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["3AS_ScatterGun_F", "", "acc_flashlight", "optic_Aco_smg", [], [], ""],
["mti_factions_Imperial_DLT19", "", "acc_flashlight", "optic_Holosight_lush_F", [], [], ""],
["mti_factions_ION_ION_Rifle", "muzzle_snds_acp", "", "optic_Holosight", [], [], ""],
["mti_factions_ION_ION_Rifle", "muzzle_snds_acp", "", "optic_Aco_smg", [], [], ""],
["TKE_UCNLasRifle", "muzzle_snds_570", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_Imperial_DLT19", "muzzle_snds_570", "acc_pointer_IR", "optic_Aco_smg", [], [], ""],
["mti_factions_ION_ION_Elite_Rifle", "muzzle_snds_L", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_ION_ION_Elite_Rifle", "muzzle_snds_L", "acc_pointer_IR", "optic_Aco_smg", [], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["3AS_DC15C_GL", "", "acc_flashlight", "3AS_optic_reflex_DC15C", ["3AS_40Rnd_EM40_Mag"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["SMGs", [
["MTI_ZH73", "", "", "optic_Holosight", [], [], ""],
["mti_factions_ION_ION_Rifle", "", "", "optic_Aco_smg", [], [], ""],
["mti_factions_ION_ION_Elite_Rifle", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["MTI_Factions_SpaceAK1", "", "acc_flashlight", "optic_Aco_smg", [], [], ""],
["SFA_E1_Reforged", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["MTI_ZH73", "", "", "optic_Holosight", [], [], ""],
["WM_E11D", "", "", "optic_Aco_smg", [], [], ""],
["mti_factions_ION_ION_Elite_Rifle", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["SFA_Baragwin", "", "acc_flashlight", "optic_Aco_smg", [], [], ""],
["OPTRE_M6C_Riot_Shield_Snow", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["OPTRE_M7_Riot_Shield_Snow", "", "acc_flashlight", "optic_Aco_smg", [], [], ""]
]];

private _mgs = [
    ["mti_factions_ION_ION_Elite_Rifle", "", "", "optic_NVS", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
    ["MTI_Z6_Small", "", "acc_flashlight", "optic_MRCO", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
    ["MTI_Causality", "", "acc_flashlight", "optic_Holosight_blk_F", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
    ["MTI_Factions_SpaceLMG1", "", "acc_flashlight", "optic_Hamr", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"]
];
if (_hasWs) then {
    _mgs append [
        ["LMG_S77_lxWS", "", "", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_lxWS", "", "acc_flashlight", "optic_MRCO", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_lxWS", "", "acc_flashlight", "optic_Hamr", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""]
    ];
};
_militaryLoadoutData set ["machineGuns", _mgs];

private _marksmanRifles = [
    ["mti_factions_ION_ION_E_Sniper", "", "acc_flashlight", "optic_NVS", [], [], "bipod_01_F_blk"],
    ["MTI_Verpine", "", "acc_flashlight", "MTI_Verpine_scope", [], [], "bipod_01_F_blk"],
    ["OPTRE_FC_Railgun", "", "acc_flashlight", "optic_Hamr", [], [], "bipod_01_F_blk"]
];
if (_hasMarksman) then {
    _marksmanRifles append [
        ["srifle_DMR_06_camo_F", "", "", "optic_NVS", [], [], "bipod_03_F_oli"],
        ["srifle_DMR_06_camo_F", "", "", "optic_SOS", [], [], "bipod_03_F_oli"],
        ["srifle_DMR_06_olive_F", "", "", "optic_Hamr", [], [], "bipod_03_F_oli"]
    ];
};
_militaryLoadoutData set ["marksmanRifles", _marksmanRifles];

_militaryLoadoutData set ["sniperRifles", [
["mti_factions_ION_ION_E_Sniper", "", "", "optic_SOS", [], [], ""],
["mti_factions_old_republic_M99A2S3_RailGun", "", "", "optic_LRPS", [], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
["SFA_B3K2_p", "", "JLTS_DC17SA_flashlight", "", [], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["U_UCFA_Uniform2", "U_MDMC_Uniform1"]];
_policeLoadoutData set ["vests", ["TKE_FCFWebbing1", "TKE_FCFWebbing2", "TKE_FCFWebbing2_1", "TKE_FCFWebbing3"]];
private _helmets = ["TKE_FCrewHelm_BASE"];
if (_hasLawsOfWar) then {
    _helmets pushBack "H_PASGT_basic_blue_F";
};
_policeLoadoutData set ["helmets", _helmets];

_policeLoadoutData set ["SMGs", [
["MTI_EE2", "", "acc_flashlight_smg_01", "MTI_EE2_scope", [], [], ""],
["MTI_ZH73", "", "acc_flashlight_smg_01", "optic_Aco_smg", [], [], ""],
["MTI_DW32S", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["MTI_DP23", "", "acc_flashlight", "MTI_HMRCO_blu", [], [], ""],
["MTI_ACPR", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["3AS_ScatterGun_F", "", "acc_flashlight", "optic_Aco_smg", [], [], ""],
["mti_factions_ION_ION_Rifle", "muzzle_snds_acp", "", "optic_Holosight", [], [], ""],
["mti_factions_ION_ION_Rifle", "muzzle_snds_acp", "", "optic_Aco_smg", [], [], ""],
["TKE_UCNLasRifle", "muzzle_snds_570", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_Imperial_DLT19", "muzzle_snds_570", "acc_pointer_IR", "optic_Aco_smg", [], [], ""],
["mti_factions_ION_ION_Elite_Rifle", "muzzle_snds_L", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_ION_ION_Elite_Rifle", "muzzle_snds_L", "acc_pointer_IR", "optic_Aco_smg", [], [], ""]
]];
_policeLoadoutData set ["sidearms", ["MTI_RSKF44"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["U_MTFwhite_Sweater", "TKE_Rogue_UniformNCKMC_U_B", "TKE_Rogue_UniformNCSnow_U_B", "U_TKE_Uniform_Rolled_UCNSnow", "U_UCFNwhite_Sweater", "U_UCFN_Sweater", "U_UCFN_Uniform2", "U_UCFN_Uniform1"]];
_militiaLoadoutData set ["vests", ["V_TKEWork_UCFNwhite_F", "TKE_UCMCArmour1", "V_TKEWork_MTFwhite_F", "TKE_MDTFArmour1Snow"]];
_militiaLoadoutData set ["Hvests", ["TKE_MDTFArmour3_1Snow"]];
_militiaLoadoutData set ["backpacks", ["mti_factions_ION_backpack_ion_base", "SFA_Republic_backpack_LR", "SFA_Combat_eng_backpack"]];
_militiaLoadoutData set ["helmets", ["TKE_FCrewHelmWhite", "TKE_FCrewHelmMDWhite", "TKE_MercHelmNVG1KMC", "TKE_MercHelmNVG2KMC"]];

if (_hasLawsOfWar) then {
    _militiaLoadoutData set ["helmets", ["H_HelmetIA", "H_PASGT_basic_olive_F", "H_Booniehat_dgtl", "H_Cap_blk_Raven"]];
} else {
    _militiaLoadoutData set ["helmets", ["TKE_FCrewHelmWhite", "TKE_FCrewHelmMDWhite", "TKE_MercHelmNVG1KMC", "TKE_MercHelmNVG2KMC"]];
};

_militiaLoadoutData set ["slRifles", [
["mti_factions_ION_ION_Rifle", "", "acc_flashlight", "SFA_B3K2_scope", ["mti_factions_ION_Rifle_Lime_Mag"], [], ""],
["mti_factions_ION_ION_Elite_Rifle", "", "acc_flashlight", "MTI_HMRCO_blu", ["mti_factions_ION_Rifle_Lime_Mag"], [], ""]
]];
_militiaLoadoutData set ["rifles", [
["mti_factions_ION_ION_Rifle", "", "acc_flashlight", "SFA_B3K2_scope", ["mti_factions_ION_Rifle_Lime_Mag"], [], ""],
["mti_factions_ION_ION_MG", "", "acc_flashlight", "SFA_B3K2_scope", ["mti_factions_ION_MG_Lime_Mag"], [], ""],
["TKE_KMCSMG", "muzzle_snds_H", "OPTRE_M7_Laser", "OPTRE_M6G_Scope", ["TKE_45rnd_pdw_mag"], [], ""],
["TKE_UCNBPRifle", "muzzle_snds_H", "OPTRE_M12_Laser", "TKE_ThermScope", ["TKE_30rnd_575x45_magTG"], [], ""],
["TKE_MDStdRifleStripped", "muzzle_snds_H", "acc_flashlight", "TKE_ReflexSight", ["TKE_MD30rnd_575x45_magTG"], [], ""],
["OPTRE_M90A", "", "acc_flashlight", "TKE_ReflexSight", ["OPTRE_6Rnd_8Gauge_Pellets"], [], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_HMRCO_blu", ["MTI_DC15S_mag"], [], ""],
["MTI_Arkanian", "", "acc_flashlight", "3AS_Optic_Arkanian_2_F", ["MTI_Arkanian_Mag"], [], ""],
["MTI_Arkanian", "", "acc_flashlight", "MTI_HRCO_grn", ["MTI_Arkanian_Mag"], [], ""],
["mti_factions_ION_ION_Heavy_MG", "", "acc_flashlight", "SFA_B3K2_scope", ["mti_factions_ION_MG_Lime_Mag"], [], ""],
["mti_factions_ION_ION_Rifle", "", "acc_flashlight", "SFA_B3K2_scope", ["mti_factions_ION_Rifle_Lime_Mag"], [], ""],
["mti_factions_ION_ION_Elite_Rifle", "", "acc_flashlight", "MTI_HMRCO_blu", ["mti_factions_ION_Rifle_Lime_Mag"], [], ""],
["TKE_MDRifle", "muzzle_snds_H", "acc_flashlight", "TKE_ReflexSight", ["TKE_35rnd_62x35_magTYMD"], [], ""],
["TKE_UCNMMGBeige", "ACE_muzzle_mzls_H", "acc_flashlight", "TKE_MRCOSight", ["TKE_100rnd_ucnmmg_mag"], [], ""],
["TKE_UCNLMG", "", "acc_flashlight", "OPTRE_M393_ACOG", ["TKE_150rnd_62x35_magUCN"], [], ""],
["TKE_UCNRifle3", "", "acc_flashlight", "OPTRE_M7_Sight", ["TKE_35rnd_62x35_mag"], [], ""],
["OPTRE_M6DS_Carbine_Foregrip_F", "OPTRE_M6D_Carbine_Suppressor", "OPTRE_M6D_Carbine_Flashlight", "OPTRE_MA5C_SmartLink", ["OPTRE_40Rnd_127x40_Drum_Tracer"], [], ""],
["mti_factions_ION_ION_Rifle", "", "acc_flashlight", "SFA_B3K2_scope", ["mti_factions_ION_Rifle_Lime_Mag"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
["mti_factions_ION_ION_Rifle", "", "acc_flashlight", "SFA_B3K2_scope", ["mti_factions_ION_Rifle_Lime_Mag"], [], ""],
["mti_factions_ION_ION_Rifle", "", "acc_flashlight", "SFA_B3K2_scope", ["mti_factions_ION_Rifle_Lime_Mag"], [], ""],
["MTI_EE2", "", "acc_flashlight_smg_01", "MTI_EE2_scope", [], [], ""],
["MTI_ZH73", "", "acc_flashlight_smg_01", "optic_Aco_smg", [], [], ""],
["MTI_DW32S", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["MTI_DP23", "", "acc_flashlight", "MTI_HMRCO_blu", [], [], ""],
["MTI_ACPR", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["TKE_MDRifle", "muzzle_snds_H", "acc_flashlight", "TKE_ReflexSight", ["TKE_35rnd_62x35_magTYMD"], [], ""],
["TKE_UCNMMGBeige", "ACE_muzzle_mzls_H", "acc_flashlight", "TKE_MRCOSight", ["TKE_100rnd_ucnmmg_mag"], [], ""],
["TKE_UCNLMG", "", "acc_flashlight", "OPTRE_M393_ACOG", ["TKE_150rnd_62x35_magUCN"], [], ""],
["TKE_UCNRifle3", "", "acc_flashlight", "OPTRE_M7_Sight", ["TKE_35rnd_62x35_mag"], [], ""],
["OPTRE_M6DS_Carbine_Foregrip_F", "OPTRE_M6D_Carbine_Suppressor", "OPTRE_M6D_Carbine_Flashlight", "OPTRE_MA5C_SmartLink", ["OPTRE_40Rnd_127x40_Drum_Tracer"], [], ""],
["3AS_ScatterGun_F", "", "acc_flashlight", "optic_Aco_smg", [], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
["MTI_DC15A_Wood_GL", "", "acc_flashlight", "MTI_HMRCO_blu", ["MTI_DC15A_mag"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_militiaLoadoutData set ["SMGs", ["OPTRE_M7", "OPTRE_M6D_Carbine_F", "mti_factions_ION_ION_MG", "mti_factions_ION_ION_Rifle"]];
_militiaLoadoutData set ["machineGuns", [
["MTI_DC15L", "", "acc_flashlight", "MTI_HRCO_grn", ["MTI_DC15L_mag"], [], "3AS_Bipod_DC15L_f"],
["MTI_DLT19X", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["MTI_ZH73", "", "", "optic_Holosight", [], [], ""],
["TKE_UCNLMG", "", "", "optic_Aco_smg", [], [], ""],
["TKE_MDRifle", "muzzle_snds_H", "acc_flashlight", "TKE_ReflexSight", ["TKE_35rnd_62x35_magTYMD"], [], ""],
["TKE_UCNMMGBeige", "ACE_muzzle_mzls_H", "acc_flashlight", "TKE_MRCOSight", ["TKE_100rnd_ucnmmg_mag"], [], ""],
["TKE_UCNLMG", "", "acc_flashlight", "OPTRE_M393_ACOG", ["TKE_150rnd_62x35_magUCN"], [], ""],
["TKE_UCNRifle3", "", "acc_flashlight", "OPTRE_M7_Sight", ["TKE_35rnd_62x35_mag"], [], ""],
["OPTRE_M6DS_Carbine_Foregrip_F", "OPTRE_M6D_Carbine_Suppressor", "OPTRE_M6D_Carbine_Flashlight", "OPTRE_MA5C_SmartLink", ["OPTRE_40Rnd_127x40_Drum_Tracer"], [], ""],
["mti_factions_ION_ION_Elite_Rifle", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["TKE_UCNMMGGreen", "", "acc_flashlight", "optic_Aco_smg", [], [], ""],
["OPTRE_M6C_Riot_Shield_Snow", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_ION_ION_Elite_Rifle", "", "acc_flashlight", "optic_Holosight_lush_F", [], [], ""]
]];

private _marksmanRifles = [["MTI_Valken38X", "", "acc_flashlight", "MTI_HDMS_blu", [], [], ""]];
private _sniperRifles = [["mti_factions_ION_ION_E_Sniper", "", "", "", [], [], ""]];
_militiaLoadoutData set ["marksmanRifles", _marksmanRifles];
_militiaLoadoutData set ["sniperRifles", _sniperRifles];
_militiaLoadoutData set ["sidearms", ["SFA_B3K2_p"]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["mti_factions_ION_uniform_ion_base"]];
_crewLoadoutData set ["vests", ["mti_factions_old_republic_vest_mag_strap"]];
_crewLoadoutData set ["helmets", ["mti_factions_ION_helmet_elite_base"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["mti_factions_ION_uniform_ion_base"]];
_pilotLoadoutData set ["vests", ["mti_factions_old_republic_vest_mag_strap"]];
_pilotLoadoutData set ["helmets", ["mti_factions_ION_helmet_elite_base"]];





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
    [selectRandomWeighted ["helmets", 2, "sniHats", 1]] call _fnc_setHelmet;
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
	["ExplosivesExpert", _explosivesExpertTemplate, [], [_prefix]],
	["Grenadier", _grenadierTemplate, [["baseClass", "Zombie_Special_OPFOR_Leaper_2", true]], [_prefix]],
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
	["ExplosivesExpert", _explosivesExpertTemplate, [], [_prefix]],
	["Grenadier", _grenadierTemplate, [["baseClass", "Zombie_Special_OPFOR_Leaper_1", true]], [_prefix]],
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
	["ExplosivesExpert", _explosivesExpertTemplate, [], [_prefix]],
	["Grenadier", _grenadierTemplate, [["baseClass", "WBK_SpecialZombie_Smasher_3", true]], [_prefix]],
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