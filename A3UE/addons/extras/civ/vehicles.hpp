class a3a_MRAP_03_grey_F;
class AGD_Fennek_Civ: a3a_MRAP_03_grey_F
{
	author = "Ramsey";
	displayName = "Fennek (Civ)";

	armor = 100;

	faction = "Antistasi_Civ";
	weapons[] = {"WM_74ZHorn"};

	hiddenSelections[] = {"Camo1","Camo2"};
	hiddenSelectionsTextures[] = {QPATHTOF(civ\data\vehicle\MRAP_01_ext_CO.paa),"a3\data_f\vehicles\turret_co.paa"};

	soundEngineOffExt[] = {"\ls\core\addons\sounds\vehicles\speeder\end.wss","db-7",1,200};
	soundEngineOffInt[] = {"\ls\core\addons\sounds\vehicles\speeder\end.wss","db-8",1};
	soundEngineOnExt[] = {"\ls\core\addons\sounds\vehicles\barc\start.wss","db-7",1,200};
	soundEngineOnInt[] = {"\ls\core\addons\sounds\vehicles\barc\start.wss","db-8",1};

	class TextureSources {
		class Blue {
			displayName = "Blue";
			author = "Ramsey";
			textures[] = {QPATHTOF(civ\data\vehicle\MRAP_01_ext_CO.paa),"a3\data_f\vehicles\turret_co.paa"};
		};
		class Orange {
			displayName = "Orange";
			author = "Ramsey";
			textures[] = {QPATHTOF(civ\data\vehicle\MRAP_02_ext_CO.paa),"a3\data_f\vehicles\turret_co.paa"};
		};
		class Camo {
			displayName = "Camo";
			author = "Ramsey";
			textures[] = {QPATHTOF(civ\data\vehicle\MRAP_03_ext_CO.paa),"a3\data_f\vehicles\turret_co.paa"};
		};
		class Camo2 {
			displayName = "Camo 2";
			author = "Ramsey";
			textures[] = {QPATHTOF(civ\data\vehicle\MRAP_04_ext_CO.paa),"a3\data_f\vehicles\turret_co.paa"};
		};
		class Green {
			displayName = "Green";
			author = "Ramsey";
			textures[] = {QPATHTOF(civ\data\vehicle\MRAP_05_ext_CO.paa),"a3\data_f\vehicles\turret_co.paa"};
		};
		class GreenRed {
			displayName = "Green Red";
			author = "Ramsey";
			textures[] = {QPATHTOF(civ\data\vehicle\MRAP_06_ext_CO.paa),"a3\data_f\vehicles\turret_co.paa"};
		};
		class White {
			displayName = "White";
			author = "Ramsey";
			textures[] = {QPATHTOF(civ\data\vehicle\MRAP_07_ext_CO.paa),"a3\data_f\vehicles\turret_co.paa"};
		};
	};

