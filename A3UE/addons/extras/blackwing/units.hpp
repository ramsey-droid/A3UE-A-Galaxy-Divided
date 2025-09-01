
class AGD_Blackwing_Storm: WM_Stormtrooper_E11{
	scope = 2;
	displayName = "Blackwing Stormtrooper";
	faction = "Antistasi_Blackwing";

	uniformClass = "AGD_Blackwing_Storm";
	hiddenSelections[] = {"camo","camo1"};
	hiddenSelectionsTextures[] = {QPATHTOF(data\Blackwing\upper_co.paa),QPATHTOF(data\Blackwing\lower_co.paa)};

	linkedItems[] = {"AGD_Blackwing_StormHelmet"};
	respawnLinkedItems[] = {"AGD_Blackwing_StormHelmet"};

	class EventHandlers {
		init = "if (local (_this select 0)) then {[(_this select 0), [], []] call BIS_fnc_unitHeadgear;};";
	};
	headgearList[] = {
		"AGD_Blackwing_StormHelmet",1,
		"AGD_Blackwing_StormHelmet2",1,
		"AGD_Blackwing_StormHelmet3",1,
		"WM_StormCap",0.125
	};
};
	class AGD_Blackwing_Storm_Shooter: AGD_Blackwing_Storm{
	displayName = "Blackwing Stormtrooper (E-11)";
	weapons[] = {"IDA_E11", "Throw","Put"};
	respawnWeapons[] = {"IDA_E11", "Throw","Put"};

	magazines[] = {
		"IDA_Blaster_Cell_Power3_40Rnd_Red",
		"IDA_Blaster_Cell_Power3_40Rnd_Red"
	};
	respawnMagazines[] = {
		"IDA_Blaster_Cell_Power3_40Rnd_Red",
		"IDA_Blaster_Cell_Power3_40Rnd_Red"
	};
};
class AGD_Blackwing_Scout: AGD_Blackwing_Storm {
	displayName = "Blackwing Scout Trooper";
	model = "WarMantle\WM_Imperial_Core\ScoutTrooper_uniform.p3d";
	uniformClass = "AGD_Blackwing_Scout";
	hiddenSelections[] = {"camo","camo1"};
	hiddenSelectionsTextures[] = {QPATHTOF(data\Blackwing\scout_upper_co.paa),QPATHTOF(data\Blackwing\scout_lower_co.paa)};

	headgearList[] = {
		"AGD_Blackwing_ScoutHelmet",1,
		"AGD_Blackwing_ScoutHelmet2",1
	};
};
