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

["name", "SOB"] call _fnc_saveToTemplate; 						//this line determines the faction name -- Example: ["name", "NATO"] - ENTER ONLY ONE OPTION
["spawnMarkerName", format [localize "STR_supportcorridor", "Republic"]] call _fnc_saveToTemplate; 			//this line determines the name tag for the "carrier" on the map -- Example: ["spawnMarkerName", "NATO support corridor"] - ENTER ONLY ONE OPTION. Format and localize function can be used for translation

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", "\z\mti\addons\common\data\SOB_Flag_Grey.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "JLTS_flag_Rep"] call _fnc_saveToTemplate;		//this line determines the flag marker type -- Example: ["flagMarkerType", "flag_NATO"] - ENTER ONLY ONE OPTION

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "I_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_AAF_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["MTI_Barc", "MTI_Barc_Sidecar"]] call _fnc_saveToTemplate; 			//this line determines basic vehicles, the lightest kind available. -- Example: ["vehiclesBasic", ["B_Quadbike_01_F"]] -- Array, can contain multiple assets
["vehiclesLightUnarmed", ["MTI_ISP_Base", "MTI_MUTT_I", "MTI_MUTT_C"]] call _fnc_saveToTemplate; 		//this line determines light and unarmed vehicles. -- Example: ["vehiclesLightUnarmed", ["B_MRAP_01_F"]] -- Array, can contain multiple assets
["vehiclesLightArmed",["MTI_PX10"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["MTI_MUTT_I"]] call _fnc_saveToTemplate; 			//this line determines the trucks -- Example: ["vehiclesTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesCargoTrucks", ["MTI_MUTT_C"]] call _fnc_saveToTemplate; 		//this line determines cargo trucks -- Example: ["vehiclesCargoTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesAmmoTrucks", ["OPTRE_m1015_mule_ammo_cma"]] call _fnc_saveToTemplate; 		//this line determines ammo trucks -- Example: ["vehiclesAmmoTrucks", ["B_Truck_01_ammo_F"]] -- Array, can contain multiple assets
["vehiclesRepairTrucks", ["OPTRE_m1015_mule_repair_cma"]] call _fnc_saveToTemplate; 		//this line determines repair trucks -- Example: ["vehiclesRepairTrucks", ["B_Truck_01_Repair_F"]] -- Array, can contain multiple assets
["vehiclesFuelTrucks", ["OPTRE_m1015_mule_fuel_cma"]] call _fnc_saveToTemplate;		//this line determines fuel trucks -- Array, can contain multiple assets
["vehiclesMedical", ["OPTRE_m1015_mule_medical_cma"]] call _fnc_saveToTemplate;			//this line determines medical vehicles -- Array, can contain multiple assets
["vehiclesAPCs", ["MTI_UTAT", "MTI_Juggernaut"]] call _fnc_saveToTemplate; 				//this line determines APCs -- Example: ["vehiclesAPCs", ["B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_CRV_F"]] -- Array, can contain multiple assets
["vehiclesTanks", ["MTI_TX130", "MTI_TX130_Super", "MTI_TX130_Recon", "MTI_ATTE", "MTI_ATTE_Super"]] call _fnc_saveToTemplate; 			//this line determines tanks -- Example: ["vehiclesTanks", ["B_MBT_01_cannon_F", "B_MBT_01_TUSK_F"]] -- Array, can contain multiple assets
["vehiclesAA", ["MTI_RX200"]] call _fnc_saveToTemplate; 				//this line determines AA vehicles -- Example: ["vehiclesAA", ["B_APC_Tracked_01_AA_F"]] -- Array, can contain multiple assets
["vehiclesLightAPCs", ["mti_factions_imp_IFX", "3AS_UTAT_Imperial"]] call _fnc_saveToTemplate;			//this line determines light APCs
["vehiclesIFVs", ["mti_factions_imp_ATTE"]] call _fnc_saveToTemplate;				//this line determines IFVs

["vehiclesTransportBoats", ["optre_catfish_unarmed_f"]] call _fnc_saveToTemplate; 	//this line determines transport boats -- Example: ["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesGunBoats", ["optre_catfish_aa_f", "optre_catfish_atgm_f", "optre_catfish_gauss_f", "optre_catfish_mg_f"]] call _fnc_saveToTemplate; 			//this line determines gun boats -- Example: ["vehiclesGunBoats", ["B_Boat_Armed_01_minigun_F"]] -- Array, can contain multiple assets
["vehiclesAmphibious", []] call _fnc_saveToTemplate; 		//this line determines amphibious vehicles  -- Example: ["vehiclesAmphibious", ["B_APC_Wheeled_01_cannon_F"]] -- Array, can contain multiple assets

["vehiclesPlanesCAS", ["MTI_BTLB", "MTI_arc_170", "MTI_Z95"]] call _fnc_saveToTemplate; 		//this line determines CAS planes -- Example: ["vehiclesPlanesCAS", ["B_Plane_CAS_01_dynamicLoadout_F"]] -- Array, can contain multiple assets
["vehiclesPlanesAA", ["MTI_Delta7_Base", "MTI_Vwing", "MTI_arc_170_multiSeat"]] call _fnc_saveToTemplate; 			//this line determines air superiority planes -- Example: ["vehiclesPlanesAA", ["B_Plane_Fighter_01_F"]] -- Array, can contain multiple assets
["vehiclesPlanesTransport", ["NCA_vc4Transport"]] call _fnc_saveToTemplate; 	//this line determines transport planes -- Example: ["vehiclesPlanesTransport", ["B_T_VTOL_01_infantry_F"]] -- Array, can contain multiple assets

["vehiclesHelisLight", ["MTI_LAATle_Gunship"]] call _fnc_saveToTemplate; 		//this line determines light helis -- Example: ["vehiclesHelisLight", ["B_Heli_Light_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisTransport", ["MTI_LAATi_Mk2", "MTI_nuclass", "MTI_RhoCLass", "MTI_LAATs"]] call _fnc_saveToTemplate; 	//this line determines transport helis -- Example: ["vehiclesHelisTransport", ["B_Heli_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisLightAttack", ["MTI_LAATi_Mk2"]] call _fnc_saveToTemplate;		// this line determines light attack helicopters
["vehiclesHelisAttack", ["MTI_LAATi_Gonk", "MTI_LAATi_Marine", "MTI_LAATi_Nikki", "MTI_LAATi_Zyys"]] call _fnc_saveToTemplate; 		//this line determines attack helis -- Example: ["vehiclesHelisAttack", ["B_Heli_Attack_01_F"]] -- Array, can contain multiple assets

["vehiclesArtillery", ["OPTRE_m1015_mule_mlr_cma", "mti_factions_imp_AV7"]] call _fnc_saveToTemplate;		//this line determines SPAs
["magazines", createHashMapFromArray [
    ["OPTRE_m1015_mule_mlr_cma", ["12Rnd_230mm_rockets"]],
    ["mti_factions_imp_AV7", ["3AS_32Rnd_300mm_Mo_shells"]]
]] call _fnc_saveToTemplate;			//this line determines ammo to be used with specified SPA, hashMap makes sure that SPA gets proper ammo

["uavsAttack", ["MTI_Sentinel_Drone"]] call _fnc_saveToTemplate; 				//this line determines attack UAVs -- Example: ["uavsAttack", ["B_UAV_02_CAS_F"]] -- Array, can contain multiple assets
["uavsPortable", ["MTI_Prowler_1500", "MTI_Prowler_500"]] call _fnc_saveToTemplate; 				//this line determines portable UAVs -- Example: ["uavsPortable", ["B_UAV_01_F"]] -- Array, can contain multiple assets

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", ["MTI_PX10"]] call _fnc_saveToTemplate; //this line determines lightly armed militia vehicles -- Example: ["vehiclesMilitiaLightArmed", ["B_G_Offroad_01_armed_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaTrucks", ["MTI_MUTT_I"]] call _fnc_saveToTemplate; 	//this line determines militia trucks (unarmed) -- Example: ["vehiclesMilitiaTrucks", ["B_G_Van_01_transport_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaCars", ["MTI_MUTT_I", "MTI_PX10"]] call _fnc_saveToTemplate; 		//this line determines militia cars (unarmed) -- Example: ["vehiclesMilitiaCars", ["B_G_Offroad_01_F"]] -- Array, can contain multiple assets

private _militiaAPCs = if (_hasTanks) then {["I_LT_01_cannon_F"]} else {[]};		//this line adds dlc APC to an array if dlc is loaded
["vehiclesMilitiaAPCs", _militiaAPCs] call _fnc_saveToTemplate;						//this line determines militia APCs

["vehiclesPolice", ["MTI_MUTT_I"]] call _fnc_saveToTemplate; 			//this line determines police cars -- Example: ["vehiclesPolice", ["B_GEN_Offroad_01_gen_F"]] -- Array, can contain multiple assets

["staticMGs", ["MTI_HeavyRepeater"]] call _fnc_saveToTemplate; 					//this line determines static MGs -- Example: ["staticMG", ["B_HMG_01_high_F"]] -- Array, can contain multiple assets
["staticAT", ["mti_drones_paap_at", "MTI_AA_Static", "mti_mortar_turret"]] call _fnc_saveToTemplate; 					//this line determinesstatic ATs -- Example: ["staticAT", ["B_static_AT_F"]] -- Array, can contain multiple assets
["staticAA", ["mti_drones_paap_aa", "MTI_Keeradak_UAV", "MTI_Keeradak_Base", "MTI_Ven_Cannon_Small"]] call _fnc_saveToTemplate; 					//this line determines static AAs -- Example: ["staticAA", ["B_static_AA_F"]] -- Array, can contain multiple assets
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
	"lsd_gar_cloneA_head",
    "lsd_gar_cloneE_head",
    "lsd_gar_cloneF_head",
    "lsd_developer_cloneDutch_head",
    "lsd_gar_cloneD_head",
    "lsd_gar_cloneC_head",
    "mti_armoury_face_Mokka",
    "mti_armoury_face_Celt",
    "mti_armoury_face_Ark",
    "mti_armoury_face_Blurr"
]] call _fnc_saveToTemplate;
["voices", ["Male01ENGB","Male02ENGB","Male03ENGB","Male04ENGB","Male05ENGB","Male01ENG"]] call _fnc_saveToTemplate;

