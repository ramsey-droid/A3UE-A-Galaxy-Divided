class O_soldier_Melee_SW;
class AGD_S_Acolyte: O_soldier_Melee_SW
{
	displayName = "Sith Acolyte";
	faction = "Antistasi_Sith";
	uniformClass = "SFA_Sith_Acolyte_Uni";
	linkedItems[] = {"SFA_Acolyte_Mask","SFA_Acolyte_Hood","ItemMap","ItemCompass","ItemWatch"};
	respawnLinkedItems[] = {"SFA_Acolyte_Mask","SFA_Acolyte_Hood","ItemMap","ItemCompass","ItemWatch"};
};

class AGD_S_Eradicator: O_soldier_Melee_SW
{
	displayName = "Sith Eradicator";
	faction = "Antistasi_Sith";
	uniformClass = "SFA_Sith_Erad_Uni";
	linkedItems[] = {"SFA_Erad_Hood","ItemMap","ItemCompass","ItemWatch"};
	respawnLinkedItems[] = {"SFA_Erad_Hood","ItemMap","ItemCompass","ItemWatch"};

	weapons[] = {"WBK_lightsaber_sith_TwoSided","Throw","Put"};
	respawnWeapons[] = {"WBK_lightsaber_sith_TwoSided","Throw","Put"};
};