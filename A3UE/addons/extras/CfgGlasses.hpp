class CfgGlasses{
	class G_Aviator;
	class AGD_Poncho_F: G_Aviator {
		scope = 2;
		displayName = "Mudtrooper Poncho";
		model = "3AS\3AS_Characters_Imperial\Vests\model\3AS_Imperial_Army_Trooper_Addons.p3d";
		identityTypes[] = {};
		hiddenSelections[] = {"camo","camo1","camo2"};
		hiddenSelectionsTextures[] = {"","3AS\3AS_Characters_Imperial\Vests\data\Poncho\3AS_Imperial_Army_Trooper_Poncho_CO.paa",""};
	};
	class AGD_Pauldron_F: AGD_Poncho_F{
		displayName = "Imperial Pauldron";
		model = "3AS\3AS_Characters_Imperial\Vests\Model\3AS_Stormtrooper_vest_addons.p3d";
		hiddenSelections[] = {"camo_pouldron","camo_bandolier","camo_mudguard","camo_ammo_shoulder","camo_ammo_belt"};
		hiddenSelectionsTextures[] = {"3AS\3AS_Characters_Imperial\Vests\Data\Pauldron\Stormtrooper_Pauldron_black_CO.paa","","","",""};
	};
	class AGD_AmmoPack_F: AGD_Poncho_F
	{
		displayName = "Imperial Ammo Pack";
		model = "3AS\3AS_Characters_Imperial\Vests\model\3AS_Imperial_Army_Trooper_Addons.p3d";
		hiddenSelections[] = {"camo","camo1","camo2"};
		hiddenSelectionsTextures[] = {"","","3AS\3AS_Characters_Imperial\Vests\data\Army_Ammo_Pack\3AS_Imperial_Army_Trooper_Ammo_Pack_CO.paa"};
	};
	class AGD_AmmoPack_Poncho_F: AGD_Poncho_F
	{
		displayName = "Imperial Ammo Pack Poncho";
		model = "3AS\3AS_Characters_Imperial\Vests\model\3AS_Imperial_Army_Trooper_Addons.p3d";
		hiddenSelections[] = {"camo","camo1","camo2"};
		hiddenSelectionsTextures[] = {"","3AS\3AS_Characters_Imperial\Vests\data\Poncho\3AS_Imperial_Army_Trooper_Poncho_CO.paa","3AS\3AS_Characters_Imperial\Vests\data\Army_Ammo_Pack\3AS_Imperial_Army_Trooper_Ammo_Pack_CO.paa"};
	};
};