["insignia", []] call _fnc_saveToTemplate;
["milInsignia", []] call _fnc_saveToTemplate;

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
["MTI_RPS6_D_Loaded", "", "acc_pointer_IR", "", [], [], ""]
]];
_loadoutData set ["ATLaunchers", ["MTI_RPS6", "MTI_HH12"]];
_loadoutData set ["missileATLaunchers", [
["MTI_RPS6_HP", "", "acc_pointer_IR", "", ["MTI_RPS6_HP_mag_AT"], [], ""],
["MTI_PLX1", "", "acc_pointer_IR", "", ["MTI_PLX1_mag_AT"], [], ""],
["MTI_Z6", "", "acc_pointer_IR", "", [], [], ""]
]];
_loadoutData set ["AALaunchers", [
["MTI_RPS6_HP", "", "acc_pointer_IR", "", ["MTI_RPS6_HP_mag_AA"], [], ""],
["MTI_PLX1", "", "acc_pointer_IR", "", ["MTI_PLX1_mag_AA"], [], ""]
]];
_loadoutData set ["sidearms", ["MTI_DC17s", "MTI_A180", "MTI_RSKF44", "MTI_SE14R"]];

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
_loadoutData set ["NVGs", ["mti_armoury_trooper_nvg_Chip", "mti_armoury_commando_nvg_chip", "mti_armoury_trooper_nvg_macro_NCO", "mti_armoury_trooper_nvg_macro_Medic", "mti_armoury_trooper_nvg_Visor_Command"]];						//this line determines NVGs -- Array, can contain multiple assets
_loadoutData set ["binoculars", ["JLTS_CloneBinocular_black"]];		//this line determines the binoculars
_loadoutData set ["rangefinders", ["TKE_BinoUCN"]];

_loadoutData set ["traitorUniforms", ["mti_armoury_trooper_uniform_Arcanist"]];		//this line determines traitor uniforms for traitor mission
_loadoutData set ["traitorVests", ["mti_armoury_trooper_vest_Arcanist"]];			//this line determines traitor vesets for traitor mission
_loadoutData set ["traitorHats", ["mti_armoury_trooper_helmet_Arcanist"]];			//this line determines traitor headgear for traitor missions

_loadoutData set ["officerUniforms", ["mti_armoury_trooper_uniform_mc_Rat"]];		//this line determines officer uniforms for assassination mission
_loadoutData set ["officerVests", ["mti_armoury_trooper_vest_mc"]];			//this line determines officer vesets for assassination mission
_loadoutData set ["officerHats", ["mti_armoury_trooper_helmet_mc_Rat"]];	//this line determines officer headgear for assassination missions

