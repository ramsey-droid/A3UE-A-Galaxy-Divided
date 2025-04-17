class handgunsMTI
{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_handguns"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

	ITEM(MTI_DC15SA, 350, PISTOL_STOCK); //MTI_DC15SA_mag
	ITEM(MTI_DC17s, 350, PISTOL_STOCK); //MTI_DC17s_mag
	ITEM(MTI_DC17s_dual, 350, PISTOL_STOCK); // MTI_DC17s_ARC_mag
	ITEM(MTI_defibrillator, 380, PISTOL_STOCK); // MTI_defibrillator_mag
	ITEM(MTI_DC19SA, 400, PISTOL_STOCK); // MTI_DC19SA_mag
	ITEM(MTI_RSKF44, 380, PISTOL_STOCK); // MTI_RSKF44_mag
};

class riflesMTI
{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_rifles"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

	ITEM(MTI_DC17M, 700, RIFLE_STOCK);
	ITEM(MTI_DC15LE, 650, RIFLE_STOCK);

	ITEM(MTI_DC15L, 550, RIFLE_STOCK);
	ITEM(MTI_DC15C_GL, 500, RIFLE_STOCK);
	ITEM(MTI_DC15C, 500, RIFLE_STOCK);

	ITEM(MTI_Causality, 700, RIFLE_STOCK);
	ITEM(MTI_WestarM5, 600, RIFLE_STOCK);

	ITEM(MTI_Arkanian, 700, RIFLE_STOCK);
	ITEM(MTI_DC19SC, 800, RIFLE_STOCK);

	ITEM(MTI_RD4, 1250, RIFLE_STOCK);
};

class sniperRiflesMTI
{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_sniperRifles"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

	ITEM(MTI_DC19X, 900, RIFLE_STOCK);
	ITEM(MTI_DLT19X, 850, RIFLE_STOCK);
	ITEM(MTI_DC15X, 750, RIFLE_STOCK);

	ITEM(MTI_Verpine, 1200, 5);
	ITEM(MTI_DC19LE, 1200, 5);

	ITEM(MTI_Bowcaster, 1800, 5);
	ITEM(MTI_NT242p, 1250, 5);
};

class mgMTI
{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_mgs"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

	ITEM(MTI_Z6_Small, 700, RIFLE_STOCK);

	ITEM(MTI_E403, 1800, RIFLE_STOCK);
	ITEM(MTI_BTX, 950, RIFLE_STOCK);

	ITEM(MTI_Z6_Heavy, 1500, RIFLE_STOCK);
};

class smgMTI
{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_smgs"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

	ITEM(MTI_DC15S, 350, RIFLE_STOCK);
	ITEM(MTI_Cinnagaran, 360, RIFLE_STOCK);
};

class launchersMTI
{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_launchers"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

	ITEM(MTI_RPS6_D_Loaded, 450, LAUNCHER_STOCK);

	ITEM(MTI_RPS6, 600, LAUNCHER_STOCK);

	ITEM(MTI_RPS6_HP, 1800, 3);
	ITEM(MTI_PLX1, 2800, 3);
};

class launcherMagazinesMTI
{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_launcherAmmo"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

	class MTI_RPS6_mag_HE {
		price = 315;
		stock = 50;
	};

	class MTI_RPS6_mag_AT {
		price = 330;
		stock = 50;
	};
	class MTI_RPS6_HP_mag_AA {
		price = 330;
		stock = 50;
	};

	class MTI_RPS6_HP_mag_AT {
		price = 350;
		stock = 10;
	};

	class MTI_PLX1_mag_AT {
		price = 370;
		stock = 10;
	};
	class MTI_PLX1_mag_AA {
		price = 390;
		stock = 10;
	};
};

