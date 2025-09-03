class AGD_CU_Clonetrooper1: U_I_CombatUniform {
		scope = 2;
		author = "Ramsey";
		displayName = "Clone Underground Trooper";
		picture = "\MRC\JLTS\characters\CloneArmor\data\ui\CloneArmor_ui_ca.paa";
		class ItemInfo: ItemInfo {
			uniformClass = "AGD_CU_Unit1";
			containerClass = "Supply40";
			mass = 120;
			uniformType = "Neopren";
		};
	};
class AGD_CU_Clonetrooper_104: AGD_CU_Clonetrooper1 {
		displayName = "Clone Underground Trooper (104th)";
		class ItemInfo: ItemInfo {
			uniformClass = "AGD_CU_Unit2";
		};
	};
class AGD_CU_Clonetrooper_501: AGD_CU_Clonetrooper1 {
		displayName = "Clone Underground Trooper (501st)";
		class ItemInfo: ItemInfo {
			uniformClass = "AGD_CU_Unit3";
		};
	};
class AGD_CU_Clonetrooper_327: AGD_CU_Clonetrooper1 {
		displayName = "Clone Underground Trooper (327th)";
		class ItemInfo: ItemInfo {
			uniformClass = "AGD_CU_Unit4";
		};
	};
class AGD_CU_Clonetrooper_41: AGD_CU_Clonetrooper1 {
		displayName = "Clone Underground Trooper (41st)";
		class ItemInfo: ItemInfo {
			uniformClass = "AGD_CU_Unit5";
		};
	};

class JLTS_CloneHelmetP2;
class AGD_CU_CloneHelmet1: JLTS_CloneHelmetP2 {
	scope = 2;
	author = "Ramsey";
	displayName = "Clone Underground Helmet";
	hiddenSelectionsTextures[] = {QPATHTOF(data\CloneUnder\Clone_helmet_P2_co.paa)};
};
class AGD_CU_CloneHelmet_104: AGD_CU_CloneHelmet1 {
	displayName = "Clone Underground Helmet (104th)";
	hiddenSelectionsTextures[] = {QPATHTOF(data\CloneUnder\Clone_104thTrooper_helmet_co.paa)};
};
class AGD_CU_CloneHelmet_501: AGD_CU_CloneHelmet1 {
	displayName = "Clone Underground Helmet (501st)";
	hiddenSelectionsTextures[] = {QPATHTOF(data\CloneUnder\Clone_501stTrooper_helmet_co.paa)};
};
class AGD_CU_CloneHelmet_327: AGD_CU_CloneHelmet1 {
	displayName = "Clone Underground Helmet (327th)";
	hiddenSelectionsTextures[] = {QPATHTOF(data\CloneUnder\Clone_327thTrooper_helmet_co.paa)};
};
class AGD_CU_CloneHelmet_41: AGD_CU_CloneHelmet1 {
	displayName = "Clone Underground Helmet (41st)";
	hiddenSelectionsTextures[] = {QPATHTOF(data\CloneUnder\Clone_41stGree_helmet_co.paa)};
};