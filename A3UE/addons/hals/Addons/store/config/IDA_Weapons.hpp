		class handgunsIDA
		{
			displayName = "IDA Handguns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(IDA_A260P, 200, PISTOL_STOCK);
			ITEM(IDA_DC15P, 180, PISTOL_STOCK);
			ITEM(IDA_DCFG, 220, PISTOL_STOCK);
			ITEM(IDA_E11P, 190, PISTOL_STOCK);
		};

		class riflesIDA
		{
			displayName = "IDA Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(IDA_A260, 850, RIFLE_STOCK);
			ITEM(IDA_E5, 750, RIFLE_STOCK);
			ITEM(IDA_E5C, 800, RIFLE_STOCK);

			ITEM(IDA_FA11, 820, RIFLE_STOCK);
			ITEM(IDA_Galaar15, 780, RIFLE_STOCK);
			ITEM(IDA_SBB3, 650, RIFLE_STOCK);

			ITEM(IDA_SE28, 700, RIFLE_STOCK);
			ITEM(IDA_SPK12, 900, RIFLE_STOCK);
		};

		class sniperRiflesIDA
		{
			displayName = "IDA Sniper Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(IDA_773Firepuncher, 1500, RIFLE_STOCK);
			ITEM(IDA_774CX, 1400, RIFLE_STOCK);

			ITEM(IDA_DC15X, 1500, RIFLE_STOCK);

			ITEM(IDA_E5S, 1400, RIFLE_STOCK);

			ITEM(IDA_Galaar90, 1800, 5);
			ITEM(IDA_IQA11, 1600, 5);
		};

		class mgIDA
		{
			displayName = "IDA Machine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(IDA_Z6, 1600, RIFLE_STOCK);
			ITEM(IDA_T21, 1500, RIFLE_STOCK);

			ITEM(IDA_T15, 1500, RIFLE_STOCK);
			
			ITEM(IDA_M41, 1550, RIFLE_STOCK);

			ITEM(IDA_DLT19, 1500, RIFLE_STOCK);
		};

		class opticsIDA
		{
			displayName = "IDA Optics";
			picture = "\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\ItemOptic_ca.paa";

			class IDA_E11_scope {
				price = 200;
				stock = 5;
			};

			class IDA_TargetingScope {
				price = 300;
				stock = 5;
			};

		};

		class magazinesIDA
		{
			displayName = "IDA Magazines";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class Laserbatteries {
				price = 15;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Underbarrel
			///////////////////////////////////////////////////////
			class IDA_HE_LauncherGrenade{
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class IDA_Smoke_LauncherGrenade {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class IDA_SmokeBlue_LauncherGrenade {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class IDA_SmokeGreen_LauncherGrenade {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class IDA_SmokeRed_LauncherGrenade {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			///////////////////////////////////////////////////////
			// Pistols, SMGs
			///////////////////////////////////////////////////////

			class IDA_Blaster_Cell_Power2_20Rnd_Red {
				price = 30;
				stock = MAGAZINE_STOCK;
			};

			class IDA_Blaster_Cell_Power2_20Rnd_Blue {
				price = 30;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////

			class IDA_Blaster_Cell_Power3_60Rnd_Red {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class IDA_Blaster_Cell_Power3_40Rnd_Red {
				price = 120;
				stock = MAGAZINE_STOCK;
			};
			class IDA_Blaster_Cell_Scatter_6Rnd_Red {
				price = 55;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////
			class IDA_Blaster_Cell_Power4_10Rnd_Blue {
				price = 140;
				stock = MAGAZINE_STOCK;
			};
			class IDA_Blaster_Cell_Power4_10Rnd_Red {
				price = 140;
				stock = MAGAZINE_STOCK;
			};

			class IDA_Blaster_Cell_Power5_5Rnd_Red {
				price = 120;
				stock = MAGAZINE_STOCK;
			};

			class IDA_Blaster_Cell_Power5_5Rnd_Blue {
				price = 120;
				stock = MAGAZINE_STOCK;
			};

			class IDA_Blaster_Cell_Power5_5Rnd_Yellow {
				price = 120;
				stock = MAGAZINE_STOCK;
			};

			class IDA_Blaster_Cell_Power5_5Rnd_Green {
				price = 120;
				stock = MAGAZINE_STOCK;
			};
	
			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////

			class IDA_Blaster_Cell_Power1_300Rnd_Blue {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class IDA_Blaster_Cell_Power2_100Rnd_Red {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class IDA_Blaster_Cell_Power2_100Rnd_Blue {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class IDA_Blaster_Cell_Power2_100Rnd_Green {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class IDA_Blaster_Cell_Power1_300Rnd_yellow {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

		};
