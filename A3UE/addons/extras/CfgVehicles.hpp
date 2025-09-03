class CfgVehicles {
	class B_Truck_01_fuel_F;
	class B_Truck_01_Repair_F;
	class B_Truck_01_ammo_F;
	class AGD_Truck_Imp_Fuel: B_Truck_01_fuel_F
	{
		author = "Ramsey";
		displayName = "Imperial Fuel Truck";

		faction = "Antistasi_Empire";

		hiddenSelections[] = {"Camo1","Camo2","Camo3"};
		hiddenSelectionsTextures[] = {
			QPATHTOF(data\Truck_01_ext_01_CO.paa),
			QPATHTOF(data\Truck_01_ext_02_CO.paa),
			QPATHTOF(data\truck_01_Fuel_CO.paa)
		};
	};
	class AGD_Truck_Imp_Repair: B_Truck_01_Repair_F
	{
		author = "Ramsey";
		displayName = "Imperial Repair Truck";

		faction = "Antistasi_Empire";

		hiddenSelections[] = {"Camo1","Camo2","Camo3","Camo4"};
		hiddenSelectionsTextures[] = {
			QPATHTOF(data\Truck_01_ext_01_CO.paa),
			QPATHTOF(data\Truck_01_ext_02_CO.paa),
			QPATHTOF(data\truck_01_ammo_CO.paa),
			QPATHTOF(data\Containers_02_set_co.paa)
		};
	};
	class AGD_Truck_Imp_Ammo: B_Truck_01_ammo_F
	{
		author = "Ramsey";
		displayName = "Imperial Ammo Truck";

		faction = "Antistasi_Empire";

		hiddenSelections[] = {"Camo1","Camo2","Camo3","Camo4"};
		hiddenSelectionsTextures[] = {
			QPATHTOF(data\Truck_01_ext_01_CO.paa),
			QPATHTOF(data\Truck_01_ext_02_CO.paa),
			QPATHTOF(data\truck_01_ammo_CO.paa)
		};
	};

	class 3AS_Combat_Speeder_F;
	class AGD_Rebel_Speeder_Unarmed: 3AS_Combat_Speeder_F
	{
		author = "Ramsey";
		displayName = "Rebel Speeder (Unarmed)";

		faction = "Antistasi_Rebels";

		hiddenSelectionsTextures[] = {
			QPATHTOF(data\Speeder_Rear_co.paa),
			QPATHTOF(data\Speeder_Front_co.paa)
		};
		weapons[] = {};
		magazines[] = {};
		class TextureSources {
			class Rebel {
				displayName = "Rebel";
				author = AUTHOR;
				textures[] = {
				QPATHTOF(data\Speeder_Rear_co.paa),
				QPATHTOF(data\Speeder_Front_co.paa)
				};
				factions[] = {
					"Antistasi_Rebels"
				};
			};
		};
	};
	class AGD_Rebel_Speeder_armed: AGD_Rebel_Speeder_Unarmed
	{
		displayName = "Rebel Speeder (Armed)";
		weapons[] = {"3AS_Droideka_Repeater"};
		magazines[] = {"3AS_500Rnd_Droideka_RedPlasma","3AS_500Rnd_Droideka_RedPlasma","3AS_500Rnd_Droideka_RedPlasma"};
	};



	class B_Survivor_F;
	class AGD_Mudtrooper_Soldier_F: B_Survivor_F
	{
		author = "Ramsey";
		displayName = "Mudtrooper Soldier";
		scope = 1;

		faction = "Antistasi_Empire";

		uniformClass = "AGD_MudtrooperUniform";

		model = "WarMantle\WM_Imperial_Core\Stormtrooper_Uniform.p3d";
		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\mud_upper_co.paa), QPATHTOF(data\mud_lower_co.paa)};
	};

	class 3AS_PX10_REB_F;
	class AGD_PX10_NewRepub: 3AS_PX10_REB_F
	{
		author = "Ramsey";
		displayName = "New Republic PX-10 Cav";
		faction = "Antistasi_NewRepub";

		hiddenSelections[] = {"Camo","camo2","camo3","camo_Fuel","camo_repair"};
		hiddenSelectionsTextures[] = {
			QPATHTOF(data\PX10CAV_co.paa),
			"3as\3as_rebel_armor\px10_cav\textures\px10cavintback_co.paa",
			"3as\3as_rebel_armor\px10_cav\textures\px10cavintfront_co.paa",
			"3as\3as_rebel_armor\px10_cav\textures\px10fuel_co.paa",
			"3as\3as_rebel_armor\px10_cav\textures\px10crane_co.paa"
		};
	};
	class 3AS_PX10_REB_R3;
	class AGD_PX10_NewRepub_R3: 3AS_PX10_REB_R3 {
		author = "Ramsey";
		displayName = "New Republic PX-10 Cav (R3)";
		faction = "Antistasi_NewRepub";

		hiddenSelections[] = {"Camo","camo2","camo3","camo_Fuel","camo_repair"};
		hiddenSelectionsTextures[] = {
			QPATHTOF(data\PX10CAV_co.paa),
			"3as\3as_rebel_armor\px10_cav\textures\px10cavintback_co.paa",
			"3as\3as_rebel_armor\px10_cav\textures\px10cavintfront_co.paa",
			"3as\3as_rebel_armor\px10_cav\textures\px10fuel_co.paa",
			"3as\3as_rebel_armor\px10_cav\textures\px10crane_co.paa"
		};
	};

	class Car_F;
	class AAC_Base: Car_F {
		class Components;
		class Turrets;
	};
	class WM_AAC_Speeder_Rocket: AAC_Base {
		class Turrets: Turrets {
			class MainTurret;
		};
	};
	class AGD_AAC_AA: WM_AAC_Speeder_Rocket {
		author = "Ramsey";
		displayName = "AAC-1 Speeder AA";
		faction = "Antistasi_Rebels";

		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {QPATHTOF(data\AAC_launcher_co.paa),QPATHTOF(data\aac_hull_co.paa)};

		class TextureSources {
			class AA {
				displayName = "Anti-Air";
				author = "Ramsey";
				textures[] = {QPATHTOF(data\AAC_launcher_co.paa),QPATHTOF(data\aac_hull_co.paa)};
			};
		};

		class Turrets: Turrets {
			class MainTurret: MainTurret {
				magazines[] = {"3AS_20Rnd_Titan_long_missiles","3AS_20Rnd_Titan_long_missiles"};
				weapons[] = {"3AS_missiles_titan_AA"};
			};
		};
		class Components: Components {
			class SensorsManagerComponent {
				class Components {
					class IRSensorComponent: SensorTemplateIR {
						class AirTarget {
							minRange = 30000;
							maxRange = 30000;
							objectDistanceLimitCoef = -1;
							viewDistanceLimitCoef = 1;
						};
						class GroundTarget{
							minRange = 30000;
							maxRange = 30000;
							objectDistanceLimitCoef = 1;
							viewDistanceLimitCoef = 1;
						};
						angleRangeHorizontal = 360;
						angleRangeVertical = 360;
						maxTrackableSpeed = 400;
						componentType = "IRSensorComponent";
						typeRecognitionDistance = 2000;
						maxFogSeeThrough = 0.995;
						color[] = {1, 0, 0, 1};
						allowsMarking = 1;
						groundNoiseDistanceCoef = -1;
						maxGroundNoiseDistance = -1;
						minSpeedThreshold = 0;
						maxSpeedThreshold = 0;
						animDirection = "";
						aimDown = 0;
						minTrackableSpeed = -1e+010;
						minTrackableATL = -1e+010;
						maxTrackableATL = 1e+010;
					};
					class VisualSensorComponent: SensorTemplateVisual {
						class AirTarget {
							minRange = 30000;
							maxRange = 30000;
							objectDistanceLimitCoef = -1;
							viewDistanceLimitCoef = 1;
						};
						class GroundTarget {
							minRange = 30000;
							maxRange = 30000;
							objectDistanceLimitCoef = 1;
							viewDistanceLimitCoef = 1;
						};
						angleRangeHorizontal = 360;
						angleRangeVertical = 360;
						maxTrackableSpeed = 100;
						aimDown = 1;
						animDirection = "";
						componentType = "VisualSensorComponent";
						nightRangeCoef = 0;
						maxFogSeeThrough = 0.94;
						color[] = {1, 1, 0.5, 0.8};
						typeRecognitionDistance = 2000;
						allowsMarking = 1;
						groundNoiseDistanceCoef = -1;
						maxGroundNoiseDistance = -1;
						minSpeedThreshold = 0;
						maxSpeedThreshold = 0;
						minTrackableSpeed = -1e+010;
						minTrackableATL = -1e+010;
						maxTrackableATL = 1e+010;
					};
					class PassiveRadarSensorComponent: SensorTemplatePassiveRadar {
						componentType = "PassiveRadarSensorComponent";
						class AirTarget {
							minRange = 45000;
							maxRange = 45000;
							objectDistanceLimitCoef = -1;
							viewDistanceLimitCoef = -1;
						};
						class GroundTarget {
							minRange = 20000;
							maxRange = 20000;
							objectDistanceLimitCoef = -1;
							viewDistanceLimitCoef = -1;
						};
						typeRecognitionDistance = 12000;
						angleRangeHorizontal = 360;
						angleRangeVertical = 360;
						groundNoiseDistanceCoef = -1;
						maxGroundNoiseDistance = -1;
						minSpeedThreshold = 0;
						maxSpeedThreshold = 0;
						animDirection = "";
						aimDown = 0;
						color[] = {0.5, 1, 0.5, 0.5};
						minTrackableSpeed = -1e+010;
						maxTrackableSpeed = 1e+010;
						minTrackableATL = -1e+010;
						maxTrackableATL = 1e+010;
						allowsMarking = 0;
					};
					class ActiveRadarSensorComponent: SensorTemplateActiveRadar {
						class AirTarget {
							minRange = 30000;
							maxRange = 30000;
							objectDistanceLimitCoef = -1;
							viewDistanceLimitCoef = -1;
						};
						class GroundTarget {
							minRange = 8000;
							maxRange = 8000;
							objectDistanceLimitCoef = -1;
							viewDistanceLimitCoef = -1;
						};
						typeRecognitionDistance = 8000;
						angleRangeHorizontal = 180;
						angleRangeVertical = 180;
						groundNoiseDistanceCoef = 0.2;
						componentType = "ActiveRadarSensorComponent";
						maxGroundNoiseDistance = 200;
						minSpeedThreshold = 30;
						maxSpeedThreshold = 40;
						color[] = {0, 1, 1, 1};
						allowsMarking = 1;
						animDirection = "";
						aimDown = 0;
						minTrackableSpeed = -1e+010;
						maxTrackableSpeed = 1e+010;
						minTrackableATL = -1e+010;
						maxTrackableATL = 1e+010;
					};
					class LaserSensorComponent: SensorTemplateLaser {
						componentType = "LaserSensorComponent";
						class AirTarget {
							minRange = 15000;
							maxRange = 15000;
							objectDistanceLimitCoef = -1;
							viewDistanceLimitCoef = -1;
						};
						class GroundTarget {
							minRange = 15000;
							maxRange = 15000;
							objectDistanceLimitCoef = -1;
							viewDistanceLimitCoef = -1;
						};
						angleRangeHorizontal = 180;
						angleRangeVertical = 180;
						typeRecognitionDistance = 0;
						color[] = {1, 1, 1, 0};
						allowsMarking = 1;
						groundNoiseDistanceCoef = -1;
						maxGroundNoiseDistance = -1;
						minSpeedThreshold = 0;
						maxSpeedThreshold = 0;
						animDirection = "";
						aimDown = 0;
						minTrackableSpeed = -1e+010;
						maxTrackableSpeed = 1e+010;
						minTrackableATL = -1e+010;
						maxTrackableATL = 1e+010;
					};
					class NVSensorComponent: SensorTemplateNV {
						componentType = "NVSensorComponent";
						color[] = {1, 1, 1, 0};
						typeRecognitionDistance = 0;
						class AirTarget {
							minRange = 8000;
							maxRange = 8000;
							objectDistanceLimitCoef = -1;
							viewDistanceLimitCoef = -1;
						};
						class GroundTarget {
							minRange = 8000;
							maxRange = 8000;
							objectDistanceLimitCoef = -1;
							viewDistanceLimitCoef = -1;
						};
						angleRangeHorizontal = 90;
						angleRangeVertical = 90;
						allowsMarking = 1;
						groundNoiseDistanceCoef = -1;
						maxGroundNoiseDistance = -1;
						minSpeedThreshold = 0; 
						maxSpeedThreshold = 0; 
						animDirection = ""; 
						aimDown = 0; 
						minTrackableSpeed = -1e+010; 
						maxTrackableSpeed = 1e+010; 
						minTrackableATL = -1e+010; 
						maxTrackableATL = 1e+010; 
					}; 
				}; 
			};
		};
	};
	
	class WM_Stormtrooper_E11;
	#include "blackwing\units.hpp"
	#include "remnants\units.hpp"
	#include "vehicles\ITT.hpp"
	#include "vehicles\NewRep.hpp"

	#include "vehicles\static_launchers\launchers.hpp"

	#include "civ\units.hpp"
	#include "civ\units_worker.hpp"

	#include "clones\units.hpp"
};