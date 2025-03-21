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

			class mti_armoury_commando_backpack_Leer {
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
		};