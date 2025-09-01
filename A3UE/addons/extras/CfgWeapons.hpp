class CfgWeapons {
	class WM_StormHelmet;
	class WM_ScoutHelmet;
	class AGD_MudtrooperHelmet: WM_StormHelmet {
		scope = 2;
		displayName = "Mudtrooper Helmet";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\Mud_Helmet_co.paa)};
	};
	class Uniform_Base;
	class U_I_CombatUniform: Uniform_Base {
		class ItemInfo;
	};
	class AGD_MudtrooperUniform: U_I_CombatUniform {
		scope = 2;
		displayName = "Mudtrooper Uniform";
		class ItemInfo: ItemInfo {
			uniformClass = "AGD_Mudtrooper_Soldier_F";
			containerClass = "Supply40";
			mass = 40;
		};
	};
	class AGD_RemnantHelmet_1: WM_StormHelmet {
		scope = 2;
		displayName = "Imperial Remnant Helmet (Type 1)";
		author = "Ramsey";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\Remnants\Helmet1_co.paa)};
		subItems[] = {};
	};
	class AGD_RemnantHelmet_2: AGD_RemnantHelmet_1 {
		displayName = "Imperial Remnant Sergeant Helmet";
		hiddenSelectionsTextures[] = {QPATHTOF(data\Remnants\Helmet2_co.paa)};
	};
	class AGD_RemnantHelmet_3: AGD_RemnantHelmet_1 {
		displayName = "Imperial Remnant Helmet (Type 3)";
		hiddenSelectionsTextures[] = {QPATHTOF(data\Remnants\Helmet3_co.paa)};
	};
	class AGD_RemnantHelmet_4: AGD_RemnantHelmet_1 {
		displayName = "Imperial Remnant Helmet (Type 4)";
		hiddenSelectionsTextures[] = {QPATHTOF(data\Remnants\Helmet4_co.paa)};
	};
	class AGD_RemnantHelmet_Scout_1: WM_ScoutHelmet {
		scope = 2;
		displayName = "Imperial Remnant Scout Helmet (Type 1)";
		hiddenSelections[] = {"Camo1","Camo"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\Remnants\ScoutHelmet1_co.paa),QPATHTOF(data\Remnants\ScoutHelmet1_co.paa)};
	};
	class AGD_RemnantHelmet_Scout_2: AGD_RemnantHelmet_Scout_1 {
		displayName = "Imperial Remnant Scout Helmet (Type 2)";
		hiddenSelectionsTextures[] = {QPATHTOF(data\Remnants\ScoutHelmet2_co.paa),QPATHTOF(data\Remnants\ScoutHelmet2_co.paa)};
	};
	class WM_DriverHelmet;
	class AGD_Imp_DriverHelmet: WM_DriverHelmet {
		author = "Ramsey";
		hiddenSelections[] = {"Camo","Camo1"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\DriverHelm_co.paa),QPATHTOF(data\DriverHelm_co.paa)};
	};
	class IDA_A260;
	class AGD_A130: IDA_A260 {
		author = "Ramsey";
		displayName = "A130 Blaster Repeater";
		magazines[] = {"AGD_A130_Mag"};
	};
	class ls_imperialVest_isb_heavy_h;
	class ls_imperialVest_army_h;
	class ls_imperialVest_army_medium_h;
	class ls_imperialVest_army_light_h;
	class AGD_RemnantVest_Heavy1: ls_imperialVest_isb_heavy_h {
		scope = 2;
		author = "Ramsey";
		displayName = "Imperial Remnant Heavy Armour";
		hiddenSelections[] = {"camo","camo1","camo2"};
		hiddenSelectionsTextures[] = {
			QPATHTOF(data\Remnants\Vests\camo_1_co.paa),
			"\ls\core\addons\characters_imperial\vests\tacBelt\data\camo1_co.paa",
			QPATHTOF(data\Remnants\Vests\tacExtras_co.paa)
		};
	};
	class AGD_RemnantVest_Heavy2: AGD_RemnantVest_Heavy1 {
		displayName = "Imperial Remnant Heavy Armour (Damaged)";
		hiddenSelectionsTextures[] = {
			QPATHTOF(data\Remnants\Vests\camo_2_co.paa),
			"\ls\core\addons\characters_imperial\vests\tacBelt\data\camo1_co.paa",
			QPATHTOF(data\Remnants\Vests\tacExtras_co.paa)
		};
	};
	class AGD_RemnantVest_Heavy3: ls_imperialVest_isb_heavy_h {
		scope = 2;
		displayName = "Imperial Remnant Heavy Armour";
		hiddenSelections[] = {"camo","camo1","camo2"};
		hiddenSelectionsTextures[] = {
			QPATHTOF(data\Remnants\Vests\camo_3_co.paa),
			"\ls\core\addons\characters_imperial\vests\tacBelt\data\camo1_co.paa",
			QPATHTOF(data\Remnants\Vests\tacExtras_co.paa)
		};
	};
	class AGD_RemnantVest: ls_imperialVest_army_h {
		scope = 2;
		displayName = "Imperial Remnant Armour";

		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\Remnants\Vests\camo_1_co.paa),"\ls\core\addons\characters_imperial\vests\tacBelt\data\camo1_co.paa"};
	};
	class AGD_RemnantVest2: AGD_RemnantVest {
		displayName = "Imperial Remnant Armour (Variant 2)";

		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\Remnants\Vests\camo_3_co.paa),"\ls\core\addons\characters_imperial\vests\tacBelt\data\camo1_co.paa"};
	};
	class AGD_RemnantVest_Medium: ls_imperialVest_army_medium_h {
		scope = 2;
		displayName = "Imperial Remnant Medium Armour";

		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\Remnants\Vests\camo_1_co.paa),"\ls\core\addons\characters_imperial\vests\tacBelt\data\camo1_co.paa"};
	};
	class AGD_RemnantVest_Light: ls_imperialVest_army_light_h {
		scope = 2;
		displayName = "Imperial Remnant Light Armour";

		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\Remnants\Vests\camo_1_co.paa),"\ls\core\addons\characters_imperial\vests\tacBelt\data\camo1_co.paa"};
	};
	class ls_imperialHelmet_kepi_isb;
	class AGD_NewRepublic_Cap: ls_imperialHelmet_kepi_isb
	{
		scope = 2;
		displayName = "New Republic Army Kepi";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\camo1_co.paa)};
	};

	#include "blackwing\uniforms.hpp"
	#include "remnants\uniforms.hpp"

	#include "vehicles\static_launchers\weapons.hpp"
};