	textureList[] = {"Blue",1,"Orange",1,"Camo",1,"Camo2",1,"Green",1,"GreenRed",1,"White",1};
	class EventHandlers{
		postinit = "if (local (_this select 0)) then {[(_this select 0), """", [], false] call bis_fnc_initVehicle;};";
	};

	class Sounds {
		class Engine{
			frequency = "0.8 + ((rpm/6900) factor[(900/6900),(2100/6900)])*0.2";
			sound[] = {"WarMantle\WM_Imperial_Vehicles\CombatSpeeder\data\sound\veh_av21speeder_idle_lp",0.354813,1,200};
			volume = "engineOn*camPos*(((rpm/6900) factor[(870/6900),(1100/6900)]) * ((rpm/6900) factor[(2100/6900),(1300/6900)]))";
		};
		class Engine1_Thrust_ext{
			frequency = "0.8 + ((rpm/6900) factor[(1300/6900),(3100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.707946,1,250};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(1250/6900),(2050/6900)]) * ((rpm/6900) factor[(3100/6900),(2300/6900)]))";
		};
		class Engine1_Thrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(1300/6900),(3100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.707946,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(1250/6900),(2050/6900)]) * ((rpm/6900) factor[(3100/6900),(2300/6900)]))";
		};
		class Engine2_Thrust_ext{
			frequency = "0.8 + ((rpm/6900) factor[(2200/6900),(4100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.707946,1,300};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(2250/6900),(3050/6900)]) * ((rpm/6900) factor[(4100/6900),(3300/6900)]))";
		};
		class Engine2_Thrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(2200/6900),(4100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.794328,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(2250/6900),(3050/6900)]) * ((rpm/6900) factor[(4100/6900),(3300/6900)]))";
		};
		class Engine3_Thrust_ext{
			frequency = "0.8 + ((rpm/6900) factor[(3300/6900),(4900/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.707946,1,350};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(3250/6900),(4050/6900)]) * ((rpm/6900) factor[(4870/6900),(4200/6900)]))";
		};
		class Engine3_Thrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(3300/6900),(4900/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.891251,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(3250/6900),(4050/6900)]) * ((rpm/6900) factor[(4870/6900),(4200/6900)]))";
		};
		class Engine4_Thrust_ext{
			frequency = "0.8 + ((rpm/6900) factor[(4200/6900),(6200/6900)])*0.3";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.707946,1,400};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(4150/6900),(4800/6900)]) * ((rpm/6900) factor[(6150/6900),(5150/6900)]))";
		};
		class Engine4_Thrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(4200/6900),(6200/6900)])*0.3";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",1,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(4150/6900),(4800/6900)]) * ((rpm/6900) factor[(6150/6900),(5150/6900)]))";
		};
		class Engine_int{
			frequency = "0.8 + ((rpm/6900) factor[(900/6900),(2100/6900)])*0.2";
			sound[] = {"WarMantle\WM_Imperial_Vehicles\CombatSpeeder\data\sound\veh_av21speeder_idle_lp",0.281838,1};
			volume = "engineOn*(1-camPos)*(((rpm/6900) factor[(870/6900),(1100/6900)]) * ((rpm/6900) factor[(2100/6900),(1300/6900)]))";
		};
		class EngineThrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(900/6900),(2100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.630957,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(870/6900),(1100/6900)]) * ((rpm/6900) factor[(2100/6900),(1300/6900)]))";
		};
		class Idle_ext{
			frequency = "0.9 + ((rpm/6900) factor[(400/6900),(1150/6900)])*0.2";
			sound[] = {"WarMantle\WM_Imperial_Vehicles\CombatSpeeder\data\sound\veh_av21speeder_idle_lp",0.316228,1,100};
			volume = "engineOn*camPos*(((rpm/6900) factor[(400/6900),(700/6900)]) * ((rpm/6900) factor[(1100/6900),(900/6900)]))";
		};
		class Idle_int{
			frequency = "0.9 + ((rpm/6900) factor[(400/6900),(1150/6900)])*0.2";
			sound[] = {"WarMantle\WM_Imperial_Vehicles\CombatSpeeder\data\sound\veh_av21speeder_idle_lp",0.251189,1};
			volume = "engineOn*(1-camPos)*(((rpm/6900) factor[(400/6900),(700/6900)]) * ((rpm/6900) factor[(1100/6900),(900/6900)]))";
		};
		class IdleThrust{
			frequency = "0.9 + ((rpm/6900) factor[(400/6900),(1150/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.562341,1,150};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(400/6900),(700/6900)]) * ((rpm/6900) factor[(1100/6900),(900/6900)]))";
		};
	};
};

class O_Truck_03_transport_F;
class AGD_Truck_Civ: O_Truck_03_transport_F
{
	author = "Ramsey";
	displayName = "A-A4 Truck (Civ)";

	faction = "Antistasi_Civ";
	
	hiddenSelections[] = {"Camo1","Camo2","Camo3"};
	hiddenSelectionsTextures[] = {
		QPATHTOF(civ\data\vehicle\truck\kamaz_truckorange_01_co.paa),
		QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
		QPATHTOF(civ\data\vehicle\truck\kamaz_truckorange_03_co.paa)
	};
	textureList[] = {"Orange",1,"Green",1,"Blue",1,"DarkGreen",1,"Camo",1,"Camo2",1};

	soundEngineOffExt[] = {"3AS\3as_saber\Sounds\tx130stopex.ogg",4,1,200};
	soundEngineOffInt[] = {"3AS\3as_saber\Sounds\tx130stopin.ogg",2,1};
	soundEngineOnExt[] = {"3AS\3as_saber\Sounds\tx130startex.ogg",4,1,200};
	soundEngineOnInt[] = {"3AS\3as_saber\Sounds\tx130startin.ogg",2,1};

	class EventHandlers{
		postinit = "if (local (_this select 0)) then {[(_this select 0), """", [], false] call bis_fnc_initVehicle;};";
	};
	class TextureSources {
		class Orange {
			displayName = "Orange";
			author = "Ramsey";
			textures[] = {
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckorange_01_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckorange_03_co.paa)
			};
		};
		class Green {
			displayName = "Green";
			author = "Ramsey";
			textures[] = {
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckgreen_01_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckorange_03_co.paa)
			};
		};
		class Blue {
			displayName = "Blue";
			author = "Ramsey";
			textures[] = {
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckblue_01_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckorange_03_co.paa)
			};
		};
		class DarkGreen {
			displayName = "Dark Green";
			author = "Ramsey";
			textures[] = {
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckdarkgreen_01_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckorange_03_co.paa)
			};
		};
		class Camo {
			displayName = "Camo";
			author = "Ramsey";
			textures[] = {
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckcamo_01_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckorange_03_co.paa)
			};
		};
		class Camo2 {
			displayName = "Camo 2";
			author = "Ramsey";
			textures[] = {
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckcamo2_01_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckorange_03_co.paa)
			};
		};
	};

	class Sounds {
		class Engine{
			frequency = "0.8 + ((rpm/6900) factor[(900/6900),(2100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",4.48808,1,240};
			volume = "engineOn*camPos*(((rpm/6900) factor[(870/6900),(1100/6900)]) * ((rpm/6900) factor[(2100/6900),(1300/6900)]))";
		};
		class Engine1_Thrust_ext{
			frequency = "0.8 + ((rpm/6900) factor[(1300/6900),(3100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",5.65016,1,280};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(1250/6900),(2050/6900)]) * ((rpm/6900) factor[(3100/6900),(2300/6900)]))";
		};
		class Engine1_Thrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(1300/6900),(3100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_Thrust_Int.ogg",1.58866,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(1250/6900),(2050/6900)]) * ((rpm/6900) factor[(3100/6900),(2300/6900)]))";
		};
		class Engine2_Thrust_ext{
			frequency = "0.8 + ((rpm/6900) factor[(2200/6900),(4100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.707946,1,300};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(2250/6900),(3050/6900)]) * ((rpm/6900) factor[(4100/6900),(3300/6900)]))";
		};
		class Engine2_Thrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(2200/6900),(4100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_Thrust_Int.ogg",0.794328,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(2250/6900),(3050/6900)]) * ((rpm/6900) factor[(4100/6900),(3300/6900)]))";
		};
		class Engine3_Thrust_ext{
			frequency = "0.8 + ((rpm/6900) factor[(3300/6900),(4900/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.707946,1,350};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(3250/6900),(4050/6900)]) * ((rpm/6900) factor[(4870/6900),(4200/6900)]))";
		};
		class Engine3_Thrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(3300/6900),(4900/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_Thrust_Int.ogg",0.891251,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(3250/6900),(4050/6900)]) * ((rpm/6900) factor[(4870/6900),(4200/6900)]))";
		};
		class Engine4_Thrust_ext{
			frequency = "0.8 + ((rpm/6900) factor[(4200/6900),(6200/6900)])*0.3";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.707946,1,400};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(4150/6900),(4800/6900)]) * ((rpm/6900) factor[(6150/6900),(5150/6900)]))";
		};
		class Engine4_Thrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(4200/6900),(6200/6900)])*0.3";
			sound[] = {"3as\3as_AAT\Sounds\AAT_Thrust_Int.ogg",1,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(4150/6900),(4800/6900)]) * ((rpm/6900) factor[(6150/6900),(5150/6900)]))";
		};
		class Engine_int{
			frequency = "0.8 + ((rpm/6900) factor[(900/6900),(2100/6900)])*0.2";
			sound[] = {"WarMantle\WM_Imperial_Vehicles\CombatSpeeder\data\sound\veh_av21speeder_idle_lp",0.281838,1};
			volume = "engineOn*(1-camPos)*(((rpm/6900) factor[(870/6900),(1100/6900)]) * ((rpm/6900) factor[(2100/6900),(1300/6900)]))";
		};
		class EngineThrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(900/6900),(2100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.630957,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(870/6900),(1100/6900)]) * ((rpm/6900) factor[(2100/6900),(1300/6900)]))";
		};
		class Idle_ext{
			frequency = "0.9 + ((rpm/6900) factor[(400/6900),(1150/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_idle.ogg",4,1,200};
			volume = "engineOn*camPos*(((rpm/6900) factor[(400/6900),(700/6900)]) * ((rpm/6900) factor[(1100/6900),(900/6900)]))";
		};
		class Idle_int{
			frequency = "0.9 + ((rpm/6900) factor[(400/6900),(1150/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_idle_Int.ogg",2,1};
			volume = "engineOn*(1-camPos)*(((rpm/6900) factor[(400/6900),(700/6900)]) * ((rpm/6900) factor[(1100/6900),(900/6900)]))";
		};
		class IdleThrust{
			frequency = "0.9 + ((rpm/6900) factor[(400/6900),(1150/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",5.65016,1,200};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(400/6900),(700/6900)]) * ((rpm/6900) factor[(1100/6900),(900/6900)]))";
		};
	};
};