_loadoutData set ["uniforms", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slUniforms", []];
_loadoutData set ["vests", []];						//don't fill this line - this is only to set the variable
_loadoutData set ["Hvests", []];
_loadoutData set ["sniVests", []];
_loadoutData set ["backpacks", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["longRangeRadios", ["mti_armoury_trooper_backpack_RTO"]];
_loadoutData set ["atBackpacks", ["mti_armoury_trooper_backpack_eod"]];
_loadoutData set ["helmets", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slHat", []];
_loadoutData set ["sniHats", []];

_loadoutData set ["glasses", ["mti_armoury_trooper_facewear_Visor_Command", 
"mti_armoury_trooper_facewear_Visor_MC",
"mti_armoury_trooper_facewear_Range_grey", "mti_armoury_trooper_facewear_Range_White",
"mti_armoury_trooper_facewear_Range_NCO", "mti_armoury_trooper_facewear_macro_Grey", 
"mti_armoury_trooper_facewear_macro_white", "mti_armoury_trooper_facewear_macro_NCO",
"mti_armoury_trooper_facewear_macro_medic", "mti_armoury_trooper_facewear_macro_EOD",
"mti_armoury_trooper_facewear_spec_grey", "mti_armoury_trooper_facewear_spec_white", "mti_armoury_trooper_facewear_spec_NCO",
"mti_armoury_trooper_facewear_spec_Medic"]];	//cosmetics
_loadoutData set ["goggles", ["MTI_Bags_belt", "MTI_Bags_both", "mti_armoury_trooper_facewear_Heavy_Vest", "mti_armoury_fieldsupport_facewear_base_FS"]];		//cosmetics

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
    _slItems append ["ACE_microDAGR", "ACE_DAGR", "MTI_PBA", "MTI_Medisensor", "GX_DEPLOYABLE_HONEYBADGER_UGV_AT_BLACK", "MTI_catTab_tablet"];
    _eeItems append ["MTI_Detector", "ACE_DefusalKit", "JLTS_riot_shield_item", "ACE_Clacker", "MTI_BactaPatch", "ACE_personalAidKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "GX_1RND_DRONE40_HE_M203", "mti_tech_techpad", "mti_drones_mse6_packed", "JLTS_MSE6_toolkit", "JLTS_MSE6_manual", "MTI_catTab_phone"];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", ["MTI_catTab_phone", "ACE_EntrenchingTool"]];
_loadoutData set ["items_medic_extras", ["MTI_BactaPatch", "MTI_BactaSpray", "ACE_bloodIV", "MTI_PBA", "ACE_surgicalKit", "ACE_personalAidKit"]];
_loadoutData set ["items_grenadier_extras", ["MTI_SatchelCharge_Mag", "ls_mag_caltrops_dispenser", "ClaymoreDirectionalMine_Remote_Mag"]];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", ["ACE_DefusalKit"]];
_loadoutData set ["items_at_extras", ["ToolKit", "OPTRE_AU44_122mm_Throwable"]];
_loadoutData set ["items_aa_extras", ["MTI_MM9Rocket_HE", "NCA_OdinSpraycan"]];
_loadoutData set ["items_machineGunner_extras", ["GX_DEPLOYABLE_BLACK_HORNET_UAV"]];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", ["3AS_SonicDet"]];
_loadoutData set ["items_crew_extras", ["ToolKit", "mti_drones_MSE6_Spyro_packed"]];
_loadoutData set ["items_unarmed_extras", ["ls_meme_graciousGovernmentMix_item"]];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_sfLoadoutData set ["uniforms", ["mti_armoury_covertops_uniform_assassin", "mti_armoury_covertops_uniform_Yoshi", "mti_armoury_covertops_uniform_Asriel", "mti_armoury_covertops_uniform_Spider", "mti_armoury_covertops_uniform_Premade", "mti_armoury_covertops_uniform_Lost"]];
_sfLoadoutData set ["vests", ["mti_armoury_covertops_vest_assassin"]];
_sfLoadoutData set ["Hvests", ["mti_armoury_covertops_vest_Saber"]];
_sfLoadoutData set ["backpacks", ["mti_armoury_covertops_backpack_assassin_RTO_pack"]];
_sfLoadoutData set ["helmets", ["mti_armoury_covertops_helmet_assassin", "mti_armoury_covertops_helmet_Dagger", "mti_armoury_covertops_helmet_Anubis", "mti_armoury_covertops_helmet_Yoshi", "mti_armoury_covertops_helmet_Templar", "mti_armoury_covertops_helmet_Lost", "mti_armoury_covertops_helmet_Asriel"]];
_sfLoadoutData set ["binoculars", ["Laserdesignator_03"]];

_sfLoadoutData set ["slRifles", [
["MTI_DC19SC", "muzzle_snds_M", "acc_pointer_IR", "MTI_Holosight_red", [], [], ""],
["MTI_DC19SC", "muzzle_snds_M", "acc_pointer_IR", "MTI_Holosight_grn", ["MTI_stealth_mag"], [], ""],
["MTI_DC19LE", "muzzle_snds_M", "acc_pointer_IR", "MTI_HDMS_blu", ["MTI_DC15LEHP_mag"], [], ""],
["MTI_DC19X", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", ["MTI_DC15X_mag"], [], "3AS_Bipod_VK38X_f"],
["MTI_DC19X", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", ["MTI_DC15X_mag_tranq"], [], "3AS_Bipod_VK38X_f"],
["MTI_DC19X", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", ["MTI_DC15X_mag_Latheniol"], [], "3AS_Bipod_VK38X_f"],
["MTI_NT242p", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", [], [], "3AS_Bipod_VK38X_f"]
]];
_sfLoadoutData set ["rifles", [
["MTI_DC19SC", "muzzle_snds_M", "acc_pointer_IR", "MTI_Holosight_red", [], [], ""],
["MTI_DC19SC", "muzzle_snds_M", "acc_pointer_IR", "MTI_Holosight_grn", ["MTI_stealth_mag"], [], ""],
["MTI_DC19LE", "muzzle_snds_M", "acc_pointer_IR", "MTI_HDMS_blu", ["MTI_DC15LEHP_mag"], [], ""],
["MTI_DC19X", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", ["MTI_DC15X_mag"], [], "3AS_Bipod_VK38X_f"],
["MTI_DC19X", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", ["MTI_DC15X_mag_tranq"], [], "3AS_Bipod_VK38X_f"],
["MTI_DC19X", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", ["MTI_DC15X_mag_Latheniol"], [], "3AS_Bipod_VK38X_f"],
["MTI_NT242p", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", [], [], "3AS_Bipod_VK38X_f"]
]];
_sfLoadoutData set ["carbines", [
["MTI_DC19SC", "muzzle_snds_M", "acc_pointer_IR", "MTI_Holosight_red", [], [], ""],
["MTI_DC19SC", "muzzle_snds_M", "acc_pointer_IR", "MTI_Holosight_grn", ["MTI_stealth_mag"], [], ""],
["MTI_DC19LE", "muzzle_snds_M", "acc_pointer_IR", "MTI_HDMS_blu", ["MTI_DC15LEHP_mag"], [], ""],
["MTI_DC19X", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", ["MTI_DC15X_mag"], [], "3AS_Bipod_VK38X_f"],
["MTI_DC19X", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", ["MTI_DC15X_mag_tranq"], [], "3AS_Bipod_VK38X_f"],
["MTI_DC19X", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", ["MTI_DC15X_mag_Latheniol"], [], "3AS_Bipod_VK38X_f"],
["MTI_NT242p", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", [], [], "3AS_Bipod_VK38X_f"]
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
["MTI_DC19SC", "muzzle_snds_M", "acc_pointer_IR", "MTI_Holosight_red", [], [], ""],
["MTI_DC19SC", "muzzle_snds_M", "acc_pointer_IR", "MTI_Holosight_grn", ["MTI_stealth_mag"], [], ""],
["MTI_DC19LE", "muzzle_snds_M", "acc_pointer_IR", "MTI_HDMS_blu", ["MTI_DC15LEHP_mag"], [], ""],
["MTI_DC19X", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", ["MTI_DC15X_mag"], [], "3AS_Bipod_VK38X_f"],
["MTI_DC19X", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", ["MTI_DC15X_mag_tranq"], [], "3AS_Bipod_VK38X_f"],
["MTI_DC19X", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", ["MTI_DC15X_mag_Latheniol"], [], "3AS_Bipod_VK38X_f"],
["MTI_NT242p", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", [], [], "3AS_Bipod_VK38X_f"]
]];

private _mgs = [
["MTI_DC19SC", "muzzle_snds_M", "acc_pointer_IR", "MTI_Holosight_red", [], [], ""],
["MTI_DC19SC", "muzzle_snds_M", "acc_pointer_IR", "MTI_Holosight_grn", ["MTI_stealth_mag"], [], ""],
["MTI_DC19LE", "muzzle_snds_M", "acc_pointer_IR", "MTI_HDMS_blu", ["MTI_DC15LEHP_mag"], [], ""],
["MTI_DC19X", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", ["MTI_DC15X_mag"], [], "3AS_Bipod_VK38X_f"],
["MTI_DC19X", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", ["MTI_DC15X_mag_tranq"], [], "3AS_Bipod_VK38X_f"],
["MTI_DC19X", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", ["MTI_DC15X_mag_Latheniol"], [], "3AS_Bipod_VK38X_f"],
["MTI_NT242p", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", [], [], "3AS_Bipod_VK38X_f"]
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
["MTI_DC19SC", "muzzle_snds_M", "acc_pointer_IR", "MTI_Holosight_red", [], [], ""],
["MTI_DC19SC", "muzzle_snds_M", "acc_pointer_IR", "MTI_Holosight_grn", ["MTI_stealth_mag"], [], ""],
["MTI_DC19LE", "muzzle_snds_M", "acc_pointer_IR", "MTI_HDMS_blu", ["MTI_DC15LEHP_mag"], [], ""],
["MTI_DC19X", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", ["MTI_DC15X_mag"], [], "3AS_Bipod_VK38X_f"],
["MTI_DC19X", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", ["MTI_DC15X_mag_tranq"], [], "3AS_Bipod_VK38X_f"],
["MTI_DC19X", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", ["MTI_DC15X_mag_Latheniol"], [], "3AS_Bipod_VK38X_f"],
["MTI_NT242p", "muzzle_snds_M", "acc_pointer_IR", "MTI_HLRPS_blu", [], [], "3AS_Bipod_VK38X_f"]
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
_eliteLoadoutData set ["uniforms", ["mti_armoury_commando_uniform_base", "mti_armoury_commando_uniform_Cadet"]];
_eliteLoadoutData set ["slUniforms", ["SWLB_MPStealth_Uniform"]];
_eliteLoadoutData set ["vests", ["SWLB_clone_commando_basic_armor_k1", "SWLB_clone_commando_sniper_armor_k1", "SWLB_clone_commando_tech_armor_k1"]];
_eliteLoadoutData set ["Hvests", ["SWLB_clone_commando_eod_armor_k1", "SWLB_clone_commando_sl_armor_k1"]];
_eliteLoadoutData set ["backpacks", ["mti_armoury_commando_backpack_Imperial", "mti_armoury_commando_backpack_tech_Imperial", "mti_armoury_commando_backpack_eod_Imperial", "mti_armoury_commando_backpack_rto_Imperial"]];
_eliteLoadoutData set ["helmets", ["mti_armoury_commando_helmet_base", "mti_armoury_commando_helmet_tech"]];
_eliteLoadoutData set ["binoculars", ["Laserdesignator_03"]];

_eliteLoadoutData set ["slRifles", [
["MTI_BTX", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_DC17M", "", "acc_pointer_IR", "optic_MRCO", ["MTI_DC17M_mag"], [], ""],
["MTI_DC17M", "", "acc_pointer_IR", "optic_MRCO", ["MTI_DC17M_mag_sniper"], [], ""],
["MTI_Causality", "", "acc_pointer_IR", "optic_MRCO", ["MTI_Causality_Mag"], [], ""],
["MTI_Causality", "", "acc_pointer_IR", "optic_MRCO", ["MTI_Causality_Precision_Mag"], [], ""]
]];
_eliteLoadoutData set ["rifles", [
["MTI_BTX", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_DC17M", "", "acc_pointer_IR", "optic_MRCO", ["MTI_DC17M_mag"], [], ""],
["MTI_DC17M", "", "acc_pointer_IR", "optic_MRCO", ["MTI_DC17M_mag_sniper"], [], ""],
["MTI_Causality", "", "acc_pointer_IR", "optic_MRCO", ["MTI_Causality_Mag"], [], ""],
["MTI_Causality", "", "acc_pointer_IR", "optic_MRCO", ["MTI_Causality_Precision_Mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Optic_Scope_WestarM5", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "MTI_HRCO_blu", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_4", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_3", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_2", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_1", ["MTI_WestarM5_mag"], [], ""],
["MTI_T20", "", "acc_flashlight", "MTI_HRCO_blu", [], [], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Optic_Scope_WestarM5", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_HE"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "MTI_HRCO_blu", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_cluster"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_4", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_canister"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_3", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_shrapnel"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_2", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_mine"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_1", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_cluster_airburst"], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15A_mag"], [], ""],
["MTI_DP23", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DP23_mag"], [], ""],
["MTI_DP23", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DP23_mag_slug"], [], ""],
["MTI_DW32S", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DW32S_mag"], [], ""],
["WRS_Weapon_ShockGun", "", "acc_pointer_IR", "MTI_HMRCO_red", [], [], ""],
["WRS_Weapon_Sniper_Black", "", "acc_pointer_IR", "optic_Holosight_lush_F", [], [], ""],
["WRS_Weapon_Sniper", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["WRS_Weapon_LMG", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], [], ""],
["WRS_Weapon_ShockGun_Black", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], ""],
["WM_OppressorFlamethrower", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], ""],
["WRS_Weapon_ShockGun_Proto", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["WRS_Weapon_AR_Ver1_Black", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M393_ACOG", [], [], ""],
["WRS_Weapon_ShotGun", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], "WM_E11_Pack"],
["WRS_Weapon_ShockGun", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["WRS_Weapon_AR", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["WRS_Weapon_LMG", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", [], [], ""],
["MTI_DLT19X", "", "acc_flashlight", "optic_SOS", [], [], "WM_DLT_Bipod"],
["WRS_Weapon_Sniper_Bolt", "", "acc_flashlight", "optic_KHS_old", [], [], "WM_DLT_Bipod"],
["MTI_DC15LE", "", "acc_flashlight", "optic_Hamr", [], [], "bipod_01_F_blk"],
["MTI_Bowcaster", "", "acc_flashlight", "optic_Hamr", ["MTI_Bowcaster_mag"], [], "bipod_01_F_blk"]
]];
_eliteLoadoutData set ["carbines", [
["MTI_BTX", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_DC17M", "", "acc_pointer_IR", "optic_MRCO", ["MTI_DC17M_mag"], [], ""],
["MTI_DC17M", "", "acc_pointer_IR", "optic_MRCO", ["MTI_DC17M_mag_sniper"], [], ""],
["MTI_Causality", "", "acc_pointer_IR", "optic_MRCO", ["MTI_Causality_Mag"], [], ""],
["MTI_Causality", "", "acc_pointer_IR", "optic_MRCO", ["MTI_Causality_Precision_Mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Optic_Scope_WestarM5", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "MTI_HRCO_blu", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_4", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_3", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_2", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_1", ["MTI_WestarM5_mag"], [], ""],
["MTI_T20", "", "acc_flashlight", "MTI_HRCO_blu", [], [], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Optic_Scope_WestarM5", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_HE"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "MTI_HRCO_blu", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_cluster"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_4", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_canister"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_3", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_shrapnel"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_2", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_mine"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_1", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_cluster_airburst"], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15A_mag"], [], ""],
["MTI_DP23", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DP23_mag"], [], ""],
["MTI_DP23", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DP23_mag_slug"], [], ""],
["MTI_DW32S", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DW32S_mag"], [], ""],
["WRS_Weapon_ShockGun", "", "acc_pointer_IR", "MTI_HMRCO_red", [], [], ""],
["WRS_Weapon_Sniper_Black", "", "acc_pointer_IR", "optic_Holosight_lush_F", [], [], ""],
["WRS_Weapon_Sniper", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["WRS_Weapon_LMG", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], [], ""],
["WRS_Weapon_ShockGun_Black", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], ""],
["WM_OppressorFlamethrower", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], ""],
["WRS_Weapon_ShockGun_Proto", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["WRS_Weapon_AR_Ver1_Black", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M393_ACOG", [], [], ""],
["WRS_Weapon_ShotGun", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], "WM_E11_Pack"],
["WRS_Weapon_ShockGun", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["WRS_Weapon_AR", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["WRS_Weapon_LMG", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", [], [], ""],
["MTI_DLT19X", "", "acc_flashlight", "optic_SOS", [], [], "WM_DLT_Bipod"],
["WRS_Weapon_Sniper_Bolt", "", "acc_flashlight", "optic_KHS_old", [], [], "WM_DLT_Bipod"],
["MTI_DC15LE", "", "acc_flashlight", "optic_Hamr", [], [], "bipod_01_F_blk"],
["MTI_Bowcaster", "", "acc_flashlight", "optic_Hamr", ["MTI_Bowcaster_mag"], [], "bipod_01_F_blk"]
]];

_eliteLoadoutData set ["grenadeLaunchers", [
["mti_factions_imp_V6D", "", "acc_flashlight", "3AS_optic_reflex_DC15C", ["3AS_40Rnd_EM40_Mag"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_eliteLoadoutData set ["SMGs", [
["MTI_BTX", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_DC17M", "", "acc_pointer_IR", "optic_MRCO", ["MTI_DC17M_mag"], [], ""],
["MTI_DC17M", "", "acc_pointer_IR", "optic_MRCO", ["MTI_DC17M_mag_sniper"], [], ""],
["MTI_Causality", "", "acc_pointer_IR", "optic_MRCO", ["MTI_Causality_Mag"], [], ""],
["MTI_Causality", "", "acc_pointer_IR", "optic_MRCO", ["MTI_Causality_Precision_Mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Optic_Scope_WestarM5", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "MTI_HRCO_blu", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_4", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_3", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_2", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_1", ["MTI_WestarM5_mag"], [], ""],
["MTI_T20", "", "acc_flashlight", "MTI_HRCO_blu", [], [], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Optic_Scope_WestarM5", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_HE"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "MTI_HRCO_blu", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_cluster"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_4", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_canister"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_3", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_shrapnel"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_2", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_mine"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_1", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_cluster_airburst"], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15A_mag"], [], ""],
["MTI_DP23", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DP23_mag"], [], ""],
["MTI_DP23", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DP23_mag_slug"], [], ""],
["MTI_DW32S", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DW32S_mag"], [], ""],
["WRS_Weapon_ShockGun", "", "acc_pointer_IR", "MTI_HMRCO_red", [], [], ""],
["WRS_Weapon_Sniper_Black", "", "acc_pointer_IR", "optic_Holosight_lush_F", [], [], ""],
["WRS_Weapon_Sniper", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["WRS_Weapon_LMG", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], [], ""],
["WRS_Weapon_ShockGun_Black", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], ""],
["WM_OppressorFlamethrower", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], ""],
["WRS_Weapon_ShockGun_Proto", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["WRS_Weapon_AR_Ver1_Black", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M393_ACOG", [], [], ""],
["WRS_Weapon_ShotGun", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], "WM_E11_Pack"],
["WRS_Weapon_ShockGun", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["WRS_Weapon_AR", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["WRS_Weapon_LMG", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", [], [], ""],
["MTI_DLT19X", "", "acc_flashlight", "optic_SOS", [], [], "WM_DLT_Bipod"],
["WRS_Weapon_Sniper_Bolt", "", "acc_flashlight", "optic_KHS_old", [], [], "WM_DLT_Bipod"],
["MTI_DC15LE", "", "acc_flashlight", "optic_Hamr", [], [], "bipod_01_F_blk"],
["MTI_Bowcaster", "", "acc_flashlight", "optic_Hamr", ["MTI_Bowcaster_mag"], [], "bipod_01_F_blk"]
]];

if (_hasWs) then {
    _eliteLoadoutData set ["machineGuns", [
        ["LMG_S77_lxWS", "", "acc_pointer_IR", "optic_Hamr", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_lxWS", "", "acc_pointer_IR", "optic_Hamr", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_lxWS", "", "acc_pointer_IR", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["MTI_T21", "", "acc_pointer_IR", "optic_Hamr", [], [], "bipod_01_F_blk"],
        ["MTI_T21", "", "acc_pointer_IR", "optic_Hamr", [], [], "bipod_01_F_blk"],
        ["MTI_T21", "", "acc_pointer_IR", "optic_NVS", [], [], "bipod_01_F_blk"]
    ]];
} else {
    _eliteLoadoutData set ["machineGuns", [
        ["MTI_Z6_Small", "", "acc_pointer_IR", "optic_NVS", [], [], "bipod_01_F_blk"],
        ["WRS_Weapon_LMG", "", "acc_pointer_IR", "optic_NVS", [], [], "bipod_01_F_blk"]
    ]];
};

private _marksmanRifles = [
    ["MTI_DC17M", "", "acc_pointer_IR", "optic_tws", ["MTI_DC17M_mag_sniper"], [], "bipod_01_F_blk"]
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
["MTI_E403", "OPTRE_SRS99D_Suppressor", "", "TKE_10xSightV2", ["MTI_E403_HE_Mag"], [], ""],
["MTI_DC15X", "", "", "optic_LRPS", [], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
["MTI_DC15SA", "", "acc_flashlight_pistol", "WM_SE14C_Scope", [], [], ""],
["MTI_defibrillator", "", "acc_flashlight_pistol", "WM_SE14C_Scope", [], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["uniforms", ["mti_armoury_arc_uniform_trooper", "mti_armoury_arc_uniform_Chimera", "mti_armoury_arc_uniform_Potato", "mti_armoury_arc_uniform_Cat"]];
_militaryLoadoutData set ["slUniforms", ["mti_armoury_arc_uniform_SL", "mti_armoury_arc_uniform_Beems", "mti_armoury_arc_uniform_Sig"]];
_militaryLoadoutData set ["vests", ["mti_armoury_arc_vest_trooper", "mti_armoury_arc_vest_tl", "mti_armoury_arc_vest_sl"]];
_militaryLoadoutData set ["Hvests", ["mti_armoury_arc_vest_medic", "mti_armoury_arc_vest_Kev", "mti_armoury_arc_vest_Spooks", "mti_armoury_arc_vest_Chimera", "mti_armoury_arc_vest_demo"]];
_militaryLoadoutData set ["backpacks", ["mti_armoury_arc_backpack_base"]];
_militaryLoadoutData set ["helmets", ["mti_armoury_arc_helmet_Spooks", "mti_armoury_arc_helmet_Beems", "mti_armoury_arc_helmet_Sig", "mti_armoury_arc_helmet_trooper", "mti_armoury_arc_helmet_SL", "mti_armoury_arc_helmet_Chimera", "mti_armoury_arc_helmet_Kev"]];
_militaryLoadoutData set ["binoculars", ["Laserdesignator_03"]];

_militaryLoadoutData set ["slRifles", [
    ["MTI_DLT19X", "", "acc_flashlight", "optic_SOS", [], [], "WM_DLT_Bipod"],
    ["WRS_Weapon_Sniper_Bolt", "", "acc_flashlight", "optic_KHS_old", [], [], "WM_DLT_Bipod"],
    ["MTI_DC15LE", "", "acc_flashlight", "optic_Hamr", [], [], "bipod_01_F_blk"],
    ["MTI_Bowcaster", "", "acc_flashlight", "optic_Hamr", ["MTI_Bowcaster_mag"], [], "bipod_01_F_blk"]
]];
_militaryLoadoutData set ["rifles", [
["MTI_WestarM5", "", "acc_flashlight", "3AS_Optic_Scope_WestarM5", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "MTI_HRCO_blu", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_4", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_3", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_2", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_1", ["MTI_WestarM5_mag"], [], ""],
["MTI_T20", "", "acc_flashlight", "MTI_HRCO_blu", [], [], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Optic_Scope_WestarM5", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_HE"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "MTI_HRCO_blu", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_cluster"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_4", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_canister"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_3", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_shrapnel"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_2", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_mine"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_1", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_cluster_airburst"], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15A_mag"], [], ""],
["MTI_DP23", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DP23_mag"], [], ""],
["MTI_DP23", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DP23_mag_slug"], [], ""],
["MTI_DW32S", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DW32S_mag"], [], ""],
["WRS_Weapon_AR", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["WRS_Weapon_LMG", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", [], [], ""]
]];
_militaryLoadoutData set ["carbines", [
["MTI_WestarM5", "", "acc_flashlight", "3AS_Optic_Scope_WestarM5", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "MTI_HRCO_blu", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_4", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_3", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_2", ["MTI_WestarM5_mag"], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "3AS_Imp_Optic_1", ["MTI_WestarM5_mag"], [], ""],
["MTI_T20", "", "acc_flashlight", "MTI_HRCO_blu", [], [], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Optic_Scope_WestarM5", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_HE"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "MTI_HRCO_blu", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_cluster"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_4", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_canister"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_3", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_shrapnel"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_2", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_mine"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_1", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_cluster_airburst"], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15A_mag"], [], ""],
["MTI_DP23", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DP23_mag"], [], ""],
["MTI_DP23", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DP23_mag_slug"], [], ""],
["MTI_DW32S", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DW32S_mag"], [], ""],
["WRS_Weapon_AR", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["WRS_Weapon_LMG", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", [], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Optic_Scope_WestarM5", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_HE"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "MTI_HRCO_blu", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_cluster"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_4", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_canister"], ""],
["MTI_WestarM5_GL", "", "acc_flashlight", "3AS_Imp_Optic_3", ["MTI_WestarM5_mag"], ["MTI_40mm_mag_shrapnel"], ""],
["MTI_RD4", "", "acc_flashlight", "MTI_HRCO_blu", ["MTI_RD4_mag_6rnd"], [], ""]
]];
_militaryLoadoutData set ["SMGs", [
["WRS_Weapon_AR_2_CORPO", "", "", "OPTRE_M7_Sight", [], [], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15A_mag"], [], ""],
["WRS_Weapon_AR", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["WRS_Weapon_LMG", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", [], [], ""]
]];

private _mgs = [
    ["MTI_Z6_Small", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], "bipod_01_F_blk"],
	["MTI_DC15L", "", "acc_flashlight", "", [], [], "3AS_Bipod_DC15L_f"],
    ["WRS_Weapon_LMG", "", "acc_flashlight", "optic_Hamr", [], [], "bipod_01_F_blk"]];
if (_hasWs) then {
    _mgs append [
        ["LMG_S77_lxWS", "", "", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_lxWS", "", "acc_flashlight", "optic_MRCO", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_lxWS", "", "acc_flashlight", "optic_Hamr", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""]
    ];
};
_militaryLoadoutData set ["machineGuns", _mgs];

private _marksmanRifles = [
    ["MTI_DLT19X", "", "acc_flashlight", "optic_SOS", [], [], "WM_DLT_Bipod"],
    ["WRS_Weapon_Sniper_Bolt", "", "acc_flashlight", "optic_KHS_old", [], [], "WM_DLT_Bipod"],
    ["MTI_DC15LE", "", "acc_flashlight", "optic_Hamr", [], [], "bipod_01_F_blk"],
    ["MTI_Bowcaster", "", "acc_flashlight", "optic_Hamr", ["MTI_Bowcaster_mag"], [], "bipod_01_F_blk"]
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
["MTI_Verpine", "", "", "MTI_Verpine_scope", ["MTI_Verpine_mag"], [], ""],
["MTI_Verpine", "", "", "MTI_Verpine_scope", ["MTI_Verpine_1mag_APDS"], [], ""],
["MTI_Verpine", "", "", "MTI_Verpine_scope", ["MTI_Verpine_mag_AI_Latheniol"], [], ""],
["MTI_Verpine", "", "", "MTI_Verpine_scope", ["MTI_Verpine_mag_APDS"], [], ""],
["WRS_Weapon_Sniper_Black", "", "", "Optre_Recon_Sight", [], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
["MTI_DC17s_dual", "", "JLTS_DC17SA_flashlight", "", [], [], ""],
["MTI_RSKF44", "", "JLTS_DC17SA_flashlight", "", [], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["mti_armoury_fieldsupport_uniform_Medic"]];
_policeLoadoutData set ["vests", ["mti_armoury_trooper_vest_base", "mti_armoury_fieldsupport_vest_Grey_FS", "mti_armoury_fieldsupport_vest_white_FS"]];
private _helmets = ["mti_armoury_fieldsupport_helmet_Medic", "mti_armoury_fieldsupport_helmet_Stuka"];
if (_hasLawsOfWar) then {
    _helmets pushBack "H_PASGT_basic_blue_F";
};
_policeLoadoutData set ["helmets", _helmets];

_policeLoadoutData set ["SMGs", [
["MTI_Arkanian", "", "acc_flashlight_smg_01", "MTI_EE2_scope", [], [], ""],
["MTI_Z6_Heavy", "", "acc_flashlight_smg_01", "optic_Aco_smg", [], [], ""],
["MTI_DW32S", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["MTI_DP23", "", "acc_flashlight", "MTI_HMRCO_blu", [], [], ""],
["MTI_ACPR", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["3AS_ScatterGun_F", "", "acc_flashlight", "optic_Aco_smg", [], [], ""],
["WRS_Weapon_ShotGun_Black", "", "acc_flashlight", "", ["WRS_Shotgun_Magazine_NonLethal"], [], ""],
["MTI_Cinnagaran", "", "acc_flashlight", "", ["MTI_Cin_Mag"], [], ""]

]];
_policeLoadoutData set ["sidearms", ["MTI_A180"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["mti_armoury_trooper_uniform_CT", "SEA_Uniform_Clean", "mti_armoury_trooper_uniform_Akeno", "mti_armoury_jumptrooper_uniform_Trooper", "mti_armoury_trooper_uniform_Spiring", "mti_armoury_trooper_uniform_Leer", "mti_armoury_trooper_uniform_Mist", "mti_armoury_trooper_uniform_Spyro", "mti_armoury_trooper_uniform_Hex", "mti_armoury_trooper_uniform_SCT", "mti_armoury_trooper_uniform_VCT"]];
_militiaLoadoutData set ["vests", ["mti_armoury_trooper_vest_base", "mti_armoury_trooper_vest_CSP", "mti_armoury_jumptrooper_vest_base", "mti_armoury_trooper_vest_CLC"]];
_militiaLoadoutData set ["Hvests", ["mti_armoury_trooper_vest_Heavy", "mti_armoury_trooper_vest_cp", "mti_armoury_trooper_vest_CS", "mti_armoury_trooper_vest_PlatoonCommand"]];
_militiaLoadoutData set ["backpacks", ["mti_armoury_trooper_backpack_base", "mti_armoury_trooper_backpack_medic", "mti_armoury_trooper_backpack_RTO", "mti_armoury_trooper_backpack_RTO_Clear", "mti_armoury_trooper_backpack_RTO_pack", "mti_armoury_trooper_backpack_LR_attachment", "mti_armoury_trooper_backpack_belt_bag"]];
_militiaLoadoutData set ["helmets", ["mti_armoury_trooper_helmet_CT", "SEA_Helmet_Engineer_Base", "SEA_Helmet_P1_Base", "mti_armoury_trooper_helmet_CLC", "mti_armoury_trooper_helmet_Templar", "mti_armoury_trooper_helmet_bsj", "mti_armoury_trooper_helmet_Xetor", "mti_armoury_trooper_helmet_Siege", "mti_armoury_trooper_helmet_Mist", "mti_armoury_trooper_helmet_Asriel", "mti_armoury_trooper_helmet_Prussia", "mti_armoury_trooper_helmet_Tec", "mti_armoury_trooper_helmet_Spiring", "mti_armoury_trooper_helmet_Beems", "mti_armoury_trooper_helmet_Sicko", "mti_armoury_trooper_helmet_Sig", "mti_armoury_trooper_helmet_Cruiser", "mti_armoury_covertops_helmet_assassin_prospect", "mti_armoury_trooper_helmet_SCT", "mti_armoury_trooper_helmet_VCT"]];

if (_hasLawsOfWar) then {
    _militiaLoadoutData set ["helmets", ["H_HelmetIA", "H_PASGT_basic_olive_F", "H_Booniehat_dgtl", "H_Cap_blk_Raven"]];
} else {
    _militiaLoadoutData set ["helmets", ["mti_armoury_trooper_helmet_CT", "SEA_Helmet_Engineer_Base", "SEA_Helmet_P1_Base", "mti_armoury_trooper_helmet_CLC", "mti_armoury_trooper_helmet_Templar", "mti_armoury_trooper_helmet_bsj", "mti_armoury_trooper_helmet_Xetor", "mti_armoury_trooper_helmet_Siege", "mti_armoury_trooper_helmet_Mist", "mti_armoury_trooper_helmet_Asriel", "mti_armoury_trooper_helmet_Prussia", "mti_armoury_trooper_helmet_Tec", "mti_armoury_trooper_helmet_Spiring", "mti_armoury_trooper_helmet_Beems", "mti_armoury_trooper_helmet_Sicko", "mti_armoury_trooper_helmet_Sig", "mti_armoury_trooper_helmet_Cruiser", "mti_armoury_covertops_helmet_assassin_prospect", "mti_armoury_trooper_helmet_SCT", "mti_armoury_trooper_helmet_VCT"]];
};

_militiaLoadoutData set ["slRifles", [
["MTI_DC15C", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15C_mag"], [], ""],
["MTI_DC15C_GL", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15C_mag"], ["MTI_40mm_mag_cluster"], ""]
]];
_militiaLoadoutData set ["rifles", [
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15A_mag"], [], ""],
["MTI_DC15A_Wood", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15A_mag"], [], ""],
["MTI_DP23", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DP23_mag"], [], ""],
["MTI_DP23", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DP23_mag_slug"], [], ""],
["MTI_DW32S", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DW32S_mag"], [], ""],
["WRS_Weapon_AR", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["WRS_Weapon_LMG", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", [], [], ""]
]];
_militiaLoadoutData set ["carbines", [
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_red", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_grn", ["MTI_DC15S_mag"], [], ""],
["MTI_DC15S", "", "acc_flashlight", "MTI_Holosight_blu", ["MTI_DC15S_mag"], [], ""],
["WRS_Weapon_AR_Black", "", "acc_flashlight", "SFA_DLA13_scope", ["mti_factions_sith_imperials_Rifle_Red_Mag"], [], ""],
["WRS_Weapon_AR_Bronze", "", "acc_flashlight", "SFA_DLA13_scope", ["mti_factions_sith_imperials_Rifle_Red_Mag"], [], ""],
["WRS_Weapon_AUG_BLACK", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["WRS_Weapon_ShotGun_Black", "", "acc_flashlight", "", ["WRS_Shotgun_Magazine_NonLethal"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
["3AS_DC15C_GL", "", "acc_flashlight", "3AS_optic_reflex_DC15C", ["3AS_40Rnd_EM40_Mag"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_militiaLoadoutData set ["SMGs", ["MTI_DC15S"]];
_militiaLoadoutData set ["machineGuns", [
["MTI_DC15L", "", "acc_flashlight", "", [], [], "3AS_Bipod_DC15L_f"],
["MTI_Z6_Small", "", "acc_flashlight", "", [], [], "3AS_Bipod_DC15L_f"]
]];

private _marksmanRifles = [
	["MTI_DC15LE", "", "acc_flashlight", "MTI_HDMS_blu", [], [], ""],
	["MTI_Valken38X", "", "acc_flashlight", "MTI_HDMS_blu", [], [], ""],
	["MTI_DW32S", "", "acc_flashlight", "MTI_HDMS_blu", [], [], ""],
	["MTI_EE2", "", "acc_flashlight", "MTI_EE2_scope", [], [], ""]
];
private _sniperRifles = [["WRS_Weapon_Sniper_Bolt", "", "acc_flashlight", "optic_Arco_AK_blk_F", [], [], ""]];
_militiaLoadoutData set ["marksmanRifles", _marksmanRifles];
_militiaLoadoutData set ["sniperRifles", _sniperRifles];
_militiaLoadoutData set ["sidearms", ["MTI_DC17s"]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["mti_armoury_fieldsupport_uniform_Trooper"]];
_crewLoadoutData set ["vests", ["mti_armoury_fieldsupport_vest_Grey_FS"]];
_crewLoadoutData set ["helmets", ["mti_armoury_fieldsupport_helmet_Trooper", "mti_armoury_fieldsupport_helmet_Tanker", "mti_armoury_fieldsupport_helmet_Tyr", "mti_armoury_fieldsupport_helmet_Odin", "mti_armoury_fieldsupport_helmet_Jake", "mti_armoury_fieldsupport_helmet_Mookie", "mti_armoury_fieldsupport_helmet_SATAN", "mti_armoury_fieldsupport_helmet_Haunt", "mti_armoury_fieldsupport_helmet_Nancy"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["mti_armoury_pilot_uniform_CX_X"]];
_pilotLoadoutData set ["vests", ["mti_armoury_trooper_vest_base"]];
_pilotLoadoutData set ["helmets", ["mti_armoury_pilot_helmet_P1_CX_X"]];


/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms"] call _fnc_fallback] call _fnc_setUniform;

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
    ["backpacks"] call _fnc_setBackpack;

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
	["SquadLeader", _squadLeaderTemplate, [["baseClass", "NCA_separatistArmy_BX_unit", true]], [_prefix]],
	["Rifleman", _riflemanTemplate, [["baseClass", "NCA_separatistArmy_BX_unit", false]], [_prefix]],
	["Radioman", _radiomanTemplate, [["baseClass", "NCA_separatistArmy_BX_unit", false]], [_prefix]],
	["Medic", _medicTemplate, [["baseClass", "NCA_separatistArmy_BX_unit", false]], [_prefix]],
	["Engineer", _engineerTemplate, [["baseClass", "NCA_separatistArmy_BX_unit", false]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["baseClass", "NCA_separatistArmy_BX_unit", false]], [_prefix]],
	["Grenadier", _grenadierTemplate, [["baseClass", "NCA_separatistArmy_BX_unit", false]], [_prefix]],
	["LAT", _latTemplate, [["baseClass", "NCA_separatistArmy_BX_unit", false]], [_prefix]],
	["AT", _atTemplate, [["baseClass", "NCA_separatistArmy_BX_unit", false]], [_prefix]],
	["AA", _aaTemplate, [["baseClass", "NCA_separatistArmy_BX_unit", false]], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [["baseClass", "NCA_separatistArmy_BX_unit", false]], [_prefix]],
	["Marksman", _marksmanTemplate, [["baseClass", "NCA_separatistArmy_BX_unit", false]], [_prefix]],
	["Sniper", _sniperTemplate, [["baseClass", "NCA_separatistArmy_BX_unit", false]], [_prefix]]
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
	["Medic", _medicTemplate, [["baseClass", "mti_armoury_arc_unit_Medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [], [_prefix]],
	["Grenadier", _grenadierTemplate, [["baseClass", "mti_armoury_arc_unit_demo", true]], [_prefix]],
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
	["SquadLeader", _policeTemplate, [["baseClass", "mti_factions_imp_unit_Enforcer", false]], [_prefix]],
	["Standard", _policeTemplate, [["baseClass", "mti_factions_imp_unit_Security", false]], [_prefix]]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [["baseClass", "mti_armoury_trooper_unit_CS", true]], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["baseClass", "mti_armoury_trooper_unit_VCT_Medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [["baseClass", "mti_armoury_trooper_unit_SCT_EOD", true]], [_prefix]],
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
	["SquadLeader", _squadLeaderTemplate, [["baseClass", "mti_armoury_commando_unit_Sarge", true]], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["baseClass", "mti_armoury_commando_unit_medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [["baseClass", "mti_armoury_commando_unit_EOD", true]], [_prefix]],
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