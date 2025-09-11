class a3a_MRAP_03_grey_F;
class AGD_Fennek_Civ: a3a_MRAP_03_grey_F
{
	author = "Ramsey";
	displayName = "Fennek (Civ)";

	faction = "Antistasi_Civ";

	hiddenSelections[] = {"Camo1","Camo2"};
	hiddenSelectionsTextures[] = {QPATHTOF(civ\data\vehicle\MRAP_01_ext_CO.paa),"a3\data_f\vehicles\turret_co.paa"};

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
	};

	textureList[] = {"Blue",1,"Orange",1,"Camo",1};
	class EventHandlers{
		postinit = "if (local (_this select 0)) then {[(_this select 0), """", [], false] call bis_fnc_initVehicle;};";
	};
};

	class B_MRAP_01_F;
	class AGD_ATV_Civ: B_MRAP_01_F {
		author = "Ramsey";
		displayName = "ATV (Civ)";

		faction = "Antistasi_Civ";

		hiddenSelections[] = {"Camo1","Camo2","riotpolice"};
		hiddenSelectionsTextures[] = {"\A3\soft_F\MRAP_01\data\MRAP_01_base_CO.paa","",""};

		class TextureSources {
			class Base {
				displayName = "Base";
				author = "Ramsey";
				textures[] = {"\A3\soft_F\MRAP_01\data\MRAP_01_base_CO.paa","",""};
			};
		};
	};