class O_Truck_03_repair_F;
class AGD_Truck_Civ_Repair: O_Truck_03_repair_F
{
	author = "Ramsey";
	displayName = "A-A4 Repair Truck (Civ)";

	faction = "Antistasi_Civ";
	
	hiddenSelections[] = {"Camo1","Camo2","Camo3"};
	hiddenSelectionsTextures[] = {
		QPATHTOF(civ\data\vehicle\truck\kamaz_truckorange_01_co.paa),
		QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
		QPATHTOF(civ\data\vehicle\truck\kamaz_truck_repair_co.paa)
	};
	textureList[] = {"Orange",1,"Green",1,"Blue",1,"DarkGreen",1,"Camo",1,"Camo2",1};

	soundEngineOffExt[] = {"3AS\3as_saber\Sounds\tx130stopex.ogg",4,1,200};
	soundEngineOffInt[] = {"3AS\3as_saber\Sounds\tx130stopin.ogg",2,1};
	soundEngineOnExt[] = {"3AS\3as_saber\Sounds\tx130startex.ogg",4,1,200};
	soundEngineOnInt[] = {"3AS\3as_saber\Sounds\tx130startin.ogg",2,1};

	class EventHandlers{
		postinit = "if (local (_this select 0)) then {[(_this select 0), """", [], false] call bis_fnc_initVehicle;};";
	};
	class TextureSources {
		class Orange {
			displayName = "Orange";
			author = "Ramsey";
			textures[] = {
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckorange_01_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_repair_co.paa)
			};
		};
		class Green {
			displayName = "Green";
			author = "Ramsey";
			textures[] = {
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckgreen_01_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_repair_co.paa)
			};
		};
		class Blue {
			displayName = "Blue";
			author = "Ramsey";
			textures[] = {
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckblue_01_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_repair_co.paa)
			};
		};
		class DarkGreen {
			displayName = "Dark Green";
			author = "Ramsey";
			textures[] = {
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckdarkgreen_01_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_repair_co.paa)
			};
		};
		class Camo {
			displayName = "Camo";
			author = "Ramsey";
			textures[] = {
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckcamo_01_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_repair_co.paa)
			};
		};
		class Camo2 {
			displayName = "Camo 2";
			author = "Ramsey";
			textures[] = {
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckcamo2_01_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_repair_co.paa)
			};
		};
	};

	class Sounds {
		class Engine{
			frequency = "0.8 + ((rpm/6900) factor[(900/6900),(2100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",4.48808,1,240};
			volume = "engineOn*camPos*(((rpm/6900) factor[(870/6900),(1100/6900)]) * ((rpm/6900) factor[(2100/6900),(1300/6900)]))";
		};
		class Engine1_Thrust_ext{
			frequency = "0.8 + ((rpm/6900) factor[(1300/6900),(3100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",5.65016,1,280};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(1250/6900),(2050/6900)]) * ((rpm/6900) factor[(3100/6900),(2300/6900)]))";
		};
		class Engine1_Thrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(1300/6900),(3100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_Thrust_Int.ogg",1.58866,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(1250/6900),(2050/6900)]) * ((rpm/6900) factor[(3100/6900),(2300/6900)]))";
		};
		class Engine2_Thrust_ext{
			frequency = "0.8 + ((rpm/6900) factor[(2200/6900),(4100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.707946,1,300};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(2250/6900),(3050/6900)]) * ((rpm/6900) factor[(4100/6900),(3300/6900)]))";
		};
		class Engine2_Thrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(2200/6900),(4100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_Thrust_Int.ogg",0.794328,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(2250/6900),(3050/6900)]) * ((rpm/6900) factor[(4100/6900),(3300/6900)]))";
		};
		class Engine3_Thrust_ext{
			frequency = "0.8 + ((rpm/6900) factor[(3300/6900),(4900/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.707946,1,350};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(3250/6900),(4050/6900)]) * ((rpm/6900) factor[(4870/6900),(4200/6900)]))";
		};
		class Engine3_Thrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(3300/6900),(4900/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_Thrust_Int.ogg",0.891251,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(3250/6900),(4050/6900)]) * ((rpm/6900) factor[(4870/6900),(4200/6900)]))";
		};
		class Engine4_Thrust_ext{
			frequency = "0.8 + ((rpm/6900) factor[(4200/6900),(6200/6900)])*0.3";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.707946,1,400};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(4150/6900),(4800/6900)]) * ((rpm/6900) factor[(6150/6900),(5150/6900)]))";
		};
		class Engine4_Thrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(4200/6900),(6200/6900)])*0.3";
			sound[] = {"3as\3as_AAT\Sounds\AAT_Thrust_Int.ogg",1,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(4150/6900),(4800/6900)]) * ((rpm/6900) factor[(6150/6900),(5150/6900)]))";
		};
		class Engine_int{
			frequency = "0.8 + ((rpm/6900) factor[(900/6900),(2100/6900)])*0.2";
			sound[] = {"WarMantle\WM_Imperial_Vehicles\CombatSpeeder\data\sound\veh_av21speeder_idle_lp",0.281838,1};
			volume = "engineOn*(1-camPos)*(((rpm/6900) factor[(870/6900),(1100/6900)]) * ((rpm/6900) factor[(2100/6900),(1300/6900)]))";
		};
		class EngineThrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(900/6900),(2100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.630957,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(870/6900),(1100/6900)]) * ((rpm/6900) factor[(2100/6900),(1300/6900)]))";
		};
		class Idle_ext{
			frequency = "0.9 + ((rpm/6900) factor[(400/6900),(1150/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_idle.ogg",4,1,200};
			volume = "engineOn*camPos*(((rpm/6900) factor[(400/6900),(700/6900)]) * ((rpm/6900) factor[(1100/6900),(900/6900)]))";
		};
		class Idle_int{
			frequency = "0.9 + ((rpm/6900) factor[(400/6900),(1150/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_idle_Int.ogg",2,1};
			volume = "engineOn*(1-camPos)*(((rpm/6900) factor[(400/6900),(700/6900)]) * ((rpm/6900) factor[(1100/6900),(900/6900)]))";
		};
		class IdleThrust{
			frequency = "0.9 + ((rpm/6900) factor[(400/6900),(1150/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",5.65016,1,200};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(400/6900),(700/6900)]) * ((rpm/6900) factor[(1100/6900),(900/6900)]))";
		};
	};
};

class O_Truck_03_fuel_F;
class AGD_Truck_Civ_Fuel: O_Truck_03_fuel_F
{
	author = "Ramsey";
	displayName = "A-A4 Fuel Truck (Civ)";

	faction = "Antistasi_Civ";
	
	hiddenSelections[] = {"Camo1","Camo2","Camo3"};
	hiddenSelectionsTextures[] = {
		QPATHTOF(civ\data\vehicle\truck\kamaz_truckorange_01_co.paa),
		QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
		QPATHTOF(civ\data\vehicle\truck\kamaz_truck_fuel_co.paa)
	};
	textureList[] = {"Orange",1,"Green",1,"Blue",1,"DarkGreen",1,"Camo",1,"Camo2",1};

	soundEngineOffExt[] = {"3AS\3as_saber\Sounds\tx130stopex.ogg",4,1,200};
	soundEngineOffInt[] = {"3AS\3as_saber\Sounds\tx130stopin.ogg",2,1};
	soundEngineOnExt[] = {"3AS\3as_saber\Sounds\tx130startex.ogg",4,1,200};
	soundEngineOnInt[] = {"3AS\3as_saber\Sounds\tx130startin.ogg",2,1};

	class EventHandlers{
		postinit = "if (local (_this select 0)) then {[(_this select 0), """", [], false] call bis_fnc_initVehicle;};";
	};
	class TextureSources {
		class Orange {
			displayName = "Orange";
			author = "Ramsey";
			textures[] = {
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckorange_01_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_fuel_co.paa)
			};
		};
		class Green {
			displayName = "Green";
			author = "Ramsey";
			textures[] = {
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckgreen_01_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_fuel_co.paa)
			};
		};
		class Blue {
			displayName = "Blue";
			author = "Ramsey";
			textures[] = {
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckblue_01_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_fuel_co.paa)
			};
		};
		class DarkGreen {
			displayName = "Dark Green";
			author = "Ramsey";
			textures[] = {
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckdarkgreen_01_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_fuel_co.paa)
			};
		};
		class Camo {
			displayName = "Camo";
			author = "Ramsey";
			textures[] = {
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckcamo_01_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_fuel_co.paa)
			};
		};
		class Camo2 {
			displayName = "Camo 2";
			author = "Ramsey";
			textures[] = {
				QPATHTOF(civ\data\vehicle\truck\kamaz_truckcamo2_01_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_02_co.paa),
				QPATHTOF(civ\data\vehicle\truck\kamaz_truck_fuel_co.paa)
			};
		};
	};

	class Sounds {
		class Engine{
			frequency = "0.8 + ((rpm/6900) factor[(900/6900),(2100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",4.48808,1,240};
			volume = "engineOn*camPos*(((rpm/6900) factor[(870/6900),(1100/6900)]) * ((rpm/6900) factor[(2100/6900),(1300/6900)]))";
		};
		class Engine1_Thrust_ext{
			frequency = "0.8 + ((rpm/6900) factor[(1300/6900),(3100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",5.65016,1,280};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(1250/6900),(2050/6900)]) * ((rpm/6900) factor[(3100/6900),(2300/6900)]))";
		};
		class Engine1_Thrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(1300/6900),(3100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_Thrust_Int.ogg",1.58866,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(1250/6900),(2050/6900)]) * ((rpm/6900) factor[(3100/6900),(2300/6900)]))";
		};
		class Engine2_Thrust_ext{
			frequency = "0.8 + ((rpm/6900) factor[(2200/6900),(4100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.707946,1,300};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(2250/6900),(3050/6900)]) * ((rpm/6900) factor[(4100/6900),(3300/6900)]))";
		};
		class Engine2_Thrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(2200/6900),(4100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_Thrust_Int.ogg",0.794328,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(2250/6900),(3050/6900)]) * ((rpm/6900) factor[(4100/6900),(3300/6900)]))";
		};
		class Engine3_Thrust_ext{
			frequency = "0.8 + ((rpm/6900) factor[(3300/6900),(4900/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.707946,1,350};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(3250/6900),(4050/6900)]) * ((rpm/6900) factor[(4870/6900),(4200/6900)]))";
		};
		class Engine3_Thrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(3300/6900),(4900/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_Thrust_Int.ogg",0.891251,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(3250/6900),(4050/6900)]) * ((rpm/6900) factor[(4870/6900),(4200/6900)]))";
		};
		class Engine4_Thrust_ext{
			frequency = "0.8 + ((rpm/6900) factor[(4200/6900),(6200/6900)])*0.3";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.707946,1,400};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(4150/6900),(4800/6900)]) * ((rpm/6900) factor[(6150/6900),(5150/6900)]))";
		};
		class Engine4_Thrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(4200/6900),(6200/6900)])*0.3";
			sound[] = {"3as\3as_AAT\Sounds\AAT_Thrust_Int.ogg",1,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(4150/6900),(4800/6900)]) * ((rpm/6900) factor[(6150/6900),(5150/6900)]))";
		};
		class Engine_int{
			frequency = "0.8 + ((rpm/6900) factor[(900/6900),(2100/6900)])*0.2";
			sound[] = {"WarMantle\WM_Imperial_Vehicles\CombatSpeeder\data\sound\veh_av21speeder_idle_lp",0.281838,1};
			volume = "engineOn*(1-camPos)*(((rpm/6900) factor[(870/6900),(1100/6900)]) * ((rpm/6900) factor[(2100/6900),(1300/6900)]))";
		};
		class EngineThrust_int{
			frequency = "0.8 + ((rpm/6900) factor[(900/6900),(2100/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",0.630957,1};
			volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(870/6900),(1100/6900)]) * ((rpm/6900) factor[(2100/6900),(1300/6900)]))";
		};
		class Idle_ext{
			frequency = "0.9 + ((rpm/6900) factor[(400/6900),(1150/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_idle.ogg",4,1,200};
			volume = "engineOn*camPos*(((rpm/6900) factor[(400/6900),(700/6900)]) * ((rpm/6900) factor[(1100/6900),(900/6900)]))";
		};
		class Idle_int{
			frequency = "0.9 + ((rpm/6900) factor[(400/6900),(1150/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_idle_Int.ogg",2,1};
			volume = "engineOn*(1-camPos)*(((rpm/6900) factor[(400/6900),(700/6900)]) * ((rpm/6900) factor[(1100/6900),(900/6900)]))";
		};
		class IdleThrust{
			frequency = "0.9 + ((rpm/6900) factor[(400/6900),(1150/6900)])*0.2";
			sound[] = {"3as\3as_AAT\Sounds\AAT_thrust.ogg",5.65016,1,200};
			volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/6900) factor[(400/6900),(700/6900)]) * ((rpm/6900) factor[(1100/6900),(900/6900)]))";
		};
	};
};