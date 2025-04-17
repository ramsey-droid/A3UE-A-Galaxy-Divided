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

["name", "21st"] call _fnc_saveToTemplate; 						//this line determines the faction name -- Example: ["name", "NATO"] - ENTER ONLY ONE OPTION
["spawnMarkerName", format [localize "STR_supportcorridor", "Republic"]] call _fnc_saveToTemplate; 			//this line determines the name tag for the "carrier" on the map -- Example: ["spawnMarkerName", "NATO support corridor"] - ENTER ONLY ONE OPTION. Format and localize function can be used for translation

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", "\A3\Data_F\Flags\flag_fd_purple_CO.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "JLTS_flag_Rep"] call _fnc_saveToTemplate;		//this line determines the flag marker type -- Example: ["flagMarkerType", "flag_NATO"] - ENTER ONLY ONE OPTION

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "I_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_AAF_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["NCA_AA5Orbak", "NCA_BARC"]] call _fnc_saveToTemplate; 			//this line determines basic vehicles, the lightest kind available. -- Example: ["vehiclesBasic", ["B_Quadbike_01_F"]] -- Array, can contain multiple assets
["vehiclesLightUnarmed", ["NCA_AA5Orbak", "NCA_SwampSpeeder", "NCA_ITT"]] call _fnc_saveToTemplate; 		//this line determines light and unarmed vehicles. -- Example: ["vehiclesLightUnarmed", ["B_MRAP_01_F"]] -- Array, can contain multiple assets
["vehiclesLightArmed",["NCA_PX10", "NCA_ITT_GL"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["NCA_ITT"]] call _fnc_saveToTemplate; 			//this line determines the trucks -- Example: ["vehiclesTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesCargoTrucks", ["NCA_Logi_ITT"]] call _fnc_saveToTemplate; 		//this line determines cargo trucks -- Example: ["vehiclesCargoTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesAmmoTrucks", ["OPTRE_m1015_mule_ammo_cma"]] call _fnc_saveToTemplate; 		//this line determines ammo trucks -- Example: ["vehiclesAmmoTrucks", ["B_Truck_01_ammo_F"]] -- Array, can contain multiple assets
["vehiclesRepairTrucks", ["OPTRE_m1015_mule_repair_cma"]] call _fnc_saveToTemplate; 		//this line determines repair trucks -- Example: ["vehiclesRepairTrucks", ["B_Truck_01_Repair_F"]] -- Array, can contain multiple assets
["vehiclesFuelTrucks", ["OPTRE_m1015_mule_fuel_cma"]] call _fnc_saveToTemplate;		//this line determines fuel trucks -- Array, can contain multiple assets
["vehiclesMedical", ["OPTRE_m1015_mule_medical_cma"]] call _fnc_saveToTemplate;			//this line determines medical vehicles -- Array, can contain multiple assets
["vehiclesAPCs", ["NCA_ATAP", "NCA_juggernaut"]] call _fnc_saveToTemplate; 				//this line determines APCs -- Example: ["vehiclesAPCs", ["B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_CRV_F"]] -- Array, can contain multiple assets
["vehiclesTanks", ["NCA_ATTE", "NCA_TX130", "NCA_TX130_GL", "NCA_TX130_super"]] call _fnc_saveToTemplate; 			//this line determines tanks -- Example: ["vehiclesTanks", ["B_MBT_01_cannon_F", "B_MBT_01_TUSK_F"]] -- Array, can contain multiple assets
["vehiclesAA", ["NCA_RX200"]] call _fnc_saveToTemplate; 				//this line determines AA vehicles -- Example: ["vehiclesAA", ["B_APC_Tracked_01_AA_F"]] -- Array, can contain multiple assets
["vehiclesLightAPCs", ["NCA_UTAT"]] call _fnc_saveToTemplate;			//this line determines light APCs
["vehiclesIFVs", ["NCA_UTAT"]] call _fnc_saveToTemplate;				//this line determines IFVs

["vehiclesTransportBoats", ["optre_catfish_unarmed_f"]] call _fnc_saveToTemplate; 	//this line determines transport boats -- Example: ["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesGunBoats", ["NCA_Lancer"]] call _fnc_saveToTemplate; 			//this line determines gun boats -- Example: ["vehiclesGunBoats", ["B_Boat_Armed_01_minigun_F"]] -- Array, can contain multiple assets
["vehiclesAmphibious", []] call _fnc_saveToTemplate; 		//this line determines amphibious vehicles  -- Example: ["vehiclesAmphibious", ["B_APC_Wheeled_01_cannon_F"]] -- Array, can contain multiple assets

["vehiclesPlanesCAS", ["NCA_ARC170", "NCA_YWing", "NCA_Z95"]] call _fnc_saveToTemplate; 		//this line determines CAS planes -- Example: ["vehiclesPlanesCAS", ["B_Plane_CAS_01_dynamicLoadout_F"]] -- Array, can contain multiple assets
["vehiclesPlanesAA", ["NCA_V19", "NCA_Delta_7", "NCA_ARC170"]] call _fnc_saveToTemplate; 			//this line determines air superiority planes -- Example: ["vehiclesPlanesAA", ["B_Plane_Fighter_01_F"]] -- Array, can contain multiple assets
["vehiclesPlanesTransport", ["NCA_vc4Transport"]] call _fnc_saveToTemplate; 	//this line determines transport planes -- Example: ["vehiclesPlanesTransport", ["B_T_VTOL_01_infantry_F"]] -- Array, can contain multiple assets

["vehiclesHelisLight", ["NCA_LAATLE"]] call _fnc_saveToTemplate; 		//this line determines light helis -- Example: ["vehiclesHelisLight", ["B_Heli_Light_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisTransport", ["NCA_LAAT_doors", "NCA_NuClass", "NCA_RhoClass"]] call _fnc_saveToTemplate; 	//this line determines transport helis -- Example: ["vehiclesHelisTransport", ["B_Heli_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisLightAttack", ["NCA_LAAT_doors"]] call _fnc_saveToTemplate;		// this line determines light attack helicopters
["vehiclesHelisAttack", ["NCA_LAAT_turrets"]] call _fnc_saveToTemplate; 		//this line determines attack helis -- Example: ["vehiclesHelisAttack", ["B_Heli_Attack_01_F"]] -- Array, can contain multiple assets

["vehiclesArtillery", ["OPTRE_m1015_mule_mlr_cma", "mti_factions_imp_AV7"]] call _fnc_saveToTemplate;		//this line determines SPAs
["magazines", createHashMapFromArray [
    ["OPTRE_m1015_mule_mlr_cma", ["12Rnd_230mm_rockets"]],
    ["mti_factions_imp_AV7", ["3AS_32Rnd_300mm_Mo_shells"]]
]] call _fnc_saveToTemplate;			//this line determines ammo to be used with specified SPA, hashMap makes sure that SPA gets proper ammo

["uavsAttack", ["NCA_Sentinel_Drone"]] call _fnc_saveToTemplate; 				//this line determines attack UAVs -- Example: ["uavsAttack", ["B_UAV_02_CAS_F"]] -- Array, can contain multiple assets
["uavsPortable", ["NCA_prowler"]] call _fnc_saveToTemplate; 				//this line determines portable UAVs -- Example: ["uavsPortable", ["B_UAV_01_F"]] -- Array, can contain multiple assets

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", ["NCA_ITT", "NCA_PX10"]] call _fnc_saveToTemplate; //this line determines lightly armed militia vehicles -- Example: ["vehiclesMilitiaLightArmed", ["B_G_Offroad_01_armed_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaTrucks", ["B_Truck_01_covered_F"]] call _fnc_saveToTemplate; 	//this line determines militia trucks (unarmed) -- Example: ["vehiclesMilitiaTrucks", ["B_G_Van_01_transport_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaCars", ["NCA_ITT", "NCA_PX10"]] call _fnc_saveToTemplate; 		//this line determines militia cars (unarmed) -- Example: ["vehiclesMilitiaCars", ["B_G_Offroad_01_F"]] -- Array, can contain multiple assets

private _militiaAPCs = if (_hasTanks) then {["I_LT_01_cannon_F"]} else {[]};		//this line adds dlc APC to an array if dlc is loaded
["vehiclesMilitiaAPCs", _militiaAPCs] call _fnc_saveToTemplate;						//this line determines militia APCs

["vehiclesPolice", ["NCA_ITT"]] call _fnc_saveToTemplate; 			//this line determines police cars -- Example: ["vehiclesPolice", ["B_GEN_Offroad_01_gen_F"]] -- Array, can contain multiple assets

["staticMGs", ["NCA_EWeb"]] call _fnc_saveToTemplate; 					//this line determines static MGs -- Example: ["staticMG", ["B_HMG_01_high_F"]] -- Array, can contain multiple assets
["staticAT", []] call _fnc_saveToTemplate; 					//this line determinesstatic ATs -- Example: ["staticAT", ["B_static_AT_F"]] -- Array, can contain multiple assets
["staticAA", ["NCA_Keeradak"]] call _fnc_saveToTemplate; 					//this line determines static AAs -- Example: ["staticAA", ["B_static_AA_F"]] -- Array, can contain multiple assets
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
["NCA_RPS6_Disposable_Guided_AA", "", "acc_pointer_IR", "", [], [], ""],
["NCA_RPS6_Disposable_Guided", "", "acc_pointer_IR", "", [], [], ""],
["NCA_RPS6_D", "", "acc_pointer_IR", "", [], [], ""]
]];
_loadoutData set ["ATLaunchers", ["NCA_RPS6_D"]];
_loadoutData set ["missileATLaunchers", [
["NCA_RPS6_launcher", "", "acc_pointer_IR", "", ["NCA_RPS6_AP_mag"], [], ""],
["NCA_RPS6_launcher", "", "acc_pointer_IR", "", ["NCA_RPS6_HE_mag"], [], ""],
["NCA_PLX1_launcher", "", "acc_pointer_IR", "", ["NCA_PLX1_AP_mag"], [], ""]
]];
_loadoutData set ["AALaunchers", [
["NCA_PLX1_launcher", "", "acc_pointer_IR", "", ["NCA_PLX1_AA_mag"], [], ""]
]];
_loadoutData set ["sidearms", ["NCA_DC17_pistol"]];

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
_loadoutData set ["NVGs", ["NCA_integratedVision_NV", "nca_macroBinos", "nca_rangefinder_nvg", "nca_rangefinderMaroon_nvg", "nca_bacaraCMD_nvg", "nca_macroBinos_medic_down", "nca_macroBinos_medic", "nca_commander_maroon_nvg", "nca_macroBinos_down", "nca_bacaraNCO_nvg"]];						//this line determines NVGs -- Array, can contain multiple assets
_loadoutData set ["binoculars", ["JLTS_CloneBinocular_black"]];		//this line determines the binoculars
_loadoutData set ["rangefinders", ["TKE_BinoUCN"]];

