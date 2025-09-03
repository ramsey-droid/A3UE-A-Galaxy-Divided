class JLTS_Clone_P2_DC15A;
class AGD_CU_Unit1: JLTS_Clone_P2_DC15A{
	scope = 1;
	author = "Ramsey";
	displayName = "Clone Underground Trooper";

	uniformClass = "AGD_CU_Clonetrooper1";
	hiddenSelections[] = {"camo1","camo2","insignia"};
	hiddenSelectionsTextures[] = {QPATHTOF(data\CloneUnder\Clone_armor_co.paa),QPATHTOF(data\CloneUnder\Clone_armor2_co.paa)};
};
class AGD_CU_Unit2: AGD_CU_Unit1 {
	displayName = "Clone Underground Trooper (104th)";
	uniformClass = "AGD_CU_Clonetrooper_104";
	hiddenSelectionsTextures[] = {QPATHTOF(data\CloneUnder\Clone_104thTrooper_armor1_co.paa),QPATHTOF(data\CloneUnder\Clone_104thTrooper_armor2_co.paa)};
};
class AGD_CU_Unit3: AGD_CU_Unit1 {
	displayName = "Clone Underground Trooper (501st)";
	uniformClass = "AGD_CU_Clonetrooper_501";
	hiddenSelectionsTextures[] = {QPATHTOF(data\CloneUnder\Clone_501stTrooper_armor1_co.paa),QPATHTOF(data\CloneUnder\Clone_501stTrooper_armor2_co.paa)};
};
class AGD_CU_Unit4: AGD_CU_Unit1 {
	displayName = "Clone Underground Trooper (327th)";
	uniformClass = "AGD_CU_Clonetrooper_327";
	hiddenSelectionsTextures[] = {QPATHTOF(data\CloneUnder\Clone_327thTrooper_armor1_co.paa),QPATHTOF(data\CloneUnder\Clone_327thTrooper_armor2_co.paa)};
};
class AGD_CU_Unit5: AGD_CU_Unit1 {
	displayName = "Clone Underground Trooper (41st)";
	uniformClass = "AGD_CU_Clonetrooper_41";
	hiddenSelectionsTextures[] = {QPATHTOF(data\CloneUnder\Clone_41stGree_armor1_co.paa),QPATHTOF(data\CloneUnder\Clone_41stGree_armor2_co.paa)};
};