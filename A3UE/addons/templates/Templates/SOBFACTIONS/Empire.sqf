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

["name", "Imperial"] call _fnc_saveToTemplate; 						//this line determines the faction name -- Example: ["name", "NATO"] - ENTER ONLY ONE OPTION
["spawnMarkerName", format [localize "STR_supportcorridor", "Imperial"]] call _fnc_saveToTemplate; 			//this line determines the name tag for the "carrier" on the map -- Example: ["spawnMarkerName", "NATO support corridor"] - ENTER ONLY ONE OPTION. Format and localize function can be used for translation

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate; 						//this line determines the flag -- Example: ["flag", "Flag_NATO_F"] - ENTER ONLY ONE OPTION
["flagTexture", "ls_statics_props\flags\data\flag_imp.paa"] call _fnc_saveToTemplate; 				//this line determines the flag texture -- Example: ["flagTexture", "\A3\Data_F\Flags\Flag_NATO_CO.paa"] - ENTER ONLY ONE OPTION
["flagMarkerType", "Galactic_Empire"] call _fnc_saveToTemplate; 			//this line determines the flag marker type -- Example: ["flagMarkerType", "flag_NATO"] - ENTER ONLY ONE OPTION

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "I_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_AAF_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["WM_ITT_Imperial", "WM_74Z_Imperial_Brown"]] call _fnc_saveToTemplate; 			//this line determines basic vehicles, the lightest kind available. -- Example: ["vehiclesBasic", ["B_Quadbike_01_F"]] -- Array, can contain multiple assets
["vehiclesLightUnarmed", ["WM_ITT_Medical"]] call _fnc_saveToTemplate; 		//this line determines light and unarmed vehicles. -- Example: ["vehiclesLightUnarmed", ["B_MRAP_01_F"]] -- Array, can contain multiple assets
["vehiclesLightArmed",["WM_ITT_Imperial", "WM_ATST", "3AS_PX10_IMP_F", "3AS_PX10_IMP_UP"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["WM_ITT_Imperial", "WM_ITT_Imperial"]] call _fnc_saveToTemplate; 			//this line determines the trucks -- Example: ["vehiclesTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesCargoTrucks", ["WM_ITT_Imperial", "WM_ITT_Imperial"]] call _fnc_saveToTemplate; 		//this line determines cargo trucks -- Example: ["vehiclesCargoTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesAmmoTrucks", ["WM_ITT_Imperial"]] call _fnc_saveToTemplate; 		//this line determines ammo trucks -- Example: ["vehiclesAmmoTrucks", ["B_Truck_01_ammo_F"]] -- Array, can contain multiple assets
["vehiclesRepairTrucks", ["WM_ITT_Imperial"]] call _fnc_saveToTemplate; 		//this line determines repair trucks -- Example: ["vehiclesRepairTrucks", ["B_Truck_01_Repair_F"]] -- Array, can contain multiple assets
["vehiclesFuelTrucks", ["WM_ITT_Imperial"]] call _fnc_saveToTemplate;		//this line determines fuel trucks -- Array, can contain multiple assets
["vehiclesMedical", ["WM_ITT_Medical"]] call _fnc_saveToTemplate;			//this line determines medical vehicles -- Array, can contain multiple assets
["vehiclesAPCs", ["3AS_UTAT_Imperial", "WM_M1", "WM_M1G", "WM_M1L", "WM_M1R", "WM_ATST", "3AS_Jug_Imperial", "3AS_ATTE_Imperial"]] call _fnc_saveToTemplate; 				//this line determines APCs -- Example: ["vehiclesAPCs", ["B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_CRV_F"]] -- Array, can contain multiple assets
["vehiclesTanks", ["3AS_ATAT", "3AS_ATAT_Command", "3AS_ATAT_Elite", "WM_M1GS", "WM_M1GH"]] call _fnc_saveToTemplate; 			//this line determines tanks -- Example: ["vehiclesTanks", ["B_MBT_01_cannon_F", "B_MBT_01_TUSK_F"]] -- Array, can contain multiple assets
["vehiclesAA", ["3AS_RX200_Base", "B_APC_Tracked_01_AA_F"]] call _fnc_saveToTemplate; 				//this line determines AA vehicles -- Example: ["vehiclesAA", ["B_APC_Tracked_01_AA_F"]] -- Array, can contain multiple assets
["vehiclesLightAPCs", ["WM_M1R", "WM_M1G", "3AS_UTAT_Imperial"]] call _fnc_saveToTemplate;			//this line determines light APCs
["vehiclesIFVs", ["3AS_ATTE_Imperial", "WM_M1R", "WM_M1G", "WM_M1R", "3AS_PX10_IMP_R3", "3AS_PX10_IMP_F"]] call _fnc_saveToTemplate;				//this line determines IFVs

["vehiclesTransportBoats", ["optre_catfish_unarmed_f"]] call _fnc_saveToTemplate; 	//this line determines transport boats -- Example: ["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesGunBoats", ["optre_catfish_aa_f", "optre_catfish_atgm_f", "optre_catfish_gauss_f", "optre_catfish_mg_f"]] call _fnc_saveToTemplate; 			//this line determines gun boats -- Example: ["vehiclesGunBoats", ["B_Boat_Armed_01_minigun_F"]] -- Array, can contain multiple assets
["vehiclesAmphibious", []] call _fnc_saveToTemplate; 		//this line determines amphibious vehicles  -- Example: ["vehiclesAmphibious", ["B_APC_Wheeled_01_cannon_F"]] -- Array, can contain multiple assets

["vehiclesPlanesCAS", ["WM_TieBomber", "WM_TieBomber_Cluster"]] call _fnc_saveToTemplate; 		//this line determines CAS planes -- Example: ["vehiclesPlanesCAS", ["B_Plane_CAS_01_dynamicLoadout_F"]] -- Array, can contain multiple assets
["vehiclesPlanesAA", ["WM_TieAdvanced", "WM_Tiefighter", "WM_TieInterceptor", "3AS_VWing_Imperial"]] call _fnc_saveToTemplate; 			//this line determines air superiority planes -- Example: ["vehiclesPlanesAA", ["B_Plane_Fighter_01_F"]] -- Array, can contain multiple assets
["vehiclesPlanesTransport", ["3AS_Gozanti_F", "3AS_Imperial_Transport_01"]] call _fnc_saveToTemplate; 	//this line determines transport planes -- Example: ["vehiclesPlanesTransport", ["B_T_VTOL_01_infantry_F"]] -- Array, can contain multiple assets

["vehiclesHelisLight", ["WM_Tiefighter"]] call _fnc_saveToTemplate; 		//this line determines light helis -- Example: ["vehiclesHelisLight", ["B_Heli_Light_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisTransport", ["WM_Lambda", "3AS_LAAT_Mk1Lights_Imperial"]] call _fnc_saveToTemplate; 	//this line determines transport helis -- Example: ["vehiclesHelisTransport", ["B_Heli_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisLightAttack", ["3AS_Patrol_LAAT_Imperial"]] call _fnc_saveToTemplate;		// this line determines light attack helicopters
["vehiclesHelisAttack", ["3AS_LAAT_Mk1_Imperial"]] call _fnc_saveToTemplate; 		//this line determines attack helis -- Example: ["vehiclesHelisAttack", ["B_Heli_Attack_01_F"]] -- Array, can contain multiple assets

["vehiclesArtillery", ["mti_factions_cis_Hailfire_Rocket", "mti_factions_cis_bawhag"]] call _fnc_saveToTemplate;		//this line determines SPAs
["magazines", createHashMapFromArray [
    ["mti_factions_cis_Hailfire_Rocket", ["3AS_15Rnd_230mm_rockets"]],
    ["mti_factions_cis_bawhag",["32Rnd_155mm_Mo_shells"]]
]] call _fnc_saveToTemplate;			//this line determines ammo to be used with specified SPA, hashMap makes sure that SPA gets proper ammo

["uavsAttack", ["mti_factions_old_republic_Osprey"]] call _fnc_saveToTemplate; 				//this line determines attack UAVs -- Example: ["uavsAttack", ["B_UAV_02_CAS_F"]] -- Array, can contain multiple assets
["uavsPortable", ["3AS_H3NR1_Drone_Scout_Imperial"]] call _fnc_saveToTemplate; 				//this line determines portable UAVs -- Example: ["uavsPortable", ["B_UAV_01_F"]] -- Array, can contain multiple assets

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", ["WM_ATST", "WM_74Z_Imperial_Brown"]] call _fnc_saveToTemplate; //this line determines lightly armed militia vehicles -- Example: ["vehiclesMilitiaLightArmed", ["B_G_Offroad_01_armed_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaTrucks", ["WM_ITT_Imperial"]] call _fnc_saveToTemplate; 	//this line determines militia trucks (unarmed) -- Example: ["vehiclesMilitiaTrucks", ["B_G_Van_01_transport_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaCars", ["WM_M1R", "WM_ATST"]] call _fnc_saveToTemplate; 		//this line determines militia cars (unarmed) -- Example: ["vehiclesMilitiaCars", ["B_G_Offroad_01_F"]] -- Array, can contain multiple assets

private _militiaAPCs = if (_hasTanks) then {["I_LT_01_cannon_F"]} else {[]};		//this line adds dlc APC to an array if dlc is loaded
["vehiclesMilitiaAPCs", _militiaAPCs] call _fnc_saveToTemplate;						//this line determines militia APCs

["vehiclesPolice", ["WM_ITT_Imperial"]] call _fnc_saveToTemplate; 			//this line determines police cars -- Example: ["vehiclesPolice", ["B_GEN_Offroad_01_gen_F"]] -- Array, can contain multiple assets

["staticMGs", ["mti_factions_cis_Eweb_Armoured", "mti_factions_cis_EWeb_Unarmoured", "mti_factions_cis_DF9_HE", "mti_factions_cis_J10s"]] call _fnc_saveToTemplate; 					//this line determines static MGs -- Example: ["staticMG", ["B_HMG_01_high_F"]] -- Array, can contain multiple assets
["staticAT", ["B_static_AT_F", "ace_dragon_staticAssembled", "mti_factions_cis_ParticleCannon"]] call _fnc_saveToTemplate; 					//this line determinesstatic ATs -- Example: ["staticAT", ["B_static_AT_F"]] -- Array, can contain multiple assets
["staticAA", ["OPTRE_Static_AA", "B_T_Static_AA_F", "B_SAM_System_01_F", "B_AAA_System_01_F"]] call _fnc_saveToTemplate; 					//this line determines static AAs -- Example: ["staticAA", ["B_static_AA_F"]] -- Array, can contain multiple assets
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
    "WhiteHead_03",
    "Barklem",
    "RussianHead_4",
    "LivonianHead_5",
    "PersianHead_A3_02",
    "MTI_female_bun_03",
    "WhiteHead_19",
    "RussianHead_2",
    "WhiteHead_31",
    "WhiteHead_20",
    "LivonianHead_9",
    "DSA_VampFace_01"
]] call _fnc_saveToTemplate;
["voices", ["Male01GRE","Male02GRE","Male03GRE","Male04GRE","Male05GRE","Male06GRE"]] call _fnc_saveToTemplate;

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
_loadoutData set ["ATLaunchers", ["WM_Launch_HH15"]];
_loadoutData set ["missileATLaunchers", [
["WM_Launch_HH12", "", "acc_pointer_IR", "", ["WM_ProtonTorpedo"], [], ""]
]];
_loadoutData set ["AALaunchers", [
["SWLW_E60R_AA", "", "acc_pointer_IR", "", ["SWLW_e60r_aa_mag"], [], ""]
]];
_loadoutData set ["sidearms", ["WM_EC17"]];

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
_loadoutData set ["binoculars", ["Binocular"]];		//this line determines the binoculars
_loadoutData set ["rangefinders", ["Rangefinder"]];