class navigationVanilla
{
	displayName = __EVAL(formatText ["%1 %2, %3 %4 %5", localize "STR_A3AU_Vanilla", localize "STR_A3AU_gps", localize "STR_A3AU_binoculars", localize "STR_A3AU_and", localize "STR_A3AU_nvgs"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\compass_ca.paa";

	ITEM(ItemGPS, 275, NN_STOCK);
	ITEM(JLTS_clone_comlink, 275, NN_STOCK);
	ITEM(JLTS_CloneBinocular_black, 275, NN_STOCK);

	ITEM(NVGoggles, 405, NN_STOCK);
	ITEM(mti_armoury_trooper_nvg_Chip, 275, NN_STOCK);
	ITEM(mti_armoury_commando_nvg_chip, 375, NN_STOCK);
};

class pointersMTI
{
	displayName = __EVAL(formatText ["%1 %2 %3 %4", localize "STR_A3AU_Vanilla", localize "STR_A3AU_pointers", localize "STR_A3AU_and", localize "STR_A3AU_flashlights"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemAcc_ca.paa";

	ITEM(acc_flashlight, 255, PN_STOCK);
	ITEM(acc_flashlight_smg_01, 255, PN_STOCK);
	ITEM(acc_pointer_IR, 255, PN_STOCK);
	ITEM(acc_flashlight_pistol, 255, PN_STOCK);
};

class muzzlesMTI
{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_muzzles"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";

	ITEM(MTI_DC15LE_muzzle, 325, MZ_STOCK);

};

class opticsMTI
{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_sights"]);
	picture = "\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\ItemOptic_ca.paa";

	class MTI_Verpine_scope {
		price = 385;
		stock = 5;
	};

	class MTI_Bowcaster_scope {
		price = 300;
		stock = 5;
	};

	class MTI_HMRCO_blu {
		price = 285; 
		stock = 25;
	};
	class MTI_HMRCO_grn {
		price = 265; 
		stock = 10;
	};
	class MTI_HMRCO_red {
		price = 265; 
		stock = 10;
	};
	class MTI_HMRD_blu {
		price = 255; 
		stock = 10;
	};

	class MTI_HMRD_grn {
		price = 255;
		stock = 10;
	};

	class MTI_HRCO_blu {
		price = 255;
		stock = 10;
	};

	class MTI_HRCO_grn {
		price = 255;
		stock = 10;
	};

	class MTI_HLRPS_blu {
		price = 255;
		stock = 100;
	};

	class MTI_HDMS_red {
		price = 255;
		stock = 100;
	};

	class MTI_Holosight_red {
		price = 255;
		stock = 100;
	};

	class MTI_EE2_scope {
		price = 245;
		stock = 100;
	};

	class MTI_Holosight_grn {
		price = 240;
		stock = 100;
	};

};

class magazinesMTI
{
	displayName = __EVAL(formatText["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_magazines"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

	class Laserbatteries {
		price = 235;
		stock = MAGAZINE_STOCK;
	};

	///////////////////////////////////////////////////////
	// Underbarrel
	///////////////////////////////////////////////////////
	class MTI_40mm_mag_canister_lgbt {
		price = 150;
		stock = MAGAZINE_STOCK;
	};
	class MTI_40mm_mag_canister_trans {
		price = 150;
		stock = MAGAZINE_STOCK;
	};
	class MTI_RD4_mag {
		price = 150;
		stock = MAGAZINE_STOCK;
	};
	class MTI_MED_UGL_Mag {
		price = 250;
		stock = MAGAZINE_STOCK;
	};
	class MTI_40mm_mag_mine {
		price = 150;
		stock = MAGAZINE_STOCK;
	};
	class MTI_40mm_mag_HE {
		price = 150;
		stock = MAGAZINE_STOCK;
	};
	class MTI_RD4_mag_6rnd {
		price = 250;
		stock = MAGAZINE_STOCK;
	};
	class MTI_40mm_mag_cluster {
		price = 150;
		stock = MAGAZINE_STOCK;
	};
	class MTI_40mm_mag_cluster_airburst {
		price = 150;
		stock = MAGAZINE_STOCK;
	};
	class MTI_40mm_mag_shrapnel {
		price = 50;
		stock = MAGAZINE_STOCK;
	};
	class MTI_40mm_mag_canister {
		price = 50;
		stock = MAGAZINE_STOCK;
	};
	class MTI_40mm_mag_groundmarker_yellow {
		price = 50;
		stock = MAGAZINE_STOCK;
	};
	class MTI_40mm_mag_groundmarker_red {
		price = 50;
		stock = MAGAZINE_STOCK;
	};
	class MTI_UGL_EmergencyFlare {
		price = 50;
		stock = MAGAZINE_STOCK;
	};


	///////////////////////////////////////////////////////
	// Pistols, SMGs
	///////////////////////////////////////////////////////

	class MTI_DC15SA_mag {
		price = 255;
		stock = MAGAZINE_STOCK;
	};

	class MTI_DC17s_mag {
		price = 275;
		stock = MAGAZINE_STOCK;
	};

	class MTI_DC17s_ARC_mag {
		price = 275;
		stock = MAGAZINE_STOCK;
	};

	class MTI_DC19SA_mag {
		price = 255;
		stock = MAGAZINE_STOCK;
	};
	class MTI_defibrillator_mag {
		price = 235;
		stock = MAGAZINE_STOCK;
	};
	class MTI_RSKF44_mag {
		price = 239;
		stock = MAGAZINE_STOCK;
	};

	///////////////////////////////////////////////////////
	// RIFLES
	///////////////////////////////////////////////////////

	class MTI_DC17M_mag {
		price = 240;
		stock = MAGAZINE_STOCK;
	};

	class MTI_DC17M_mag_sniper {
		price = 255;
		stock = MAGAZINE_STOCK;
	};
	class MTI_DC17M_mag_antimat {
		price = 525;
		stock = MAGAZINE_STOCK;
	};
	class MTI_DC15LE_mag {
		price = 15;
		stock = MAGAZINE_STOCK;
	};
	class MTI_DC15LEHP_mag {
		price = 30;
		stock = MAGAZINE_STOCK;
	};
	class MTI_DC15L_mag {
		price = 30;
		stock = MAGAZINE_STOCK;
	};
	class MTI_DC15LHP_mag {
		price = 60;
		stock = MAGAZINE_STOCK;
	};
	class MTI_DC15C_mag {
		price = 60;
		stock = MAGAZINE_STOCK;
	};
	class MTI_DC15CHP_mag {
		price = 30;
		stock = MAGAZINE_STOCK;
	};
	class MTI_Causality_Mag {
		price = 30;
		stock = MAGAZINE_STOCK;
	};
	class MTI_Causality_Precision_Mag {
		price = 60;
		stock = MAGAZINE_STOCK;
	};

	class MTI_Causality_Rail_Mag {
		price = 90;
		stock = MAGAZINE_STOCK;
	};
	class MTI_WestarM5_mag {
		price = 15;
		stock = MAGAZINE_STOCK;
	};
	class MTI_Arkanian_Mag {
		price = 20;
		stock = MAGAZINE_STOCK;
	};
	class MTI_DC19SC_mag {
		price = 20;
		stock = MAGAZINE_STOCK;
	};
	class MTI_DC19SC_hack_mag {
		price = 30;
		stock = MAGAZINE_STOCK;
	};
	class MTI_stealth_mag {
		price = 70;
		stock = MAGAZINE_STOCK;
	};

	///////////////////////////////////////////////////////
	// DMRs, Sniper Rifles
	///////////////////////////////////////////////////////
	class MTI_DC15X_mag {
		price = 50;
		stock = MAGAZINE_STOCK;
	};
	class MTI_DC15X_mag_Latheniol {
		price = 75;
		stock = MAGAZINE_STOCK;
	};

	class 7Rnd_408_Mag {
		price = 0;
		stock = MAGAZINE_STOCK;
	};

	class MTI_DC15X_mag_tranq {
		price = 30;
		stock = MAGAZINE_STOCK;
	};

	class MTI_DC15X_mag_Deraformine {
		price = 30;
		stock = MAGAZINE_STOCK;
	};

	class MTI_DLT19_mag {
		price = 40;
		stock = MAGAZINE_STOCK;
	};

	class MTI_DLT19_Rail_Mag {
		price = 50;
		stock = MAGAZINE_STOCK;
	};

	class MTI_stealth_long_mag {
		price = 70;
		stock = MAGAZINE_STOCK;
	};

	class MTI_Verpine_mag {
		price = 50;
		stock = MAGAZINE_STOCK;
	};

	class MTI_Verpine_1mag_APDS {
		price = 70;
		stock = MAGAZINE_STOCK;
	};

	class MTI_Verpine_mag_AI_Deraformine {
		price = 40;
		stock = MAGAZINE_STOCK;
	};

	class MTI_Verpine_mag_tracking {
		price = 20;
		stock = MAGAZINE_STOCK;
	};

	class MTI_Verpine_mag_APDS {
		price = 100;
		stock = MAGAZINE_STOCK;
	};

	class MTI_Bowcaster_mag {
		price = 50;
		stock = MAGAZINE_STOCK;
	};

	class MTI_Bowcaster_Heavy2_mag {
		price = 70;
		stock = MAGAZINE_STOCK;
	};

	class MTI_Bowcaster_Heavy_mag {
		price = 200;
		stock = MAGAZINE_STOCK;
	};

	class MTI_NT242p_mag_HE {
		price = 80;
		stock = MAGAZINE_STOCK;
	};

	class MTI_NT242p_mag_AP {
		price = 120;
		stock = MAGAZINE_STOCK;
	};

	class MTI_NT242p_mag_EMP {
		price = 50;
		stock = MAGAZINE_STOCK;
	};

	///////////////////////////////////////////////////////
	// MGs
	///////////////////////////////////////////////////////

	class MTI_Z6_Small_mag {
		price = 30;
		stock = MAGAZINE_STOCK;
	};
	class MTI_BTX_mag_medium {
		price = 70;
		stock = MAGAZINE_STOCK;
	};
	class MTI_E403_HE_Mag {
		price = 100;
		stock = MAGAZINE_STOCK;
	};
	class MTI_E403_AP_Mag {
		price = 150;
		stock = MAGAZINE_STOCK;
	};

	class MTI_Z6_Heavy_Mag {
		price = 90;
		stock = MAGAZINE_STOCK;
	};

	///////////////////////////////////////////////////////
	// SMGs
	///////////////////////////////////////////////////////
	class MTI_Cin_Mag {
		price = 30;
		stock = MAGAZINE_STOCK;
	};

	class MTI_DC15S_mag {
		price = 50;
		stock = MAGAZINE_STOCK;
	};
	class MTI_DC15SHP_mag {
		price = 30;
		stock = MAGAZINE_STOCK;
	};
};

class miscMTI
{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_misc"]);
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";

	class HD2_MachineGun_Turret_Grenade {
		price = 500;
		stock = MAGAZINE_STOCK;
	};

	class HD2_Mortar_Turret_Grenade {
		price = 500;
		stock = MAGAZINE_STOCK;
	};

	class HD2_eagle_Gunrun_Grenade {
		price = 1500;
		stock = MAGAZINE_STOCK;
	};

	class HD2_eagle_bomb_Grenade {
		price = 3500;
		stock = MAGAZINE_STOCK;
	};

	class HD2_eagle_rockets_Grenade {
		price = 3500;
		stock = MAGAZINE_STOCK;
	};

	class HD2_eagle_rocketsGuns_Grenade {
		price = 3500;
		stock = MAGAZINE_STOCK;
	};

	class HD2_82mm_Grenade {
		price = 3500;
		stock = MAGAZINE_STOCK;
	};

	class HD2_120mm_Grenade {
		price = 4500;
		stock = MAGAZINE_STOCK;
	};

	class HD2_360mm_Grenade {
		price = 5500;
		stock = MAGAZINE_STOCK;
	};

	class HD2_500kg_bomb_Grenade {
		price = 10000;
		stock = MAGAZINE_STOCK;
	};

	class HD2_orbital_strike_Grenade {
		price = 12000;
		stock = MAGAZINE_STOCK;
	};
};