
	class StaticWeapon;
	class StaticMGWeapon: StaticWeapon {
		class Turrets;
	};

	class AT_01_base_F: StaticMGWeapon {
		class Turrets: Turrets {
			class MainTurret;
		};
	};
	class AA_01_base_F: StaticMGWeapon {
		class Turrets: Turrets {
            class MainTurret;
        };
	};

class AGD_Shellcracker_AT: AT_01_base_F {
	author = AUTHOR;
	scope = 2;
	scopeCurator = 2;
    side = 0;
    crew = "WM_Stormtrooper_E11";
    faction = "Antistasi_Empire";
    editorSubcategory = "EdSubcat_Turrets";
	displayName = "Shellcracker AT Platform";
	class Turrets: Turrets {
		class MainTurret: MainTurret {
			weapons[] = {"AGD_Launcher_AT_Static"};
			magazines[] = {"AGD_Rocket_Static_Mag","AGD_Rocket_Static_Mag","AGD_Rocket_Static_Mag","AGD_Rocket_Static_Mag","AGD_Rocket_Static_Mag"};
		};
	};
    hiddenSelections[] = {"camo_launcher","camo_tube"};
	hiddenSelectionsTextures[] = {
		QPATHTOF(data\static\launcher_co.paa),
		QPATHTOF(data\static\tubem_co.paa)
	};
};

class AGD_Shellcracker_AA: AA_01_base_F {
	author = AUTHOR;
	scope = 2;
	scopeCurator = 2;
    side = 0;
    crew = "WM_Stormtrooper_E11";
    faction = "Antistasi_Empire";
    editorSubcategory = "EdSubcat_Turrets";
	displayName = "Shellcracker AA Platform";
	class Turrets: Turrets {
		class MainTurret: MainTurret {
			weapons[] = {"AGD_Launcher_AA_Static"};
			magazines[] = {"AGD_Rocket_AA_Mag","AGD_Rocket_AA_Yellow_Mag","AGD_Rocket_AA_Mag","AGD_Rocket_AA_Yellow_Mag","AGD_Rocket_AA_Mag","AGD_Rocket_AA_Yellow_Mag","AGD_Rocket_AA_Mag","AGD_Rocket_AA_Yellow_Mag","AGD_Rocket_AA_Mag","AGD_Rocket_AA_Yellow_Mag","AGD_Rocket_AA_Mag","AGD_Rocket_AA_Yellow_Mag"};
		};
	};
    hiddenSelections[] = {"camo_launcher","camo_tube"};
	hiddenSelectionsTextures[] = {
		QPATHTOF(data\static\launcher_co.paa),
		QPATHTOF(data\static\tubel_co.paa)
	};
};