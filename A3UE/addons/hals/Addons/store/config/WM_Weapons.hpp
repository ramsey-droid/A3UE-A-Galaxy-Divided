//Galactic Civil War

		class handgunswmemp{
			displayName = "Empire Handguns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(WM_EC17, 200, PISTOL_STOCK); //AMMO: WM_EC17_Mag
			ITEM(WM_RK3, 150, PISTOL_STOCK); //AMMO: WM_RK3_Mag
			ITEM(WM_SE14C, 250, PISTOL_STOCK); //AMMO: WM_SE14C_Mag
		};		

		class rifleswmemp{
			displayName = "Empire Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(WM_A280, 800, RIFLE_STOCK); // WM_A280_Mag
			ITEM(WM_DH17, 650, RIFLE_STOCK); // WM_DH17_Mag
			ITEM(WM_DLT19, 1200, RIFLE_STOCK); // WM_DLT19_mag
			ITEM(WM_DLT19D, 1100, RIFLE_STOCK); // WM_DLT19D_Magazine
			ITEM(WM_DLT19X, 1150, RIFLE_STOCK); // WM_DLT19X_Magazine
			ITEM(WM_E11, 750, RIFLE_STOCK); // WM_E11_Mag
			ITEM(WM_E11D, 850, RIFLE_STOCK); // WM_E11D_Mag
			ITEM(WM_T21, 1400, RIFLE_STOCK); // WM_T21_mag
		};

		class launcherswmemp{
			displayName = "Empire Launchers";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(WM_Launch_HH15, 1100, 25);
			ITEM(WM_Launch_PTL, 1000, 25);

		}; 

		class magazineswmemp{
			displayName = "Empire Magazines";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";
			
			ITEM(WM_EC17_Mag, 25, MZ_STOCK);
            ITEM(WM_RK3_Mag, 20, MZ_STOCK);
            ITEM(WM_SE14C_Mag, 30, MZ_STOCK);
            ITEM(WM_A280_Mag, 80, MZ_STOCK);
            ITEM(WM_DH17_Mag, 65, MZ_STOCK);
            ITEM(WM_DLT19_mag, 120, MZ_STOCK);
            ITEM(WM_DLT19D_Magazine, 110, MZ_STOCK);
            ITEM(WM_DLT19X_Magazine, 115, MZ_STOCK);
            ITEM(WM_E11_Mag, 75, MZ_STOCK);
            ITEM(WM_E11D_Mag, 85, MZ_STOCK);
			ITEM(WM_T21_mag, 140, MZ_STOCK);
            ITEM(WM_ProtonTorpedo, 800, 15);
		};

		class opticswmemp{
			displayName = "Empire Optics";
			picture = "\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\ItemOptic_ca.paa";

			ITEM(WM_E11_Optic, 200, MAGAZINE_STOCK);
			ITEM(WM_E11_Pack, 100, MAGAZINE_STOCK);
			ITEM(WM_DLT_Bipod, 150, MAGAZINE_STOCK);
			ITEM(WM_SE14C_Scope, 250, MAGAZINE_STOCK);
		};