_loadoutData set ["traitorUniforms", ["mti_armoury_trooper_uniform_Arcanist"]];		//this line determines traitor uniforms for traitor mission
_loadoutData set ["traitorVests", ["mti_armoury_trooper_vest_Arcanist"]];			//this line determines traitor vesets for traitor mission
_loadoutData set ["traitorHats", ["mti_armoury_trooper_helmet_Arcanist"]];			//this line determines traitor headgear for traitor missions

_loadoutData set ["officerUniforms", ["NCA_cloneArmor_uniform_P1Commander"]];		//this line determines officer uniforms for assassination mission
_loadoutData set ["officerVests", ["mti_armoury_trooper_vest_mc"]];			//this line determines officer vesets for assassination mission
_loadoutData set ["officerHats", ["NCA_P1Helmet_commander"]];	//this line determines officer headgear for assassination missions

_loadoutData set ["uniforms", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slUniforms", []];
_loadoutData set ["vests", []];						//don't fill this line - this is only to set the variable
_loadoutData set ["Hvests", []];
_loadoutData set ["sniVests", []];
_loadoutData set ["backpacks", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["longRangeRadios", ["NCA_GMBackpack_RTO_ER"]];
_loadoutData set ["atBackpacks", ["NCA_GMBackpack"]];
_loadoutData set ["helmets", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slHat", []];
_loadoutData set ["sniHats", ["NCA_ARFHelmet_enlisted"]];

_loadoutData set ["glasses", []];	//cosmetics
_loadoutData set ["goggles", []];		//cosmetics

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
_sfLoadoutData set ["uniforms", ["NCA_ARCArmor_uniform_scoundralEnlisted", "NCA_ARCArmor_uniform_scoundralNCO", "NCA_ARCArmor_uniform_scoundralCMD", "NCA_cloneArmor_uniform_Born"]];
_sfLoadoutData set ["vests", ["NCA_arcVest"]];
_sfLoadoutData set ["Hvests", ["NCA_arcVest"]];
_sfLoadoutData set ["backpacks", ["NCA_ARCBackpack"]];
_sfLoadoutData set ["helmets", ["NCA_ARCHelmet_enlisted", "NCA_ARCHelmet_Born"]];
_sfLoadoutData set ["binoculars", ["Laserdesignator_03"]];

_sfLoadoutData set ["slRifles", [
["MTI_DC19SC", "muzzle_snds_M", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_DC19SC", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", [], [], ""],
["MTI_DC19LE", "muzzle_snds_M", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["mti_factions_Imperial_DLT19", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", [], [], ""]
]];
_sfLoadoutData set ["rifles", [
["mti_factions_imp_E11D", "", "acc_pointer_IR", "MTI_HMRCO_red", [], [], ""],
["mti_factions_imp_E11D", "", "acc_pointer_IR", "optic_Holosight_lush_F", [], [], ""],
["mti_factions_imp_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", ["mti_factions_imp_Rifle_Red_Mag"], [], ""],
["mti_factions_imp_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", ["mti_factions_imp_Rifle_Red_Mag"], [], ""],
["mti_factions_imp_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", ["mti_factions_imp_Rifle_Red_Mag"], [], ""],
["WRS_Weapon_ShockGun", "", "acc_pointer_IR", "MTI_HMRCO_red", [], [], ""],
["WRS_Weapon_Sniper_Black", "", "acc_pointer_IR", "optic_Holosight_lush_F", [], [], ""],
["WRS_Weapon_Sniper", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["WRS_Weapon_LMG", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], [], ""],
["WRS_Weapon_ShockGun_Black", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], ""],
["WM_OppressorFlamethrower", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], ""],
["mti_factions_imp_Riot", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], ""],
["mti_factions_imp_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", ["mti_factions_imp_Rifle_Red_Mag"], [], ""],
["mti_factions_imp_DC15A", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", ["mti_factions_imp_Carbine_Red_Mag"], [], ""],
["mti_factions_imp_WESTAR", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", ["mti_factions_imp_Carbine_Red_Mag"], [], "3AS_Imp_Bipod_DLT19"],
["mti_factions_imp_E10", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", ["mti_factions_imp_Rifle_Red_Mag"], [], ""],
["mti_factions_imp_E11_Stealth", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", ["MTI_stealth_mag"], [], "WM_E11_Pack"],
["mti_factions_imp_Blastcannon", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", ["mti_factions_imp_Shotgun_Slug"], [], ""],
["IDA_T21", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", ["mti_factions_imp_Carbine_Red_Mag"], [], ""],
["mti_factions_imp_DLT19", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", ["mti_factions_imp_Carbine_Red_Mag"], [], "3AS_Imp_Bipod_DLT19"],
["mti_factions_imp_SX21", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", ["mti_factions_imp_Rifle_Red_Mag"], [], ""]
]];
_sfLoadoutData set ["carbines", [
["mti_factions_imp_E11D", "", "acc_pointer_IR", "MTI_HMRCO_red", [], [], ""],
["mti_factions_imp_E11D", "", "acc_pointer_IR", "optic_Holosight_lush_F", [], [], ""],
["mti_factions_imp_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", ["mti_factions_imp_Rifle_Red_Mag"], [], ""],
["mti_factions_imp_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", ["mti_factions_imp_Rifle_Red_Mag"], [], ""],
["mti_factions_imp_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", ["mti_factions_imp_Rifle_Red_Mag"], [], ""],
["mti_factions_imp_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", ["mti_factions_imp_Rifle_Red_Mag"], [], ""],
["mti_factions_imp_DC15A", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", ["mti_factions_imp_Carbine_Red_Mag"], [], ""],
["mti_factions_imp_WESTAR", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", ["mti_factions_imp_Carbine_Red_Mag"], [], "3AS_Imp_Bipod_DLT19"],
["mti_factions_imp_E10", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", ["mti_factions_imp_Rifle_Red_Mag"], [], ""],
["mti_factions_imp_E11_Stealth", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", ["MTI_stealth_mag"], [], "WM_E11_Pack"],
["mti_factions_imp_Blastcannon", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", ["mti_factions_imp_Shotgun_Slug"], [], ""],
["mti_factions_imp_DLT19", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", ["mti_factions_imp_Carbine_Red_Mag"], [], "3AS_Imp_Bipod_DLT19"],
["mti_factions_imp_SX21", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", ["mti_factions_imp_Rifle_Red_Mag"], [], ""],
["WRS_Weapon_ShotGun_Black", "", "acc_flashlight", "", ["WRS_Shotgun_Magazine_NonLethal"], [], ""],
["MTI_Cinnagaran", "", "acc_flashlight", "", ["MTI_Cin_Mag"], [], ""]
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
["mti_factions_imp_E11D", "", "acc_pointer_IR", "MTI_HMRCO_red", [], [], ""],
["mti_factions_imp_E11D", "", "acc_pointer_IR", "optic_Holosight_lush_F", [], [], ""],
["mti_factions_imp_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", ["mti_factions_imp_Rifle_Red_Mag"], [], ""],
["mti_factions_imp_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", ["mti_factions_imp_Rifle_Red_Mag"], [], ""],
["mti_factions_imp_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", ["mti_factions_imp_Rifle_Red_Mag"], [], ""],
["mti_factions_imp_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", ["mti_factions_imp_Rifle_Red_Mag"], [], ""],
["mti_factions_imp_DC15A", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", ["mti_factions_imp_Carbine_Red_Mag"], [], ""],
["mti_factions_imp_WESTAR", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", ["mti_factions_imp_Carbine_Red_Mag"], [], "3AS_Imp_Bipod_DLT19"],
["mti_factions_imp_E10", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", ["mti_factions_imp_Rifle_Red_Mag"], [], ""],
["mti_factions_imp_E11_Stealth", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", ["MTI_stealth_mag"], [], "WM_E11_Pack"],
["mti_factions_imp_Blastcannon", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", ["mti_factions_imp_Shotgun_Slug"], [], ""],
["mti_factions_imp_DLT19", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", ["mti_factions_imp_Carbine_Red_Mag"], [], "3AS_Imp_Bipod_DLT19"],
["mti_factions_imp_SX21", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", ["mti_factions_imp_Rifle_Red_Mag"], [], ""]
]];

private _mgs = [
    ["MTI_T21", "muzzle_snds_H", "acc_pointer_IR", "optic_NVS", [], [], "bipod_01_F_blk"],
    ["MTI_T21", "muzzle_snds_H", "acc_pointer_IR", "optic_MRCO", [], [], "bipod_01_F_blk"],
    ["MTI_T21", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], "bipod_01_F_blk"],
    ["MTI_T21", "muzzle_snds_H", "acc_pointer_IR", "optic_Hamr", [], [], "bipod_01_F_blk"]
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
    ["3AS_DLT19X", "muzzle_snds_B", "acc_pointer_IR", "optic_SOS", [], [], "bipod_01_F_blk"],
    ["3AS_DLT19X", "muzzle_snds_B", "acc_pointer_IR", "optic_NVS", [], [], "bipod_01_F_blk"],
    ["3AS_DLT19X", "muzzle_snds_B", "acc_pointer_IR", "optic_Hamr", [], [], "bipod_01_F_blk"]
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
_eliteLoadoutData set ["uniforms", ["NCA_cloneArmor_uniform_outlawenlisted", "NCA_cloneArmor_uniform_outlawNCO", "NCA_cloneArmor_uniform_outlawCMD"]];
_eliteLoadoutData set ["slUniforms", ["NCA_cloneArmor_uniform_Nuke", "NCA_cloneArmor_uniform_Igneous"]];
_eliteLoadoutData set ["vests", ["NCA_outlaw_trooper", "NCA_outlaw_veteran", "NCA_outlaw_corporal"]];
_eliteLoadoutData set ["Hvests", ["NCA_outlaw_officer", "NCA_outlaw_SNCO"]];
_eliteLoadoutData set ["backpacks", ["NCA_GMBackpack", "NCA_GMBackpack_EOD", "NCA_GMBackpack_medic", "NCA_GMBackpack_RTO", "NCA_GMBackpack_RTO_ER"]];
_eliteLoadoutData set ["helmets", ["NCA_ABHelmet_enlisted", "NCA_ABHelmet_NCO", "NCA_ABHelmet_CMD", "NCA_ABHelmet_Nuke", "NCA_ABHelmet_Argyle", "NCA_ABHelmet_Igneous"]];
_eliteLoadoutData set ["binoculars", ["Laserdesignator_03"]];

_eliteLoadoutData set ["slRifles", [
["WRS_Weapon_AR", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["WRS_Weapon_LMG", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", [], [], ""],
["NCA_Causality", "", "acc_flashlight", "NCA_holo_optic", ["NCA_Causality_mag"], [], ""],
["NCA_westarM5_rifle", "", "acc_flashlight", "NCA_westar_scope", [], [], ""],
["NCA_westarM5_rifle", "", "acc_flashlight", "NCA_holo_optic_Seal", [], [], ""],
["NCA_DC15SAW_rifle", "3AS_Muzzle_LE_DC15A", "JLTS_DC17SA_flashlight", "", ["NCA_DC15SAW_mag"], [], "3AS_Bipod_VK38X_f"]
]];
_eliteLoadoutData set ["rifles", [
["WRS_Weapon_AR", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["WRS_Weapon_LMG", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", [], [], ""],
["NCA_Causality", "", "acc_flashlight", "NCA_holo_optic", ["NCA_Causality_mag"], [], ""],
["NCA_westarM5_rifle", "", "acc_flashlight", "NCA_westar_scope", [], [], ""],
["NCA_westarM5_rifle", "", "acc_flashlight", "NCA_holo_optic_Seal", [], [], ""],
["NCA_DC15SAW_rifle", "3AS_Muzzle_LE_DC15A", "JLTS_DC17SA_flashlight", "", ["NCA_DC15SAW_mag"], [], "3AS_Bipod_VK38X_f"]
]];
_eliteLoadoutData set ["carbines", [
["WRS_Weapon_AR", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["WRS_Weapon_LMG", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", [], [], ""],
["NCA_Causality", "", "acc_flashlight", "NCA_holo_optic", ["NCA_Causality_mag"], [], ""],
["NCA_westarM5_rifle", "", "acc_flashlight", "NCA_westar_scope", [], [], ""],
["NCA_westarM5_rifle", "", "acc_flashlight", "NCA_holo_optic_Seal", [], [], ""],
["NCA_DC15SAW_rifle", "3AS_Muzzle_LE_DC15A", "JLTS_DC17SA_flashlight", "", ["NCA_DC15SAW_mag"], [], "3AS_Bipod_VK38X_f"],
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
["WRS_Weapon_LMG", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", [], [], ""]
]];

_eliteLoadoutData set ["grenadeLaunchers", [
["mti_factions_imp_V6D", "", "acc_flashlight", "3AS_optic_reflex_DC15C", ["3AS_40Rnd_EM40_Mag"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_eliteLoadoutData set ["SMGs", [
["WRS_Weapon_AR", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["WRS_Weapon_LMG", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", [], [], ""],
["NCA_Causality", "", "acc_flashlight", "NCA_holo_optic", ["NCA_Causality_mag"], [], ""],
["NCA_westarM5_rifle", "", "acc_flashlight", "NCA_westar_scope", [], [], ""],
["NCA_westarM5_rifle", "", "acc_flashlight", "NCA_holo_optic_Seal", [], [], ""],
["NCA_DC15SAW_rifle", "3AS_Muzzle_LE_DC15A", "JLTS_DC17SA_flashlight", "", ["NCA_DC15SAW_mag"], [], "3AS_Bipod_VK38X_f"],
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
["WRS_Weapon_Sniper_Bolt", "", "acc_flashlight", "optic_KHS_old", [], [], "WM_DLT_Bipod"]
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
_militaryLoadoutData set ["uniforms", ["NCA_GMArmor_uniform", "NCA_GMArmor_uniform_medic"]];
_militaryLoadoutData set ["slUniforms", ["NCA_GMArmor_uniform_Magnus"]];
_militaryLoadoutData set ["vests", ["NCA_GMVest", "NCA_GMVest_Medical", "mti_factions_imp_vest_Elite"]];
_militaryLoadoutData set ["Hvests", ["mti_factions_imp_vest_Elite", "NCA_GMVest", "NCA_GMVest_Medical"]];
_militaryLoadoutData set ["backpacks", ["NCA_GMBackpack", "NCA_GMBackpack_EOD", "NCA_GMBackpack_medic", "NCA_GMBackpack_RTO", "NCA_GMBackpack_RTO_ER"]];
_militaryLoadoutData set ["helmets", ["NCA_GMHelmet", "NCA_GMHelmet_NCO", "NCA_GMHelmet_CMD", "NCA_GMHelmet_medic", "NCA_GMHelmet_Beyond", "NCA_GMHelmet_Magnus"]];
_militaryLoadoutData set ["binoculars", ["NCA_rangeFinder_RepublicNight"]];

_militaryLoadoutData set ["slRifles", [
    ["MTI_DLT19X", "", "acc_flashlight", "optic_SOS", [], [], "WM_DLT_Bipod"],
    ["WRS_Weapon_Sniper_Bolt", "", "acc_flashlight", "optic_KHS_old", [], [], "WM_DLT_Bipod"],
    ["MTI_DC15LE", "", "acc_flashlight", "optic_Hamr", [], [], "bipod_01_F_blk"],
    ["MTI_Bowcaster", "", "acc_flashlight", "optic_Hamr", ["MTI_Bowcaster_mag"], [], "bipod_01_F_blk"]
]];
_militaryLoadoutData set ["rifles", [
["NCA_DC15A_rifle", "", "acc_flashlight", "", ["NCA_DP23_mag"], [], ""],
["NCA_DP23_rifle", "", "acc_flashlight", "NCA_holo_optic", ["MTI_DC15A_mag"], [], ""],
["NCA_DC15A_rifle_UGL", "", "acc_flashlight", "MTI_Holosight_red", ["NCA_DC15A_mag"], ["NCA_1Rnd_HE"], ""],
["WRS_Weapon_AR", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["WRS_Weapon_LMG", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", [], [], ""],
["NCA_Causality", "", "acc_flashlight", "NCA_holo_optic", ["NCA_Causality_mag"], [], ""],
["NCA_westarM5_rifle", "", "acc_flashlight", "NCA_westar_scope", [], [], ""],
["NCA_westarM5_rifle", "", "acc_flashlight", "NCA_holo_optic_Seal", [], [], ""]
]];
_militaryLoadoutData set ["carbines", [
["NCA_DC15A_rifle", "", "acc_flashlight", "", ["NCA_DP23_mag"], [], ""],
["NCA_DP23_rifle", "", "acc_flashlight", "NCA_holo_optic", ["MTI_DC15A_mag"], [], ""],
["NCA_DC15A_rifle_UGL", "", "acc_flashlight", "MTI_Holosight_red", ["NCA_DC15A_mag"], ["NCA_1Rnd_HE"], ""],
["WRS_Weapon_AR", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["WRS_Weapon_LMG", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", [], [], ""],
["NCA_Causality", "", "acc_flashlight", "NCA_holo_optic", ["NCA_Causality_mag"], [], ""],
["NCA_westarM5_rifle", "", "acc_flashlight", "NCA_westar_scope", [], [], ""],
["NCA_westarM5_rifle", "", "acc_flashlight", "NCA_holo_optic_Seal", [], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["NCA_westarM5_rifle_UGL", "", "acc_flashlight", "NCA_westar_scope", [], ["NCA_2Rnd_Scattershot"], ""],
["NCA_westarM5_rifle_UGL", "", "acc_flashlight", "NCA_holo_optic_Seal", [], ["NCA_1Rnd_HE"], ""]
]];
_militaryLoadoutData set ["SMGs", [
["WRS_Weapon_AR_2_CORPO", "", "", "OPTRE_M7_Sight", [], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_chevron", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_Green", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_Orange", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_Purple", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_Red", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15A_rifle", "", "acc_flashlight", "", ["NCA_DP23_mag"], [], ""],
["NCA_DP23_rifle", "", "acc_flashlight", "NCA_holo_optic", ["MTI_DC15A_mag"], [], ""],
["NCA_DC15A_rifle_UGL", "", "acc_flashlight", "MTI_Holosight_red", ["NCA_DC15A_mag"], ["NCA_1Rnd_HE"], ""],
["WRS_Weapon_AR", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["WRS_Weapon_LMG", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Light_E11", "OPTRE_M7_Sight", [], [], ""]
]];

private _mgs = [
	["NCA_DC15SAW_rifle", "3AS_Muzzle_LE_DC15A", "JLTS_DC17SA_flashlight", "", ["NCA_DC15SAW_mag"], [], "3AS_Bipod_VK38X_f"],
	["NCA_Z6_rifle", "", "acc_flashlight", "", [], [], "3AS_Bipod_DC15L_f"],
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
	["NCA_valken38X_rifle", "", "acc_flashlight", "NCA_valken38X_scope", [], [], "3AS_Bipod_VK38X_f"],
	["NCA_valken38X_rifle", "", "acc_flashlight", "NCA_valken38X_scope2", [], [], "3AS_Bipod_VK38X_f"],
	["NCA_DW32S_rifle", "", "acc_flashlight", "NCA_valken38X_scope2", [], [], "3AS_Bipod_VK38X_f"]
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
["NCA_DC15X_rifle", "", "acc_flashlight", "NCA_DC15X_scope", [], [], ""],
["WRS_Weapon_Sniper_Black", "", "", "Optre_Recon_Sight", [], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
["NCA_DC17_pistol", "", "JLTS_DC17SA_flashlight", "", [], [], ""],
["NCA_DH45_pistol", "", "JLTS_DC17SA_flashlight", "", [], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["NCA_cloneArmor_uniform"]];
_policeLoadoutData set ["vests", ["NCA_cloneVest"]];
private _helmets = ["NCA_P2Helmet"];
if (_hasLawsOfWar) then {
    _helmets pushBack "H_PASGT_basic_blue_F";
};
_policeLoadoutData set ["helmets", _helmets];

_policeLoadoutData set ["SMGs", [
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_chevron", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_Green", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_Orange", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_Purple", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_Red", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15A_rifle", "", "acc_flashlight", "", ["NCA_DP23_mag"], [], ""],
["NCA_DP23_rifle", "", "acc_flashlight", "NCA_holo_optic", ["MTI_DC15A_mag"], [], ""],
["NCA_DC15A_rifle_UGL", "", "acc_flashlight", "MTI_Holosight_red", ["NCA_DC15A_mag"], ["NCA_1Rnd_HE"], ""],
["WRS_Weapon_ShotGun_Black", "", "acc_flashlight", "", ["WRS_Shotgun_Magazine_NonLethal"], [], ""],
["MTI_Cinnagaran", "", "acc_flashlight", "", ["MTI_Cin_Mag"], [], ""]

]];
_policeLoadoutData set ["sidearms", ["NCA_DC17_pistol"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["NCA_cloneArmor_uniform_cadet", "NCA_cloneArmor_uniform_enlisted", "NCA_cloneArmor_uniform_NCO", "NCA_cloneArmor_uniform_SNCO", "NCA_cloneArmor_uniform_CMD", "NCA_cloneArmor_uniform_banditEnlisted", "NCA_cloneArmor_uniform_banditNCO", "NCA_cloneArmor_uniform_banditVeteran"]];
_militiaLoadoutData set ["vests", ["NCA_holsterVest", "NCA_tacticalCommanderVest", "NCA_reconSurvivalVest", "NCA_assaultVest", "NCA_reconNCOVest_21st", "NCA_kamaVest_21st_maroonKama", "NCA_kamaVest_21st_greyKama", "NCA_airborneNCOVest_21stmaroonKama", "NCA_kamaVest_21st"]];
_militiaLoadoutData set ["Hvests", ["NCA_heavyVest", "NCA_heavyAlternateVest", "NCA_airborneOfficerVest", "NCA_forceReconNCOVest", "NCA_grenadierVest", "NCA_hazardVest"]];
_militiaLoadoutData set ["backpacks", ["NCA_backpack_auto_turret", "NCA_cloneBackpack_bag_full", "NCA_cloneBackpack_radioAttachment", "NCA_cloneBackpack_21st_EOD", "NCA_portableShield_backpack", "NCA_cloneBackpack_21st_heavy", "NCA_cloneBackpack_21st_medic", "NCA_cloneBackpack_21st_ER_RTO", "NCA_cloneBackpack_21st_RTO"]];
_militiaLoadoutData set ["helmets", ["NCA_P2Helmet_enlisted", "NCA_ARFHelmet_enlisted", "NCA_P2SOHelmet_enlisted", "NCA_ABHelmet_enlisted", "NCA_P2SOHelmet_NCO", "NCA_P1Helmet_enlisted", "NCA_P2Helmet_NCO", "NCA_P2Helmet_CMD", "NCA_P2EngHelmet_enlisted", "NCA_P2EngHelmet_vet", "NCA_P2EngHelmet_NCO", "NCA_P2EngHelmet_CMD", "NCA_BARCHelmet_enlisted", "NCA_BARCHelmet_NCO"]];

if (_hasLawsOfWar) then {
    _militiaLoadoutData set ["helmets", ["H_HelmetIA", "H_PASGT_basic_olive_F", "H_Booniehat_dgtl", "H_Cap_blk_Raven"]];
} else {
    _militiaLoadoutData set ["helmets", ["NCA_P2Helmet_enlisted", "NCA_ARFHelmet_enlisted", "NCA_P2SOHelmet_enlisted", "NCA_ABHelmet_enlisted", "NCA_P2SOHelmet_NCO", "NCA_P1Helmet_enlisted", "NCA_P2Helmet_NCO", "NCA_P2Helmet_CMD", "NCA_P2EngHelmet_enlisted", "NCA_P2EngHelmet_vet", "NCA_P2EngHelmet_NCO", "NCA_P2EngHelmet_CMD", "NCA_BARCHelmet_enlisted", "NCA_BARCHelmet_NCO"]];
};

_militiaLoadoutData set ["slRifles", [
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_chevron", ["NCA_DC15S_mag"], [], ""]
]];
_militiaLoadoutData set ["rifles", [
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_chevron", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_Green", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_Orange", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_Purple", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_Red", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15A_rifle", "", "acc_flashlight", "", [], [], ""],
["NCA_DP23_rifle", "", "acc_flashlight", "NCA_holo_optic", [], [], ""],
["NCA_DC15A_rifle_UGL", "", "acc_flashlight", "MTI_Holosight_red", ["NCA_DC15A_mag"], ["NCA_1Rnd_HE"], ""]
]];
_militiaLoadoutData set ["carbines", [
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_chevron", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_Green", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_Orange", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_Purple", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15S_rifle", "", "JLTS_DC17SA_flashlight", "NCA_holo_optic_Red", ["NCA_DC15S_mag"], [], ""],
["NCA_DC15A_rifle", "", "acc_flashlight", "", ["NCA_DP23_mag"], [], ""],
["NCA_DP23_rifle", "", "acc_flashlight", "NCA_holo_optic", ["MTI_DC15A_mag"], [], ""],
["NCA_DC15A_rifle_UGL", "", "acc_flashlight", "MTI_Holosight_red", ["NCA_DC15A_mag"], ["NCA_1Rnd_HE"], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
["NCA_DC15A_rifle_UGL", "", "acc_flashlight", "MTI_Holosight_red", ["NCA_DC15A_mag"], ["NCA_1Rnd_HE"], ""]
]];
_militiaLoadoutData set ["SMGs", ["NCA_DC15A_rifle"]];
_militiaLoadoutData set ["machineGuns", [
["NCA_DC15SAW_rifle", "3AS_Muzzle_LE_DC15A", "JLTS_DC17SA_flashlight", "", ["NCA_DC15SAW_mag"], [], "3AS_Bipod_VK38X_f"],
["NCA_Z6_rifle", "", "acc_flashlight", "", [], [], "3AS_Bipod_DC15L_f"]
]];

private _marksmanRifles = [
	["NCA_valken38X_rifle", "", "acc_flashlight", "NCA_valken38X_scope", [], [], "3AS_Bipod_VK38X_f"],
	["NCA_valken38X_rifle", "", "acc_flashlight", "NCA_valken38X_scope2", [], [], "3AS_Bipod_VK38X_f"],
	["NCA_DW32S_rifle", "", "acc_flashlight", "NCA_valken38X_scope2", [], [], "3AS_Bipod_VK38X_f"]
];
private _sniperRifles = [["NCA_DC15X_rifle", "", "acc_flashlight", "NCA_DC15X_scope", [], [], ""]];
_militiaLoadoutData set ["marksmanRifles", _marksmanRifles];
_militiaLoadoutData set ["sniperRifles", _sniperRifles];
_militiaLoadoutData set ["sidearms", ["NCA_DC17_pistol"]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["NCA_cloneArmor_uniform_Ganch"]];
_crewLoadoutData set ["vests", ["NCA_engineerVest"]];
_crewLoadoutData set ["helmets", ["NCA_P2ENGHelmet_Jackel"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["NCA_cloneArmor_uniform_tauntaunEnlisted"]];
_pilotLoadoutData set ["vests", ["NCA_holsterVest"]];
_pilotLoadoutData set ["helmets", ["NCA_PILHelmet_enlisted"]];


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
	["SquadLeader", _squadLeaderTemplate, [["baseClass", "mti_factions_imp_unit_Deathtrooper", true]], [_prefix]],
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
	["Medic", _medicTemplate, [], [_prefix]],
	["Engineer", _engineerTemplate, [], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [], [_prefix]],
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
	["SquadLeader", _policeTemplate, [["baseClass", "mti_factions_imp_unit_Enforcer", false]], [_prefix]],
	["Standard", _policeTemplate, [["baseClass", "mti_factions_imp_unit_Security", false]], [_prefix]]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [["baseClass", "NCA_republicCloneTrooper_officer", true]], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["baseClass", "NCA_republicCloneTrooper_medic", true]], [_prefix]],
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
	["SquadLeader", _squadLeaderTemplate, [["baseClass", "NCA_republicARCTrooper_squadLead", true]], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["baseClass", "NCA_republicARCTrooper_medic", true]], [_prefix]],
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