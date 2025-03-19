		class handgunsMTI
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_handguns"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(MTI_DC15SA, 0, PISTOL_STOCK); //MTI_DC15SA_mag
			ITEM(MTI_DC17s, 0, PISTOL_STOCK); //MTI_DC17s_mag
			ITEM(MTI_DC17s_dual, 0, PISTOL_STOCK); // MTI_DC17s_ARC_mag
			ITEM(MTI_defibrillator, 0, PISTOL_STOCK); // MTI_defibrillator_mag
			ITEM(MTI_DC19SA, 0, PISTOL_STOCK); // MTI_DC19SA_mag
			ITEM(MTI_RSKF44, 0, PISTOL_STOCK); // MTI_RSKF44_mag
		};

		class riflesMTI
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_rifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(MTI_DC17M, 1000, RIFLE_STOCK);
			ITEM(MTI_DC15LE, 750, RIFLE_STOCK);

			ITEM(MTI_DC15L, 600, RIFLE_STOCK);
			ITEM(MTI_DC15C_GL, 500, RIFLE_STOCK);
			ITEM(MTI_DC15C, 500, RIFLE_STOCK);

			ITEM(MTI_Causality, 1600, RIFLE_STOCK);
			ITEM(MTI_WestarM5, 1000, RIFLE_STOCK);

			ITEM(MTI_Arkanian, 1400, RIFLE_STOCK);
			ITEM(MTI_DC19SC, 5000, RIFLE_STOCK);

			ITEM(MTI_RD4, 9500, RIFLE_STOCK);
		};

		class sniperRiflesMTI
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_sniperRifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(MTI_DC19X, 6000, RIFLE_STOCK);
			ITEM(MTI_DLT19X, 5500, RIFLE_STOCK);
			ITEM(MTI_DC15X, 4500, RIFLE_STOCK);

			ITEM(MTI_Verpine, 9000, 5);
			ITEM(MTI_DC19LE, 9000, 5);

			ITEM(MTI_Bowcaster, 15000, 5);
			ITEM(MTI_NT242p, 9500, 5);
		};

		class mgMTI
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_mgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(MTI_Z6_Small, 4000, RIFLE_STOCK);

			ITEM(MTI_E403, 15000, RIFLE_STOCK);
			ITEM(MTI_BTX, 6500, RIFLE_STOCK);

			ITEM(MTI_Z6_Heavy, 12000, RIFLE_STOCK);
		};

		class smgMTI
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_smgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(MTI_DC15S, 300, RIFLE_STOCK);
			ITEM(MTI_Cinnagaran, 340, RIFLE_STOCK);

		};

		class launchersMTI
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_launchers"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(MTI_RPS6_D_Loaded, 600, LAUNCHER_STOCK);

			ITEM(MTI_RPS6, 900, LAUNCHER_STOCK);

			ITEM(MTI_RPS6_HP, 15000, 3);
			ITEM(MTI_PLX1, 25000, 3);
		};

		class launcherMagazinesMTI
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_launcherAmmo"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class MTI_RPS6_mag_HE {
				price = 150;
				stock = 50;
			};

			class MTI_RPS6_mag_AT {
				price = 300;
				stock = 50;
			};
			class MTI_RPS6_HP_mag_AA {
				price = 300;
				stock = 50;
			};

			class MTI_RPS6_HP_mag_AT {
				price = 500;
				stock = 10;
			};

			class MTI_PLX1_mag_AT {
				price = 700;
				stock = 10;
			};
			class MTI_PLX1_mag_AA {
				price = 900;
				stock = 10;
			};
		};

		class navigationVanilla
		{
			displayName = __EVAL(formatText ["%1 %2, %3 %4 %5", localize "STR_A3AU_Vanilla", localize "STR_A3AU_gps", localize "STR_A3AU_binoculars", localize "STR_A3AU_and", localize "STR_A3AU_nvgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\compass_ca.paa";

			ITEM(ItemGPS, 0, NN_STOCK);
			ITEM(JLTS_clone_comlink, 0, NN_STOCK);
			ITEM(JLTS_CloneBinocular_black, 50, NN_STOCK);

			ITEM(NVGoggles, 180, NN_STOCK);
			ITEM(mti_armoury_trooper_nvg_Chip, 750, NN_STOCK);
			ITEM(mti_armoury_commando_nvg_chip, 550, NN_STOCK);
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
				price = 1600;
				stock = 5;
			};

			class MTI_Bowcaster_scope {
				price = 750;
				stock = 5;
			};

			class MTI_HMRCO_blu {
				price = 600; 
				stock = 100;
			};
			class MTI_HMRCO_grn {
				price = 400; 
				stock = 100;
			};
			class MTI_HMRCO_red {
				price = 400; 
				stock = 100;
			};
			class MTI_HMRD_blu {
				price = 300; 
				stock = 100;
			};

			class MTI_HMRD_grn {
				price = 300;
				stock = 100;
			};

			class MTI_HRCO_blu {
				price = 300;
				stock = 100;
			};

			class MTI_HRCO_grn {
				price = 300;
				stock = 100;
			};

			class MTI_HLRPS_blu {
				price = 300;
				stock = 100;
			};
			class MTI_HDMS_red {
				price = 300;
				stock = 100;
			};

			class MTI_Holosight_red {
				price = 300;
				stock = 100;
			};

			class MTI_EE2_scope {
				price = 190;
				stock = 100;
			};

			class MTI_Holosight_grn {
				price = 150;
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
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class MTI_40mm_mag_mine {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class MTI_40mm_mag_HE {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class MTI_RD4_mag_6rnd {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class MTI_40mm_mag_cluster {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class MTI_40mm_mag_cluster_airburst {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class MTI_40mm_mag_shrapnel {
				price = 150;
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
				price = 300;
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
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class MTI_defibrillator_mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class MTI_RSKF44_mag {
				price = 140;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////

			class MTI_DC17M_mag {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_green_mag_Tracer {
				price = 0;
				stock = MAGAZINE_STOCK;
			};

			class MTI_DC17M_mag_sniper {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class MTI_DC17M_mag_antimat {
				price = 900;
				stock = MAGAZINE_STOCK;
			};
			class MTI_DC15LE_mag {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class MTI_DC15LEHP_mag {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class MTI_DC15L_mag {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class MTI_DC15LHP_mag {
				price = 600;
				stock = MAGAZINE_STOCK;
			};
			class MTI_DC15C_mag {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class MTI_DC15CHP_mag {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class MTI_Causality_Mag {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class MTI_Causality_Precision_Mag {
				price = 600;
				stock = MAGAZINE_STOCK;
			};

			class MTI_Causality_Rail_Mag {
				price = 900;
				stock = MAGAZINE_STOCK;
			};
			class MTI_WestarM5_mag {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class MTI_Arkanian_Mag {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class MTI_DC19SC_mag {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class MTI_DC19SC_hack_mag {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class MTI_stealth_mag {
				price = 700;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////
			class MTI_DC15X_mag {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class MTI_DC15X_mag_Latheniol {
				price = 750;
				stock = MAGAZINE_STOCK;
			};

			class 7Rnd_408_Mag {
				price = 0;
				stock = MAGAZINE_STOCK;
			};

			class MTI_DC15X_mag_tranq {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			class MTI_DC15X_mag_Deraformine {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			class MTI_DLT19_mag {
				price = 400;
				stock = MAGAZINE_STOCK;
			};

			class MTI_DLT19_Rail_Mag {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			class MTI_stealth_long_mag {
				price = 700;
				stock = MAGAZINE_STOCK;
			};

			class MTI_Verpine_mag {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			class MTI_Verpine_1mag_APDS {
				price = 700;
				stock = MAGAZINE_STOCK;
			};

			class MTI_Verpine_mag_AI_Deraformine {
				price = 400;
				stock = MAGAZINE_STOCK;
			};

			class MTI_Verpine_mag_tracking {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class MTI_Verpine_mag_APDS {
				price = 1000;
				stock = MAGAZINE_STOCK;
			};

			class MTI_Bowcaster_mag {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			class MTI_Bowcaster_Heavy2_mag {
				price = 700;
				stock = MAGAZINE_STOCK;
			};

			class MTI_Bowcaster_Heavy_mag {
				price = 1300;
				stock = MAGAZINE_STOCK;
			};

			class MTI_NT242p_mag_HE {
				price = 800;
				stock = MAGAZINE_STOCK;
			};

			class MTI_NT242p_mag_AP {
				price = 1200;
				stock = MAGAZINE_STOCK;
			};

			class MTI_NT242p_mag_EMP {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////

			class MTI_Z6_Small_mag {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class MTI_BTX_mag_medium {
				price = 700;
				stock = MAGAZINE_STOCK;
			};
			class MTI_E403_HE_Mag {
				price = 1000;
				stock = MAGAZINE_STOCK;
			};
			class MTI_E403_AP_Mag {
				price = 1500;
				stock = MAGAZINE_STOCK;
			};

			class MTI_Z6_Heavy_Mag {
				price = 900;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// SMGs
			///////////////////////////////////////////////////////
			class MTI_Cin_Mag {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			class MTI_DC15S_mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class MTI_DC15SHP_mag {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
		};

		class miscMTI
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_misc"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";

			class mti_armoury_arc_uniform_Arcanist {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Rat {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Shields {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Ones {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Saber {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Falcon {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Ghost {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Chimera {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Kev {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Leer {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Hex {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Malice {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Beviin {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Xarl {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Xetor {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Spooks {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Loken {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Bezzy {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Beems {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Miller {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Leer {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Besh {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Loki {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Maroon {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Potato {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Sig {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Storyz {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Rented {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Oneshot {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Spyro {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Ramsey {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Dxon {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Odin {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Dust {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Mist {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Sin {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Spider {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Killa {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Short {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Jitters {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Nightwolf {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Xiao {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Sparrow {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Blurr {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Dad {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Dimi {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_J3ff {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_uniform_Tec {
				price = 300;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Draco {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Nightwolf {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Daycare {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Val {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Baboon {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Dxon {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Leer {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Shoto {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Sparrow {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Karrazim {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Bezzy {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Rented {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Noble {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Vill {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Rat {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Noir {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Lich {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Smig {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Duck {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Set {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Falcon {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Lucks {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Glide {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Flashy {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Valor {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Hex {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Akeno {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Zyys {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Ark {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Stuka {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Beviin {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Mokka {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Celt {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Klepto {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_base {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Cadet {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_eod {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_sniper {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_tech {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_sl {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_exotic {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_medic {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_heavy {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Arctic {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Desert {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Jungle {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_uniform_Night {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_uniform_Cadet {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_uniform_Medic {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_uniform_EOD {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_uniform_Trooper {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_uniform_Siege {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_uniform_Tec {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_uniform_Monarch {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_uniform_J3ff {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_uniform_Prussia {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_uniform_Sparrow {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_uniform_Mads {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_uniform_Storyz {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_uniform_Nova {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_uniform_Max {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_uniform_Iris {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_uniform_Haunt {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_uniform_Schmootz {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_uniform_Kinetic {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_uniform_assassin {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_uniform_Jakub {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_uniform_Spiring {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_uniform_Stec {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_uniform_Dagger {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_uniform_Cruiser {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_uniform_Anubis {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_uniform_Yoshi {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_uniform_Templar {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_uniform_Asriel {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_uniform_Spider {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_uniform_Lost {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_uniform_Premade {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_uniform_shadow {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_uniform_Ghost {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_uniform_Saber {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_uniform_Hail {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_uniform_mags {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_uniform_Tyr {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_uniform_Haunt {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_uniform_Maple {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_uniform_Bere {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_uniform_Fenrir {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_uniform_Stuka {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_uniform_Ark {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_uniform_Pariah {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_uniform_Akeno {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_uniform_Trooper {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_uniform_Medic {
				price = 250;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_CR {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_CT {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_CT_EOD {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_CT_Medic {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_SCT {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_SCT_EOD {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_SCT_Medic {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_VCT {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_VCT_EOD {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_VCT_Medic {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_CSP {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_CSP_EOD {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_CSP_Medic {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_CLC {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_CLC_EOD {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_CLC_Medic {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_CS {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_CSM {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_CL {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Mokka {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_mc_Rat {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Scorch {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Pyro {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Shiro {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Ark {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_STUKA {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Akeno {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Zyys {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Arcanist {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_War {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Leer {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Kix {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Gonk {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Glide {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Pariah {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Saber {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Lucks {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Spyro {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Storyz {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Maroon {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Dust {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Otter {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Anchor {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Dox {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Spectre {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Sparrow {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Beviin {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Anubis {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Loken {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Karrazim {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Fenrir {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Xarl {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Yoshi {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Kyle {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Loki {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Slothem {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Sin {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Noir {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Lich {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Blurr {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Hex {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_uniform_Mist {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_uniform_CX_C {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_uniform_CX {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_uniform_CX_X {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_uniform_CX_P {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_uniform_CX_S {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_uniform_CX_O {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_uniform_Murdoc {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_uniform_Ark {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_uniform_Spyro {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_uniform_Hancock {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_uniform_Beems {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_uniform_Bezzy {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_uniform_Marine {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_uniform_Yoshi {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_uniform_Zyys {
				price = 200;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_CR {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_CT {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_CT_EOD {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_CT_Medic {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_SCT {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Mokka {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_mc_Rat {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Pariah {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Templar {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Duck {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Ghost {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Glide {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Saber {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Lucks {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Xetor {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Scorch {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_bsj {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Dad {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Arcanist {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Leer {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Shoto {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Gonk {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Mist {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Noir {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Falcon {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Ark {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_STUKA {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Akeno {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Zyys {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Pyro {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Shiro {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_War {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Kix {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Sin {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Vill {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Spring {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Kyle {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Beems {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Xarl {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Yoshi {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Noble {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Bezzy {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Hex {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Blurr {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Anchor {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_mags {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Rented {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Miller {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Dust {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Schmootz {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Lich {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Slothem {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Sicko {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Storyz {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Loki {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Fenrir {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Dox {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Maroon {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Sig {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Cruiser {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Monarch {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Karrazim {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Spyro {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Spider {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Dxon {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Loken {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Anubis {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Siege {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Sparrow {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Spectre {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Short {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Asriel {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Cuddler {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Jitters {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Otter {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Prussia {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Tec {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Jeff {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_helmet_Mads {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_helmet_CX_C {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_helmet_CX {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_helmet_CX_X {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_helmet_CX_P {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_helmet_CX_S {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_helmet_CX_O {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_helmet_Murdoc {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_helmet_Ark {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_helmet_Spyro {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_helmet_Hancock {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_helmet_Beems {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_helmet_Bezzy {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_helmet_Marine {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_helmet_Yoshi {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_helmet_Zyys {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Draco {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Nightwolf {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Daycare {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Val {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Baboon {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Dxon {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Klepto {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Leer {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Shoto {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Sparrow {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Karrazim {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Bezzy {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Rented {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Val {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Noble {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Vill {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Rat {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Noir {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Lich {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Smig {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Duck {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Hacks {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Set {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Falcon {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Lucks {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Glide {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Flashy {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Valor {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Hex {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Akeno {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Zyys {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Ark {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Stuka {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Mokka {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Celt {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Leer {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Shoto {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Dragoon {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Miller {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Dust {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Murdoc {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Beems {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Kyle {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Besh {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Tippers {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Stec {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Mist {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Kalma {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Sig {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Storyz {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Potato {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Slothem {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Spider {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Izuu {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Loken {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Bow {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Schmootz {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Anchor {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Dox {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Puck {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Short {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Sid {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Wolfen {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Cuddler {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Sicko {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Yoshi {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Abu {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Mads {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Catch {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Scrump {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Donnie {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Mig {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Graaz {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Dad {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_General {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Arcanist {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Rat {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Shields {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Ones {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Saber {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Falcon {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Ghost {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Chimera {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Kev {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Leer {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Hex {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Malice {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Beviin {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Xarl {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Xetor {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Spooks {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Loken {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Bezzy {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Beems {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Miller {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Leer {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Besh {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Loki {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Maroon {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Potato {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Sig {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Storyz {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Rented {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Oneshot {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Spyro {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Ramsey {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Dxon {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Odin {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Dust {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Mist {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Sin {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Spider {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Killa {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Short {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Jitters {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Nightwolf {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Xiao {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Sparrow {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Blurr {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Dad {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Dimi {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_J3ff {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Tec {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_helmet_Prussia {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_base {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Cadet {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_eod {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_sniper {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_tech {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_sl {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_exotic {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_medic {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_heavy {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Arctic {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Desert {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Jungle {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_helmet_Night {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_helmet_Cadet {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_helmet_Medic {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_helmet_EOD {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_helmet_Trooper {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_helmet_Siege {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_helmet_Tec {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_helmet_Monarch {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_helmet_J3ff {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_helmet_Prussia {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_helmet_Sparrow {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_helmet_Mads {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_helmet_Storyz {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_helmet_Nova {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_helmet_Max {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_helmet_Iris {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_helmet_Haunt {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_helmet_Schmootz {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_helmet_Kinetic {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_helmet_assassin {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_helmet_Jakub {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_helmet_Spiring {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_helmet_Stec {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_helmet_Dagger {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_helmet_Cruiser {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_helmet_Anubis {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_helmet_Yoshi {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_helmet_Templar {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_helmet_Asriel {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_helmet_Spider {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_helmet_Lost {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_helmet_Premade {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_helmet_shadow {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_helmet_Ghost {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_helmet_Saber {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_helmet_Hail {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_helmet_mags {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_helmet_Tyr {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_helmet_Haunt {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_helmet_Maple {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_helmet_Bere {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_helmet_Fenrir {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_helmet_Stuka {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_helmet_Ark {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_helmet_Pariah {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_helmet_Akeno {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_helmet_Trooper {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_helmet_Medic {
				price = 350;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_backpack_base {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_backpack_base_noBracer {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_backpack_assassin_base {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_backpack_assassin_RTO_pack {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_backpack_Jumppack_Rat {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_backpack_sp_base {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_backpack_sp_xray {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_backpack_base {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_backpack_RTO {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_backpack_RTO_Clear {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_backpack_JT12 {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_backpack_fsb {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_backpack_fsb_trooper {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_backpack_fsb_medic {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_backpack_base {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_backpack_Cadet {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_backpack_Medic {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_backpack_EOD {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_backpack_TL {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_backpack_SL {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_backpack_Bezzy {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_backpack_Arcanist {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_backpack_Sparrow {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_backpack_Mads {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_backpack_Storyz {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_backpack_Nova {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_backpack_Max {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_backpack_Iris {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_backpack_Haunt {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_backpack_Schmootz {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_backpack_Kinetic {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_base {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Cadet {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_eod {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_sniper {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_tech {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_sl {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_exotic {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_medic {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_heavy {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Arctic {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Desert {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Jungle {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Night {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Draco {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Nightwolf {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Daycare {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Val {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Baboon {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Dxon {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Klepto {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Shoto {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Sparrow {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Karrazim {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Bezzy {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Rented {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Val {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Noble {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Vill {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Rat {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Noir {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Lich {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Smig {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Duck {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Hacks {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Set {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Falcon {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Lucks {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Glide {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Flashy {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Valor {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Hex {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Akeno {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Zyys {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Ark {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Stuka {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Beviin {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_tech_Mokka {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_rto_celt {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Klepto {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Leer {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Shoto {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Dragoon {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Miller {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Dust {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Murdoc {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Beems {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Kyle {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Besh {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Tippers {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Stec {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Mist {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Kalma {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Sig {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Storyz {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Potato {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Slothem {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Spider {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Izuu {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Loken {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Bow {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Schmootz {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Anchor {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Dox {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Puck {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Short {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Sid {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Wolfen {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Cuddler {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Sicko {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Yoshi {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Abu {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Mads {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Catch {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Scrump {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Donnie {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Mig {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Graaz {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_Dad {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_backpack_General {
				price = 900;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_cadet {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_trooper {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_demo {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_medic {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_tl {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_sl {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_Spooks {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_Saber {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_Falcon {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_Ones {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_Ghost {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_Hex {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_Kev {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_Chimera {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_Loken {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_Leer {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_Loki {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_Dxon {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_Maroon {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_Spyro {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_Ramsey {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_Dust {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_Sin {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_Nightwolf {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_alpha_Bezzy {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_alpha_Spider {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_alpha_Sig {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_alpha_Rented {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_arc_vest_alpha_Celt {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_Arcanist {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_CompanyCommand {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_Kix {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_Noir {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_Pariah {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_War {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_cp {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_Leer {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_Maroon {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_Saber {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_Storyz {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_vest_Gonk {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_CLC {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_Mokka {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_mc {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_pilot_vest_Zyys {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_PlatoonCommand {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_Kyle {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_Lich {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_Loken {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_Slothem {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_Zyys {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_Loki {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_trooper_vest_Spider {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_vest_Pariah {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_fieldsupport_vest_Ark {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_vest_base {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_vest_Cadet {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_vest_Medic {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_vest_EOD {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_jumptrooper_vest_NCO {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_vest_base {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_vest_Cadet {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_vest_eod {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_vest_sniper {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_vest_tech_black {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_commando_vest_sl {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_vest_shadow_base {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_vest_shadow_csp {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_vest_shadow_clc {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_vest_shadow_cp {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_vest_shadow_cs {
				price = 600;
				stock = MISC_STOCK;
			};

			class mti_armoury_covertops_vest_shadow_command {
				price = 600;
				stock = MISC_STOCK;
			};
		};