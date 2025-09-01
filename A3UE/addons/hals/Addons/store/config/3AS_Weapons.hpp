		class handguns3AS 
		{
			displayName = "3AS Handguns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(3AS_A180_F, 250, PISTOL_STOCK);
			ITEM(3AS_Arkanian_Pistol_F, 200, PISTOL_STOCK);
			ITEM(3AS_pistol_DC15SA_F, 200, PISTOL_STOCK);
			ITEM(3AS_DC17S_F, 250, PISTOL_STOCK);
			ITEM(3AS_S5_f, 300, PISTOL_STOCK);
			ITEM(3AS_SE14R, 200, PISTOL_STOCK);
		};

		class rifles3AS 
		{
			displayName = "3AS Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(3AS_DC15A_F, 800, RIFLE_STOCK);
			ITEM(3AS_DC15A_GL, 950, RIFLE_STOCK);
			ITEM(3AS_DC15C_F, 700, RIFLE_STOCK);

			ITEM(3AS_DC15C_GL, 850, RIFLE_STOCK);
			ITEM(3AS_DP23_F, 750, RIFLE_STOCK);

			ITEM(3AS_DP23_GL, 900, RIFLE_STOCK);
			ITEM(3AS_DymekBlasterRifle_F, 650, RIFLE_STOCK);
			ITEM(3AS_WestarM5_F, 700, RIFLE_STOCK);
		};

		class sniperRifles3AS 
		{
			displayName = "3AS Sniper Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(3AS_Valken38X_F, 1500, RIFLE_STOCK);
			ITEM(3AS_DLT19X, 1600, RIFLE_STOCK);

			ITEM(3AS_DymekSniperRifle_F, 1400, RIFLE_STOCK);
		};

		class mg3AS 
		{
			displayName = "3AS Machine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(3AS_DC15L_F, 1500, RIFLE_STOCK);
			ITEM(3AS_DLT19, 1700, RIFLE_STOCK);
		};

		class smg3AS 
		{
			displayName = "3AS SMGs";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(3AS_DC15S_F, 500, RIFLE_STOCK);
			ITEM(3AS_DC15S_GL, 650, RIFLE_STOCK);
			ITEM(3AS_Cinnagaran_Carbine_F, 450, RIFLE_STOCK);
		};

		class special3AS
		{
			displayName = "3AS Exotic Weapons";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(3AS_Flamer_Base, 800, LAUNCHER_STOCK);

			ITEM(3AS_ScatterGun_F, 400, LAUNCHER_STOCK);

			ITEM(3AS_DC17M_F, 1200, 3);
			ITEM(3AS_MPL_F, 1800, 3);
			ITEM(3AS_Chaingun, 2500, 3);

			ITEM(3AS_FE20_GrenadeLauncherPistol, 600, 3);
		};

		class launchers3AS 
		{
			displayName = "3AS Launchers";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(3AS_RPS6_F, 600, LAUNCHER_STOCK);

			ITEM(3AS_RPS6_G, 650, LAUNCHER_STOCK);

			ITEM(3AS_RPS6_HP, 850, LAUNCHER_STOCK);

			ITEM(3AS_PLX1_F, 1400, 3);
			ITEM(3AS_PLX1_AA, 1600, 3);
			ITEM(3AS_HH12_F, 1200, 3);

			ITEM(3AS_E60R_F, 1800, 3);
		};

		class specialMagazines3AS
		{
			displayName = "3AS Special Ammo";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			class 3AS_FlamerFuel {
				price = 150;
				stock = 50;
			};
			class 3AS_1Rnd_ESlug_Doomsday_Mag {
				price = 300;
				stock = 50;
			};
			class 3AS_8Rnd_ESlugY_Mag {
				price = 100;
				stock = 50;
			};
			class 3AS_8Rnd_EY30_Pellets {
				price = 80;
				stock = 50;
			};
			class 3AS_3Rnd_HEAT_Grenade_shell {
				price = 250;
				stock = 50;
			};
			class 3AS_3Rnd_HE_Grenade_shell {
				price = 200;
				stock = 50;
			};

			class 3AS_AntiArmour_mag {
				price = 400;
				stock = 50;
			};
			class 3AS_100Rnd_EC40_mag {
				price = 300;
				stock = 50;
			};
			class 3AS_5Rnd_EC80_mag {
				price = 150;
				stock = 50;
			};

			class 3AS_Chaingun_Drum_Mag{
				price = 500;
				stock = 50;
			};
			class 3AS_1UGL_MK54_HE_shell {
				price = 75;
				stock = 50;
			};
			class 3AS_1UGL_MK55_Smoke_White_shell{
				price = 40;
				stock = 50;
			};
		};
		class launcherMagazines3AS 
		{
			displayName = "3AS Launcher Ammo";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class 3AS_E60R_AT {
				price = 350;
				stock = 50;
			};

			class 3AS_MK41_AT {
				price = 300;
				stock = 50;
			};
			class 3AS_MK42_HE {
				price = 250;
				stock = 50;
			};

			class 3AS_JLTS_MK39_AA {
				price = 400;
				stock = 10;
			};

			class 3AS_JLTS_MK43_AT {
				price = 350;
				stock = 10;
			};
			class 3AS_JLTS_MK44_HE {
				price = 300;
				stock = 10;
			};
		};

		class navigation3AS
		{
			displayName = "3AS Navigation & Equipment";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\compass_ca.paa";

			ITEM(3AS_JLTS_CloneScoutElectroBinocular, 600, NN_STOCK);

			ITEM(3AS_N_CloneChip_TI_F, 1000, NN_STOCK);
			ITEM(3AS_N_CloneChip_F, 800, NN_STOCK);
		};

		class pointers3AS 
		{
			displayName = "3AS Pointers & Flashlights";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemAcc_ca.paa";

			ITEM(3AS_Flashlight_Arkanian_1_F, 75, PN_STOCK);
			ITEM(3AS_Imp_Light_DLT19, 75, PN_STOCK);
			ITEM(3AS_Flashlight_Cinnagaran_1_F, 75, PN_STOCK);
			ITEM(3AS_Flashlight_Arkanian_Pistol_1_F, 75, PN_STOCK);
		};

		class muzzles3AS 
		{
			displayName = "3AS Muzzle Devices";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";

			ITEM(3AS_Muzzle_Arkanian_Pistol_1_F, 150, MZ_STOCK);

			ITEM(3AS_Imp_Muzzle_DLT19x, 200, MZ_STOCK);

			ITEM(3AS_muzzle_DC17S_F, 150, MZ_STOCK);

			ITEM(3AS_muzzle_DC15LE_F, 200, MZ_STOCK);
		};

		class optics3AS 
		{
			displayName = "3AS Optics";
			picture = "\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\ItemOptic_ca.paa";

			class 3AS_optic_DC15C_F {
				price = 300;
				stock = 5;
			};

			class 3AS_optic_DC15L_F {
				price = 350;
				stock = 5;
			};

			class 3AS_optic_DC15LE_F {
				price = 300;
				stock = 5;
			};

			class 3AS_optic_DC15X_F {
				price = 500; 
				stock = 100;
			};
			class 3AS_Imp_Optic_2 {
				price = 200; 
				stock = 100;
			};
			class 3AS_Imp_Optic_DLT19x {
				price = 800; 
				stock = 100;
			};
			class 3AS_Imp_Optic_3 {
				price = 250; 
				stock = 100;
			};

			class 3AS_Imp_Optic_4 {
				price = 300;
				stock = 100;
			};

			class 3AS_Imp_Optic_1 {
				price = 200;
				stock = 100;
			};

			class 3AS_Optic_Scope_WestarM5 {
				price = 400;
				stock = 100;
			};

			class 3AS_optic_VK38X_F {
				price = 1000;
				stock = 100;
			};
			class 3AS_Optic_Cinnagaran_1_F {
				price = 250;
				stock = 100;
			};

			class 3AS_Optic_Arkanian_2_F {
				price = 300;
				stock = 100;
			};
		};

		class magazines3AS 
		{
			displayName = "3AS Magazines";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class Laserbatteries {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Underbarrel
			///////////////////////////////////////////////////////
			class 3AS_3UGL_MK54_HE_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareWhite_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareGreen_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareRed_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareYellow_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareCIR_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_Smoke_Grenade_shell {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeRed_Grenade_shell {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeGreen_Grenade_shell {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeYellow_Grenade_shell {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokePurple_Grenade_shell {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeBlue_Grenade_shell {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeOrange_Grenade_shell {
				price = 30;
				stock = MAGAZINE_STOCK;
			};

			class 3Rnd_HE_Grenade_shell {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareWhite_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareGreen_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareRed_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareYellow_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareCIR_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_Smoke_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeRed_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeGreen_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeYellow_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokePurple_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeBlue_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeOrange_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};


			///////////////////////////////////////////////////////
			// Pistols, SMGs
			///////////////////////////////////////////////////////

			class 3AS_18Rnd_EM20_Mag {
				price = 35;
				stock = MAGAZINE_STOCK;
			};

			class 3AS_8Rnd_EY40_Mag {
				price = 20;
				stock = MAGAZINE_STOCK;
			};

			class 3AS_15Rnd_EM30_mag {
				price = 30;
				stock = MAGAZINE_STOCK;
			};

			class 3AS_16Rnd_EC20_Mag {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 3AS_32Rnd_EC20_Dual_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 3AS_20Rnd_EG20_mag {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class 3AS_15Rnd_EC20_SE14R_Mag {
				price = 30;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////

			class 3AS_45Rnd_EM50_Mag {
				price = 90;
				stock = MAGAZINE_STOCK;
			};
			class 3AS_45Rnd_EC50_Mag {
				price = 90;
				stock = MAGAZINE_STOCK;
			};

			class 3AS_40Rnd_EC40_Mag {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class 3AS_40Rnd_EM40_Mag {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class 3AS_10Rnd_EC30_Pellets {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class 3AS_10Rnd_ESlug_Mag {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class 3AS_45Rnd_EY50_Mag {
				price = 90;
				stock = MAGAZINE_STOCK;
			};
			class 3AS_60Rnd_EM50_RedPlasma {
				price = 120;
				stock = MAGAZINE_STOCK;
			};
			class 3AS_60Rnd_EC50_Mag {
				price = 120;
				stock = MAGAZINE_STOCK;
			};


			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////
			class 3AS_10Rnd_EC80_Mag {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 3AS_10Rnd_EY80_Mag {
				price = 125;
				stock = MAGAZINE_STOCK;
			};

			class 3AS_10Rnd_EM100_DLT19X_Mag {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
	
			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////

			class 3AS_200Rnd_EM40_Mag {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 3AS_200Rnd_EC40_DLT19_Mag {
				price = 250;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// SMGs
			///////////////////////////////////////////////////////
			class 3AS_60Rnd_EC30_mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};

			class 3AS_60Rnd_EM30_mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
		};

		class misc3AS 
		{
			displayName = "3AS Miscellaneous";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";

			ITEM(3AS_ThrowableCharge, 250, MISC_STOCK);

			ITEM(3AS_ThermalDetonator, 300, MISC_STOCK);

			ITEM(SquadShieldMagazine, 200, MISC_STOCK);

			ITEM(3AS_SonicDet, 150, MISC_STOCK);

			ITEM(ShieldGrenade_Mag, 400, MISC_STOCK);
			ITEM(3AS_BaridumCore, 350, MISC_STOCK);

			ITEM(3AS_SmokeWhite, 30, MISC_STOCK);
			ITEM(3AS_SmokeRed, 30, MISC_STOCK);

			ITEM(3AS_SmokePurple, 30, MISC_STOCK);
			ITEM(Luma_Yellow, 30, MISC_STOCK);

			ITEM(3AS_B_H3NR1_Drone_Bag_F, 800, MISC_STOCK);
			ITEM(3AS_B_H3NR1_Drone_Bag_Red, 800, MISC_STOCK);
			ITEM(B_UavTerminal, 600, MISC_STOCK);
		};