	class AGD_Truck_Sith_Fuel: B_Truck_01_fuel_F
	{
		author = "Ramsey";
		side = 0;
		displayName = "Imperial Fuel Truck";

		faction = "Antistasi_Sith";

		hiddenSelections[] = {"Camo1","Camo2","Camo3"};
		hiddenSelectionsTextures[] = {
			QPATHTOF(data\Sith\Truck_01_ext_01_CO.paa),
			QPATHTOF(data\Sith\Truck_01_ext_02_CO.paa),
			QPATHTOF(data\Sith\truck_01_Fuel_CO.paa)
		};
	};
	class AGD_Truck_Sith_Repair: B_Truck_01_Repair_F
	{
		author = "Ramsey";
		side = 0;
		displayName = "Imperial Repair Truck";

		faction = "Antistasi_Sith";

		hiddenSelections[] = {"Camo1","Camo2","Camo3","Camo4"};
		hiddenSelectionsTextures[] = {
			QPATHTOF(data\Sith\Truck_01_ext_01_CO.paa),
			QPATHTOF(data\Sith\Truck_01_ext_02_CO.paa),
			QPATHTOF(data\Sith\truck_01_ammo_CO.paa),
			QPATHTOF(data\Sith\Containers_02_set_co.paa)
		};
	};
	class AGD_Truck_Sith_Ammo: B_Truck_01_ammo_F
	{
		author = "Ramsey";
		side = 0;
		displayName = "Imperial Ammo Truck";

		faction = "Antistasi_Sith";

		hiddenSelections[] = {"Camo1","Camo2","Camo3","Camo4"};
		hiddenSelectionsTextures[] = {
			QPATHTOF(data\Sith\Truck_01_ext_01_CO.paa),
			QPATHTOF(data\Sith\Truck_01_ext_02_CO.paa),
			QPATHTOF(data\Sith\truck_01_ammo_CO.paa)
		};
	};
	class AGD_Sith_AAC_AA :AGD_AAC_AA
	{
		faction = "Antistasi_Sith";
		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\Sith\AAC_launcher_co.paa),QPATHTOF(data\Sith\aac_hull_co.paa)};

		class TextureSources {
			class AA {
				displayName = "Anti-Air";
				author = "Ramsey";
				textures[] = {QPATHTOF(data\Sith\AAC_launcher_co.paa),QPATHTOF(data\Sith\aac_hull_co.paa)};
			};
		};
	};

	class AGD_OR_AAC: WM_AAC_Speeder
	{
		faction = "Antistasi_OR";
		side = 1;
		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {"WarMantle\WM_Imperial_Vehicles\AAC\data\repeater_co.paa",QPATHTOF(data\OldRep\aac_hull_co.paa)};

		transportSoldier = 8;

		class TextureSources {
			class OR {
				displayName = "Old Republic";
				author = "Ramsey";
				textures[] = {"WarMantle\WM_Imperial_Vehicles\AAC\data\repeater_co.paa",QPATHTOF(data\OldRep\aac_hull_co.paa)};
			};
		};
	};
	class AGD_OR_AAC_Rocket: WM_AAC_Speeder_Rocket
	{
		faction = "Antistasi_OR";
		side = 1;
		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\OldRep\AAC_launcher_co.paa),QPATHTOF(data\OldRep\aac_hull_co.paa)};

		transportSoldier = 8;

		class TextureSources {
			class OR {
				displayName = "Old Republic";
				author = "Ramsey";
				textures[] = {QPATHTOF(data\OldRep\AAC_launcher_co.paa),QPATHTOF(data\OldRep\aac_hull_co.paa)};
			};
		};
	};
	class AGD_OR_AAC_MRLS: WM_AAC_Speeder_Artillery
	{
			faction = "Antistasi_OR";
			side = 1;
			hiddenSelections[] = {"camo","camo1"};
			hiddenSelectionsTextures[] = {QPATHTOF(data\OldRep\AAC_launcher_co.paa),QPATHTOF(data\OldRep\aac_hull_co.paa)};

			transportSoldier = 8;

			class TextureSources {
				class OR {
					displayName = "Old Republic";
					author = "Ramsey";
					textures[] = {QPATHTOF(data\OldRep\AAC_launcher_co.paa),QPATHTOF(data\OldRep\aac_hull_co.paa)};
				};
			};
		};
	class AGD_Sith_AAC: AGD_OR_AAC
	{
		side = 0;
		faction = "Antistasi_Sith";
		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {"WarMantle\WM_Imperial_Vehicles\AAC\data\repeater_co.paa",QPATHTOF(data\Sith\aac_hull_co.paa)};

		class TextureSources {
			class Sith {
				displayName = "Sith";
				author = "Ramsey";
				textures[] = {"WarMantle\WM_Imperial_Vehicles\AAC\data\repeater_co.paa",QPATHTOF(data\Sith\aac_hull_co.paa)};
			};
		};
	};