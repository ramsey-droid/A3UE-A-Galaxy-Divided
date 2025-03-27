		class handgunsMTI
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_handguns"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(MTI_DC15SA, 50, PISTOL_STOCK); //MTI_DC15SA_mag
			ITEM(MTI_DC17s, 50, PISTOL_STOCK); //MTI_DC17s_mag
			ITEM(MTI_DC17s_dual, 50, PISTOL_STOCK); // MTI_DC17s_ARC_mag
			ITEM(MTI_defibrillator, 80, PISTOL_STOCK); // MTI_defibrillator_mag
			ITEM(MTI_DC19SA, 100, PISTOL_STOCK); // MTI_DC19SA_mag
			ITEM(MTI_RSKF44, 80, PISTOL_STOCK); // MTI_RSKF44_mag
		};

		class riflesMTI
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_rifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(MTI_DC17M, 400, RIFLE_STOCK);
			ITEM(MTI_DC15LE, 350, RIFLE_STOCK);

			ITEM(MTI_DC15L, 250, RIFLE_STOCK);
			ITEM(MTI_DC15C_GL, 200, RIFLE_STOCK);
			ITEM(MTI_DC15C, 200, RIFLE_STOCK);

			ITEM(MTI_Causality, 400, RIFLE_STOCK);
			ITEM(MTI_WestarM5, 300, RIFLE_STOCK);

			ITEM(MTI_Arkanian, 400, RIFLE_STOCK);
			ITEM(MTI_DC19SC, 500, RIFLE_STOCK);

			ITEM(MTI_RD4, 950, RIFLE_STOCK);
		};

		class sniperRiflesMTI
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_sniperRifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(MTI_DC19X, 600, RIFLE_STOCK);
			ITEM(MTI_DLT19X, 550, RIFLE_STOCK);
			ITEM(MTI_DC15X, 450, RIFLE_STOCK);

			ITEM(MTI_Verpine, 900, 5);
			ITEM(MTI_DC19LE, 900, 5);

			ITEM(MTI_Bowcaster, 1500, 5);
			ITEM(MTI_NT242p, 950, 5);
		};

		class mgMTI
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_mgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(MTI_Z6_Small, 400, RIFLE_STOCK);

			ITEM(MTI_E403, 1500, RIFLE_STOCK);
			ITEM(MTI_BTX, 650, RIFLE_STOCK);

			ITEM(MTI_Z6_Heavy, 1200, RIFLE_STOCK);
		};

		class smgMTI
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_smgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(MTI_DC15S, 50, RIFLE_STOCK);
			ITEM(MTI_Cinnagaran, 60, RIFLE_STOCK);

		};

		class launchersMTI
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_launchers"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(MTI_RPS6_D_Loaded, 150, LAUNCHER_STOCK);

			ITEM(MTI_RPS6, 300, LAUNCHER_STOCK);

			ITEM(MTI_RPS6_HP, 1500, 3);
			ITEM(MTI_PLX1, 2500, 3);
		};

		class launcherMagazinesMTI
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_launcherAmmo"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class MTI_RPS6_mag_HE {
				price = 15;
				stock = 50;
			};

			class MTI_RPS6_mag_AT {
				price = 30;
				stock = 50;
			};
			class MTI_RPS6_HP_mag_AA {
				price = 30;
				stock = 50;
			};

			class MTI_RPS6_HP_mag_AT {
				price = 50;
				stock = 10;
			};

			class MTI_PLX1_mag_AT {
				price = 70;
				stock = 10;
			};
			class MTI_PLX1_mag_AA {
				price = 90;
				stock = 10;
			};
		};

		class navigationVanilla
		{
			displayName = __EVAL(formatText ["%1 %2, %3 %4 %5", localize "STR_A3AU_Vanilla", localize "STR_A3AU_gps", localize "STR_A3AU_binoculars", localize "STR_A3AU_and", localize "STR_A3AU_nvgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\compass_ca.paa";

			ITEM(ItemGPS, 50, NN_STOCK);
			ITEM(JLTS_clone_comlink, 50, NN_STOCK);
			ITEM(JLTS_CloneBinocular_black, 50, NN_STOCK);

			ITEM(NVGoggles, 180, NN_STOCK);
			ITEM(mti_armoury_trooper_nvg_Chip, 50, NN_STOCK);
			ITEM(mti_armoury_commando_nvg_chip, 150, NN_STOCK);
		};

		class pointersMTI
		{
			displayName = __EVAL(formatText ["%1 %2 %3 %4", localize "STR_A3AU_Vanilla", localize "STR_A3AU_pointers", localize "STR_A3AU_and", localize "STR_A3AU_flashlights"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemAcc_ca.paa";

			ITEM(acc_flashlight, 30, PN_STOCK);
			ITEM(acc_flashlight_smg_01, 30, PN_STOCK);
			ITEM(acc_pointer_IR, 30, PN_STOCK);
			ITEM(acc_flashlight_pistol, 30, PN_STOCK);
		};

		class muzzlesMTI
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_muzzles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";

			ITEM(MTI_DC15LE_muzzle, 100, MZ_STOCK);

		};

		class opticsMTI
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_sights"]);
			picture = "\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\ItemOptic_ca.paa";

			class MTI_Verpine_scope {
				price = 160;
				stock = 5;
			};

			class MTI_Bowcaster_scope {
				price = 75;
				stock = 5;
			};

			class MTI_HMRCO_blu {
				price = 60; 
				stock = 100;
			};
			class MTI_HMRCO_grn {
				price = 40; 
				stock = 100;
			};
			class MTI_HMRCO_red {
				price = 40; 
				stock = 100;
			};
			class MTI_HMRD_blu {
				price = 30; 
				stock = 100;
			};

			class MTI_HMRD_grn {
				price = 30;
				stock = 100;
			};

			class MTI_HRCO_blu {
				price = 30;
				stock = 100;
			};

			class MTI_HRCO_grn {
				price = 30;
				stock = 100;
			};

			class MTI_HLRPS_blu {
				price = 30;
				stock = 100;
			};
			class MTI_HDMS_red {
				price = 30;
				stock = 100;
			};

			class MTI_Holosight_red {
				price = 30;
				stock = 100;
			};

			class MTI_EE2_scope {
				price = 20;
				stock = 100;
			};

			class MTI_Holosight_grn {
				price = 15;
				stock = 100;
			};

		};

		class magazinesMTI
		{
			displayName = __EVAL(formatText["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_magazines"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class Laserbatteries {
				price = 10;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Underbarrel
			///////////////////////////////////////////////////////
			class MTI_40mm_mag_canister_lgbt {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class MTI_40mm_mag_canister_trans {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class MTI_RD4_mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class MTI_MED_UGL_Mag {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class MTI_40mm_mag_mine {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class MTI_40mm_mag_HE {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class MTI_RD4_mag_6rnd {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class MTI_40mm_mag_cluster {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class MTI_40mm_mag_cluster_airburst {
				price = 50;
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
				price = 30;
				stock = MAGAZINE_STOCK;
			};

			class MTI_DC17s_mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class MTI_DC17s_ARC_mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class MTI_DC19SA_mag {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class MTI_defibrillator_mag {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class MTI_RSKF44_mag {
				price = 14;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////

			class MTI_DC17M_mag {
				price = 15;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_green_mag_Tracer {
				price = 0;
				stock = MAGAZINE_STOCK;
			};

			class MTI_DC17M_mag_sniper {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class MTI_DC17M_mag_antimat {
				price = 300;
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
		};