class 3AS_LAAT_Mk2_Imperial;
class AGD_LAAT_Mk2_NewRepub: 3AS_LAAT_Mk2_Imperial
{
	author = "Ramsey";
	scope = 2;
	faction = "Antistasi_NewRepub";
	displayName = "LAAT/I Mk.2";

	hiddenSelections[] = {"camo","camo1","camo2","camo3","camo4"};
	hiddenSelectionsTextures[] = {
		QPATHTOF(data\NewRep\LAATHull_CO.paa),
		QPATHTOF(data\NewRep\LAATWings_CO.paa),
		"3AS\3AS_Laat\LAATI\data\weapons_Imp_CO.paa",
		"3AS\3AS_Laat\LAATI\data\weapon_Details_Imp_CO.paa"
		,"3AS\3AS_Laat\LAATI\data\interior_Imp_CO.paa"
	};
};