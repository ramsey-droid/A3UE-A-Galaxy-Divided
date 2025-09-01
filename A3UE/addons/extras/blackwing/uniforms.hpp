	class AGD_Blackwing_Storm: U_I_CombatUniform {
		scope = 2;
		displayName = "Project Blackwing Stormtrooper";
		picture = "\WarMantle\WM_Imperial_Core\data\ui\wm_stormarmor_ca.paa";
		class ItemInfo: ItemInfo {
			uniformClass = "AGD_Blackwing_Storm";
			containerClass = "Supply40";
			mass = 40;
		};
	};
	class AGD_Blackwing_Scout: U_I_CombatUniform {
		scope = 2;
		displayName = "Project Blackwing Scout Trooper";
		picture = "\WarMantle\WM_Imperial_Core\data\ui\wm_scoutarmor_ca.paa";
		class ItemInfo: ItemInfo {
			uniformClass = "AGD_Blackwing_Scout";
			containerClass = "Supply40";
			mass = 40;
		};
	};
	class AGD_Blackwing_StormHelmet: WM_StormHelmet {
		scope = 2;
		displayName = "Project Blackwing Stormtrooper Helmet";
		author = "Ramsey";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\Blackwing\Helmet_co.paa)};
		subItems[] = {};
	};
	class AGD_Blackwing_StormHelmet2: AGD_Blackwing_StormHelmet
	{
		scope = 1;
		hiddenSelectionsTextures[] = {QPATHTOF(data\Blackwing\Helmet2_co.paa)};
	}
	class AGD_Blackwing_StormHelmet3: AGD_Blackwing_StormHelmet
	{
		scope = 1;
		hiddenSelectionsTextures[] = {QPATHTOF(data\Blackwing\Helmet3_co.paa)};
	}
	class AGD_Blackwing_ScoutHelmet: WM_ScoutHelmet
	{
		scope = 2;
		displayName = "Project Blackwing Scout Trooper Helmet";
		author = "Ramsey";

		hiddenSelections[] = {"Camo1","Camo"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\Blackwing\ScoutHelmet_co.paa),QPATHTOF(data\Blackwing\ScoutHelmet_co.paa)};
		subItems[] = {};
	};
	class AGD_Blackwing_ScoutHelmet2: AGD_Blackwing_ScoutHelmet
	{
		scope = 1;
		hiddenSelectionsTextures[] = {QPATHTOF(data\Blackwing\ScoutHelmet2_co.paa),QPATHTOF(data\Blackwing\ScoutHelmet2_co.paa)};
	};