_loadoutData set ["traitorUniforms", ["mti_armoury_trooper_uniform_Arcanist"]];		//this line determines traitor uniforms for traitor mission
_loadoutData set ["traitorVests", ["mti_armoury_trooper_vest_Arcanist"]];			//this line determines traitor vesets for traitor mission
_loadoutData set ["traitorHats", ["mti_armoury_trooper_helmet_Arcanist"]];			//this line determines traitor headgear for traitor missions

_loadoutData set ["officerUniforms", ["WM_ISBUniform"]];		//this line determines officer uniforms for assassination mission
_loadoutData set ["officerVests", ["JLTS_CloneVestHolster"]];			//this line determines officer vesets for assassination mission
_loadoutData set ["officerHats", ["WM_ISBCap"]];	//this line determines officer headgear for assassination missions

_loadoutData set ["uniforms", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slUniforms", []];
_loadoutData set ["vests", []];						//don't fill this line - this is only to set the variable
_loadoutData set ["Hvests", []];
_loadoutData set ["sniVests", ["WM_Pauldron"]];
_loadoutData set ["backpacks", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["longRangeRadios", ["WM_Stormtrooper_Backpack_RTO"]];
_loadoutData set ["atBackpacks", ["WM_Artillery_Pack"]];
_loadoutData set ["helmets", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slHat", []];
_loadoutData set ["sniHats", []];

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
    _slItems append ["ACE_microDAGR", "ACE_DAGR", "MTI_PBA", "MTI_Medisensor", "MTI_medical_stretcher_folded", "MTI_catTab_tablet"];
    _eeItems append ["MTI_Detector", "ACE_DefusalKit", "JLTS_riot_shield_item", "ACE_Clacker", "MTI_BactaPatch", "ACE_personalAidKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500", "mti_tech_techpad", "mti_drones_mse6_packed", "JLTS_MSE6_toolkit", "JLTS_MSE6_manual", "MTI_catTab_phone"];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", ["MTI_BactaPatch", "MTI_BactaSpray", "ACE_bloodIV", "MTI_PBA", "ACE_surgicalKit", "ACE_personalAidKit"]];
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
_sfLoadoutData set ["uniforms", ["WM_StormCommando_ForestArmor"]];
_sfLoadoutData set ["vests", ["WM_ScoutVest"]];
_sfLoadoutData set ["Hvests", ["WM_ScoutVest"]];
_sfLoadoutData set ["backpacks", ["mti_armoury_arc_backpack_base", "mti_factions_bns_Medic_BP", "mti_armoury_commando_backpack_Night", "mti_armoury_fieldsupport_backpack_fsb_trooper"]];
_sfLoadoutData set ["helmets", ["WM_StormCommando_ForestHelmet"]];
_sfLoadoutData set ["binoculars", ["Laserdesignator_03"]];

_sfLoadoutData set ["slRifles", [
["MTI_DC19SC", "muzzle_snds_M", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_DC19SC", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", [], [], ""],
["MTI_DC19LE", "muzzle_snds_M", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["mti_factions_Imperial_DLT19", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", [], [], ""]
]];
_sfLoadoutData set ["rifles", [
["mti_factions_Imperial_DLT19D", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
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
["mti_factions_Imperial_E11", "muzzle_snds_acp", "", "optic_Holosight", [], [], ""],
["mti_factions_Imperial_E11", "muzzle_snds_acp", "", "optic_Aco_smg", [], [], ""],
["mti_factions_Imperial_DLT19", "muzzle_snds_570", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_Imperial_DLT19", "muzzle_snds_570", "acc_pointer_IR", "optic_Aco_smg", [], [], ""],
["mti_factions_Imperial_DLT19D", "muzzle_snds_L", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_Imperial_DLT19D", "muzzle_snds_L", "acc_pointer_IR", "optic_Aco_smg", [], [], ""]
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
_eliteLoadoutData set ["uniforms", ["WM_DarkTrooperArmor"]];
_eliteLoadoutData set ["slUniforms", ["WM_DarkTrooperArmor"]];
_eliteLoadoutData set ["vests", ["GoG_HolsterSwordVestBack"]];
_eliteLoadoutData set ["Hvests", ["GoG_HolsterSwordVestBack"]];
_eliteLoadoutData set ["backpacks", ["WM_Darktrooper_Jetpack"]];
_eliteLoadoutData set ["helmets", ["WM_DarktrooperHelmet"]];
_eliteLoadoutData set ["binoculars", ["Laserdesignator_03"]];

_eliteLoadoutData set ["slRifles", [
["MTI_DC19SC", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_DC19LE", "", "acc_pointer_IR", "optic_Hamr", [], [], ""],
["WM_OppressorFlamethrower", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["mti_factions_Imperial_E11", "", "acc_pointer_IR", "optic_Hamr", [], [], ""]
]];
_eliteLoadoutData set ["rifles", [
["mti_factions_Imperial_E11", "", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_Imperial_DLT19", "", "acc_pointer_IR", "optic_Holosight_lush_F", [], [], ""],
["MTI_DC19SC", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_DC19LE", "", "acc_pointer_IR", "optic_Hamr", [], [], ""],
["WM_E11D", "", "acc_pointer_IR", "optic_Hamr", [], [], ""],
["MTI_DC19SC", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_DC19LE", "", "acc_pointer_IR", "optic_Hamr", [], [], ""],
["MTI_Causality", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_Z6_Small", "", "acc_pointer_IR", "optic_Hamr", [], [], ""],
["mti_factions_old_republic_BoltBlaster_Shotgun", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_E403", "", "acc_pointer_IR", "optic_Hamr", ["MTI_E403_HE_Mag"], [], ""],
["LFP_T7", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["LFP_Westar45", "", "acc_pointer_IR", "optic_Hamr", ["LFP_Westar45SMG_Mag"], [], ""],
["mti_factions_Imperial_E11", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_Imperial_DLT19D", "", "acc_flashlight", "optic_Holosight_lush_F", [], [], ""],
["3AS_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["3AS_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], [], ""],
["3AS_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], ""],
["3AS_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["3AS_E11Stock", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["3AS_DLT19", "", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["3AS_DLT19X", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Laser_DLT19", "3AS_Imp_Optic_DLT19x", [], [], ""],
["3AS_E11_GL", "", "acc_flashlight", "3AS_Imp_Optic_2", [], ["OPTRE_3Rnd_MasterKey_Pellets"], ""]
]];
_eliteLoadoutData set ["carbines", [
["mti_factions_Imperial_DLT19D", "", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["MTI_WestarM5", "", "acc_pointer_IR", "optic_Holosight_lush_F", [], [], ""],
["mti_factions_Imperial_E11", "", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_Imperial_DLT19", "", "acc_pointer_IR", "optic_Holosight_lush_F", [], [], ""],
["MTI_DC19SC", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_DC19LE", "", "acc_pointer_IR", "optic_Hamr", [], [], ""],
["WM_E11D", "", "acc_pointer_IR", "optic_Hamr", [], [], ""],
["MTI_DC19SC", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_DC19LE", "", "acc_pointer_IR", "optic_Hamr", [], [], ""],
["MTI_Causality", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_Z6_Small", "", "acc_pointer_IR", "optic_Hamr", [], [], ""],
["mti_factions_old_republic_BoltBlaster_Shotgun", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_E403", "", "acc_pointer_IR", "optic_Hamr", ["MTI_E403_HE_Mag"], [], ""],
["LFP_T7", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["LFP_Westar45", "", "acc_pointer_IR", "optic_Hamr", ["LFP_Westar45SMG_Mag"], [], ""],
["mti_factions_Imperial_E11", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_Imperial_DLT19D", "", "acc_flashlight", "optic_Holosight_lush_F", [], [], ""],
["3AS_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["3AS_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], [], ""],
["3AS_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], ""],
["3AS_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["3AS_E11Stock", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["3AS_DLT19", "", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["3AS_DLT19X", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Laser_DLT19", "3AS_Imp_Optic_DLT19x", [], [], ""],
["3AS_E11_GL", "", "acc_flashlight", "3AS_Imp_Optic_2", [], ["OPTRE_3Rnd_MasterKey_Pellets"], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["3AS_DC15C_GL", "", "acc_flashlight", "3AS_optic_reflex_DC15C", ["3AS_40Rnd_EM40_Mag"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_eliteLoadoutData set ["SMGs", [
["mti_factions_Imperial_E11", "", "", "optic_Holosight", [], [], ""],
["mti_factions_Imperial_DLT19", "", "", "optic_Aco_smg", [], [], ""],
["mti_factions_Imperial_DLT19D", "", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["MTI_WestarM5", "", "acc_pointer_IR", "optic_Aco_smg", [], [], ""],
["MTI_Factions_SpaceDMR1", "", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["MTI_DLT19X", "", "acc_pointer_IR", "optic_Aco_smg", [], [], ""],
["mti_factions_Imperial_E11", "", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_Imperial_DLT19", "", "acc_pointer_IR", "optic_Holosight_lush_F", [], [], ""],
["MTI_DC19SC", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_DC19LE", "", "acc_pointer_IR", "optic_Hamr", [], [], ""],
["WM_E11D", "", "acc_pointer_IR", "optic_Hamr", [], [], ""],
["MTI_DC19SC", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_DC19LE", "", "acc_pointer_IR", "optic_Hamr", [], [], ""],
["MTI_Causality", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_Z6_Small", "", "acc_pointer_IR", "optic_Hamr", [], [], ""],
["mti_factions_old_republic_BoltBlaster_Shotgun", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["MTI_E403", "", "acc_pointer_IR", "optic_Hamr", ["MTI_E403_HE_Mag"], [], ""],
["LFP_T7", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["LFP_Westar45", "", "acc_pointer_IR", "optic_Hamr", ["LFP_Westar45SMG_Mag"], [], ""],
["mti_factions_Imperial_E11", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_Imperial_DLT19D", "", "acc_flashlight", "optic_Holosight_lush_F", [], [], ""],
["3AS_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["3AS_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], [], ""],
["3AS_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], ""],
["3AS_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["3AS_E11Stock", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["3AS_DLT19", "", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["3AS_DLT19X", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Laser_DLT19", "3AS_Imp_Optic_DLT19x", [], [], ""],
["3AS_E11_GL", "", "acc_flashlight", "3AS_Imp_Optic_2", [], ["OPTRE_3Rnd_MasterKey_Pellets"], ""],
["MTI_DC17M", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", ["MTI_DC17M_mag"], [], ""],
["MTI_DC17M", "", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", ["MTI_DC17M_mag_sniper"], [], "3AS_Imp_Bipod_DLT19"],
["MTI_Z6_Heavy", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Laser_DLT19", "3AS_Imp_Optic_DLT19x", [], [], ""],
["3AS_E11_GL", "", "acc_flashlight", "3AS_Imp_Optic_2", [], ["1Rnd_HE_Grenade_shell"], ""]
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
        ["MTI_T21", "", "acc_pointer_IR", "optic_Hamr", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
        ["MTI_T21", "", "acc_pointer_IR", "optic_NVS", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"]
    ]];
};

private _marksmanRifles = [
    ["LFP_DC15xm", "", "acc_pointer_IR", "optic_tws", [], [], "bipod_01_F_blk"],
    ["LFP_dc15xs", "", "acc_pointer_IR", "optic_NVS", [], [], "bipod_01_F_blk"],
    ["MTI_Bowcaster", "", "acc_pointer_IR", "optic_SOS", [], [], "bipod_01_F_blk"],
    ["3AS_DLT19X", "", "acc_pointer_IR", "optic_Hamr", [], [], "bipod_01_F_blk"]
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
["OPTRE_SRS99D", "OPTRE_SRS99D_Suppressor", "", "TKE_10xSightV2", [], [], ""],
["LFP_ar300", "", "", "optic_LRPS", [], ["LFP_WestarM5_GR"], ""]
]];
_eliteLoadoutData set ["sidearms", [
["WM_SE14C", "", "acc_flashlight_pistol", "WM_SE14C_Scope", [], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["uniforms", ["WM_StormArmor"]];
_militaryLoadoutData set ["slUniforms", ["WM_ArtilleryArmor"]];
_militaryLoadoutData set ["vests", ["GoG_HolsterSwordVest", "WM_Pauldron"]];
_militaryLoadoutData set ["Hvests", ["GoG_HolsterSwordVest"]];
_militaryLoadoutData set ["backpacks", ["WM_TritonRuck", "WM_Stormtrooper_Backpack_RTO", "WM_Stormtrooper_Backpack"]];
_militaryLoadoutData set ["helmets", ["WM_StormHelmet"]];
_militaryLoadoutData set ["binoculars", ["Laserdesignator_03"]];

_militaryLoadoutData set ["slRifles", [
["MTI_T21", "", "acc_pointer_IR", "optic_MRCO", [], [], ""],
["WM_DLT19_Wood", "", "acc_pointer_IR", "optic_Hamr", [], [], ""],
["3AS_Arkanian_F", "", "acc_pointer_IR", "3AS_Optic_Arkanian_2_F", [], [], ""],
["MTI_WestarM5", "", "acc_pointer_IR", "OPTRE_M393_EOTECH", [], [], ""]
]];
_militaryLoadoutData set ["rifles", [
["mti_factions_Imperial_E11", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_Imperial_DLT19D", "", "acc_flashlight", "optic_Holosight_lush_F", [], [], ""],
["3AS_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["3AS_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], [], ""],
["3AS_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], ""],
["3AS_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["3AS_E11Stock", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["3AS_DLT19", "", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["3AS_DLT19X", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Laser_DLT19", "3AS_Imp_Optic_DLT19x", [], [], ""],
["3AS_E11_GL", "", "acc_flashlight", "3AS_Imp_Optic_2", [], ["OPTRE_3Rnd_MasterKey_Pellets"], ""]
]];
_militaryLoadoutData set ["carbines", [
["mti_factions_Imperial_E11", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_Imperial_DLT19", "", "acc_flashlight", "optic_Holosight_lush_F", [], [], ""],
["3AS_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["3AS_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], [], ""],
["3AS_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], ""],
["3AS_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["3AS_E11Stock", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["3AS_E11_GL", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_E11", ["3AS_40Rnd_EM40_Mag_Imp"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["SMGs", [
["MTI_ZH73", "", "", "optic_Holosight", [], [], ""],
["mti_factions_Imperial_E11", "", "", "optic_Aco_smg", [], [], ""],
["MTI_WestarM5", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_Imperial_E11", "", "acc_flashlight", "optic_Aco_smg", [], [], ""],
["mti_factions_Imperial_DLT19D", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["mti_factions_Imperial_DLT19D", "", "acc_flashlight", "optic_Aco_smg", [], [], ""],
["3AS_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["3AS_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], [], ""],
["3AS_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], ""],
["3AS_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["3AS_E11Stock", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""]
]];

private _mgs = [
    ["mti_factions_Imperial_DLT19D", "", "", "optic_NVS", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
    ["mti_factions_Imperial_DLT19D", "", "acc_flashlight", "optic_MRCO", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
    ["MTI_WestarM5", "", "acc_flashlight", "optic_Holosight_blk_F", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
    ["MTI_WestarM5", "", "acc_flashlight", "optic_Hamr", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
    ["3AS_DLT19", "", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
    ["3AS_DLT19", "", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_1", [], [], "3AS_Imp_Bipod_DLT19"],
    ["3AS_DLT19", "", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_3", [], [], "3AS_Imp_Bipod_DLT19"]
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
    ["3AS_DLT19X", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Laser_DLT19", "3AS_Imp_Optic_DLT19x", [], [], "3AS_Imp_Bipod_DLT19"],
    ["WM_DLT19X", "", "acc_flashlight", "optic_SOS", [], [], "WM_DLT_Bipod"],
    ["3AS_DLT19X", "", "acc_flashlight", "optic_Hamr", [], [], "bipod_01_F_blk"]
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
["3AS_DLT19X", "", "", "optic_SOS", [], [], ""],
["mti_factions_Imperial_DLT19D", "", "", "optic_LRPS", [], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
["3AS_RK3", "", "JLTS_DC17SA_flashlight", "", [], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["WM_ShockArmor"]];
_policeLoadoutData set ["vests", ["WM_Basic_armor"]];
private _helmets = ["WM_ShockHelmet"];
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
["3AS_ScatterGun_F", "", "acc_flashlight", "optic_Aco_smg", [], [], ""]
]];
_policeLoadoutData set ["sidearms", ["MTI_RSKF44"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["WM_ArmyUniform"]];
_militiaLoadoutData set ["vests", ["WM_ArmyVest"]];
_militiaLoadoutData set ["Hvests", ["WM_ArmyVest"]];
_militiaLoadoutData set ["backpacks", ["WM_Stormtrooper_Backpack", "WM_Stormtrooper_Backpack", "ls_mandalorian_standard_backpack"]];
_militiaLoadoutData set ["helmets", ["WM_ArmyHelmet", "WM_DriverHelmet"]];

if (_hasLawsOfWar) then {
    _militiaLoadoutData set ["helmets", ["H_HelmetIA", "H_PASGT_basic_olive_F", "H_Booniehat_dgtl", "H_Cap_blk_Raven"]];
} else {
    _militiaLoadoutData set ["helmets", ["WM_ArmyHelmet", "WM_DriverHelmet"]];
};

_militiaLoadoutData set ["slRifles", [
["mti_factions_Imperial_E11", "", "acc_flashlight", "SFA_DLA13_scope", ["mti_factions_sith_imperials_Rifle_Red_Mag"], [], ""],
["mti_factions_Imperial_E11", "", "acc_flashlight", "SFA_DLA13_scope", ["mti_factions_sith_imperials_Rifle_Red_Mag"], [], ""],
["3AS_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["3AS_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], [], ""],
["3AS_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], ""],
["3AS_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["3AS_E11Stock", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["3AS_DLT19", "", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["3AS_DLT19X", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Laser_DLT19", "3AS_Imp_Optic_DLT19x", [], [], ""],
["3AS_E11_GL", "", "acc_flashlight", "3AS_Imp_Optic_2", [], ["OPTRE_3Rnd_MasterKey_Pellets"], ""]
]];
_militiaLoadoutData set ["rifles", [
["mti_factions_Imperial_E11", "", "acc_flashlight", "SFA_DLA13_scope", ["mti_factions_sith_imperials_Rifle_Red_Mag"], [], ""],
["mti_factions_Imperial_E11", "", "acc_flashlight", "SFA_DLA13_scope", ["mti_factions_sith_imperials_Rifle_Red_Mag"], [], ""],
["3AS_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["3AS_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], [], ""],
["3AS_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], ""],
["3AS_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["3AS_E11Stock", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["3AS_DLT19", "", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["3AS_DLT19X", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Laser_DLT19", "3AS_Imp_Optic_DLT19x", [], [], ""],
["3AS_E11_GL", "", "acc_flashlight", "3AS_Imp_Optic_2", [], ["OPTRE_3Rnd_MasterKey_Pellets"], ""]
]];
_militiaLoadoutData set ["carbines", [
["mti_factions_Imperial_E11", "", "acc_flashlight", "SFA_DLA13_scope", ["mti_factions_sith_imperials_Rifle_Red_Mag"], [], ""],
["mti_factions_Imperial_E11", "", "acc_flashlight", "SFA_DLA13_scope", ["mti_factions_sith_imperials_Rifle_Red_Mag"], [], ""],
["3AS_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_1", [], [], ""],
["3AS_E11", "", "3AS_Imp_Light_E11", "3AS_Imp_Optic_2", [], [], ""],
["3AS_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_3", [], [], ""],
["3AS_E11", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["3AS_E11Stock", "", "3AS_Imp_Laser_E11", "3AS_Imp_Optic_E11", [], [], ""],
["3AS_DLT19", "", "3AS_Imp_Light_DLT19", "3AS_Imp_Optic_2", [], [], "3AS_Imp_Bipod_DLT19"],
["3AS_DLT19X", "3AS_Imp_Muzzle_DLT19x", "3AS_Imp_Laser_DLT19", "3AS_Imp_Optic_DLT19x", [], [], ""],
["3AS_E11_GL", "", "acc_flashlight", "3AS_Imp_Optic_2", [], ["OPTRE_3Rnd_MasterKey_Pellets"], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
["3AS_DC15C_GL", "", "acc_flashlight", "3AS_optic_reflex_DC15C", ["3AS_40Rnd_EM40_Mag"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_militiaLoadoutData set ["SMGs", ["WM_E11D", "MTI_Cinnagaran", "mti_factions_Imperial_DLT19", "mti_factions_Imperial_E11"]];
_militiaLoadoutData set ["machineGuns", [
["MTI_DC15L", "", "acc_flashlight", "MTI_HRCO_grn", ["MTI_DC15L_mag"], [], "3AS_Bipod_DC15L_f"]
]];

private _marksmanRifles = [["MTI_Valken38X", "", "acc_flashlight", "MTI_HDMS_blu", [], [], ""]];
private _sniperRifles = [["WM_DLT19X", "", "", "", [], [], ""]];
_militiaLoadoutData set ["marksmanRifles", _marksmanRifles];
_militiaLoadoutData set ["sniperRifles", _sniperRifles];
_militiaLoadoutData set ["sidearms", ["WM_SE14C"]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["WM_OfficerUniform"]];
_crewLoadoutData set ["vests", ["WM_Basic_armor"]];
_crewLoadoutData set ["helmets", ["WM_OfficerHelmet"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["WM_PilotArmor"]];
_pilotLoadoutData set ["vests", ["WM_Basic_armor"]];
_pilotLoadoutData set ["helmets", ["WM_PilotHelmet"]];





/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["slHat", 1]] call _fnc_setHelmet;
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
	["ExplosivesExpert", _explosivesExpertTemplate, [], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [["baseClass", "O_soldier_Melee_SW", true]], [_prefix]]
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