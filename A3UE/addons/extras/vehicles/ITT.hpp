	class Wheeled_Apc_F;
	class APC_Wheeled_01_base_F: Wheeled_Apc_F 
    {
		class Turrets;
	};
	class 3AS_ITT_Base: APC_Wheeled_01_base_F {
		class Turrets: Turrets {
			class MainTurret;
            class CommanderTurret;
            class CargoTurret_01;
            class CargoTurret_02;
            class CargoTurret_03;
            class CargoTurret_04;
            class CargoTurret_05;
            class CargoTurret_06;
            class CargoTurret_07;
            class CargoTurret_08;
            class CargoTurret_09;
            class CargoTurret_10;
            class CargoTurret_11;
            class CargoTurret_12;
            class CargoTurret_13;
            class CargoTurret_14;
		};
	};
	class AGD_ITT_Unarmed: 3AS_ITT_Base{
		scope = 2;
		scopeCurator = 2;
		side = 1;

		crew = "B_Soldier_F";
		author = "Ramsey";
		displayName = "ITT (Unarmed)";
		faction = "Antistasi_Empire";
		editorSubcategory = "EdSubcat_APCs";

		hiddenSelections[] = {"camo1","camo2","camo3","camo4","camo5","camo6","camo7"};
		hiddenSelectionsTextures[] = {"3as\3as_itt\data\itt_co.paa","3as\3as_itt\data\glass_co.paa","3as\3as_itt\data\itt_int_back_co.paa","3as\3as_itt\data\itt_door_co.paa","3as\3as_itt\data\itt_int_front_co.paa","3as\3as_itt\data\itt_emiss_co.paa",""};

		class Turrets: Turrets {
			class MainTurret: MainTurret {
				magazines[] = {};
				weapons[] = {};
			};
			class CommanderTurret: CommanderTurret {
				magazines[] = {};
				weapons[] = {};
			};
		};
	};
	class AGD_ITT_Rebel_Unarmed: AGD_ITT_Unarmed
	{
		displayName = "Rebel ITT (Unarmed)";
		faction = "Antistasi_Rebels";
		side = 0;
		hiddenSelections[] = {"camo1","camo2","camo3","camo4","camo5","camo6","camo7"};
		hiddenSelectionsTextures[] = {
			QPATHTOF(data\ITT_R_CO.paa),
			"3as\3as_itt\data\glass_co.paa",
			"3as\3as_itt\data\itt_int_back_co.paa",
			"3as\3as_itt\data\itt_door_co.paa",
			"3as\3as_itt\data\itt_int_front_co.paa",
			"3as\3as_itt\data\itt_emiss_co.paa",
			""
		};
	};

	class AGD_Rebel_ITT: 3AS_ITT_Base
	{
		scope = 2;
		scopeCurator = 2;
		side = 0;

		author = "Ramsey";
		displayName = "Rebel ITT";

		faction = "Antistasi_Rebels";
		hiddenSelections[] = {"camo1","camo2","camo3","camo4","camo5","camo6","camo7"};
		hiddenSelectionsTextures[] = {
			QPATHTOF(data\ITT_R_CO.paa),
			"3as\3as_itt\data\glass_co.paa",
			"3as\3as_itt\data\itt_int_back_co.paa",
			"3as\3as_itt\data\itt_door_co.paa",
			"3as\3as_itt\data\itt_int_front_co.paa",
			"3as\3as_itt\data\itt_emiss_co.paa",
			"3as\3as_itt\data\itt_turret_co.paa"
		};
	};

	class AGD_NewRepub_ITT: AGD_Rebel_ITT
	{
		author = "Ramsey";
		displayName = "New Republic ITT";
		faction = "Antistasi_NewRepub";
		hiddenSelections[] = {"camo1","camo2","camo3","camo4","camo5","camo6","camo7"};
		hiddenSelectionsTextures[] = {
			QPATHTOF(data\ITT_NR_CO.paa),
			"3as\3as_itt\data\glass_co.paa",
			"3as\3as_itt\data\itt_int_back_co.paa",
			"3as\3as_itt\data\itt_door_co.paa",
			"3as\3as_itt\data\itt_int_front_co.paa",
			"3as\3as_itt\data\itt_emiss_co.paa",
			"3as\3as_itt\data\itt_turret_co.paa"
		};
	};

	class 3AS_ITT_Medical;
	class AGD_Rebel_ITT_Medical: 3AS_ITT_Medical
	{
		author = "Ramsey";
		displayName = "Rebel ITT (Medical)";
		side = 0;

		faction = "Antistasi_Rebels";
		hiddenSelections[] = {"camo1","camo2","camo3","camo4","camo5","camo6","camo7"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\ITT_R_CO.paa),"3as\3as_itt\data\glass_co.paa","3as\3as_itt\data\itt_int_back_co.paa","3as\3as_itt\data\itt_door_co.paa","3as\3as_itt\data\itt_int_front_co.paa","3as\3as_itt\data\itt_emiss_co.paa","3as\3as_itt\data\itt_turret_co.paa"};
	};

	class AGD_NewRepub_ITT_Medical: AGD_Rebel_ITT_Medical
	{
		author = "Ramsey";
		displayName = "New Republic ITT (Medical)";

		faction = "Antistasi_NewRepub";
		hiddenSelections[] = {"camo1","camo2","camo3","camo4","camo5","camo6","camo7"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\ITT_NR_CO.paa),"3as\3as_itt\data\glass_co.paa","3as\3as_itt\data\itt_int_back_co.paa","3as\3as_itt\data\itt_door_co.paa","3as\3as_itt\data\itt_int_front_co.paa","3as\3as_itt\data\itt_emiss_co.paa","3as\3as_itt\data\itt_turret_co.paa"};
	};

	class 3AS_ITT_Logistic;
	class AGD_Rebel_ITT_Logistic: 3AS_ITT_Logistic
	{
		author = "Ramsey";
		displayName = "Rebel ITT (Logistic)";
		side = 0;

		faction = "Antistasi_Rebels";
		hiddenSelections[] = {"camo1","camo2","camo3","camo4","camo5","camo6","camo7"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\ITT_R_CO.paa),"3as\3as_itt\data\glass_co.paa","3as\3as_itt\data\itt_int_back_co.paa","3as\3as_itt\data\itt_door_co.paa","3as\3as_itt\data\itt_int_front_co.paa","3as\3as_itt\data\itt_emiss_co.paa","3as\3as_itt\data\itt_turret_co.paa"};
	};

	class AGD_NewRepub_ITT_Logistic: AGD_Rebel_ITT_Logistic
	{
		author = "Ramsey";
		displayName = "New Republic ITT (Logistic)";

		faction = "Antistasi_NewRepub";
		hiddenSelections[] = {"camo1","camo2","camo3","camo4","camo5","camo6","camo7"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\ITT_NR_CO.paa),"3as\3as_itt\data\glass_co.paa","3as\3as_itt\data\itt_int_back_co.paa","3as\3as_itt\data\itt_door_co.paa","3as\3as_itt\data\itt_int_front_co.paa","3as\3as_itt\data\itt_emiss_co.paa","3as\3as_itt\data\itt_turret_co.paa"};
	};