/*
	Macro: ERROR_WITH_TITLE()

	Parameters:
	0: CLASSNAME - Classname of item
	1: PRICE - Default item price
	2: STOCK - Default item stock
__________________________________________________________________*/
#define ITEM(CLASSNAME, PRICE, STOCK)\
	class CLASSNAME {\
		price = PRICE;\
		stock = STOCK;\
	};

#define MAGAZINE_STOCK 200
#define LAUNCHER_STOCK 15
#define PISTOL_STOCK 50
#define RIFLE_STOCK 20
#define MZ_STOCK 50
#define NN_STOCK 50
#define PN_STOCK 25
#define MISC_STOCK 50

class cfgHALsStore 
{
	class categories 
	{
		#include "config\IDA_Weapons.hpp"
		#include "config\WM_Weapons.hpp"
		#include "config\3AS_Weapons.hpp"
		#include "config\Extra_Weapons.hpp"
	};

	class stores 
	{
		class AGD_IDA_stock
		{
			displayName = "Indecisive Armoury";
			categories[] = {
				"handgunsIDA",
				"riflesIDA", 
				"sniperRiflesIDA", 
				"mgIDA",
				"opticsIDA",
				"magazinesIDA"
			};
		};
		class AGD_WM_stock
		{
			displayName = "Warmantle Weaponry";
			categories[] = {
				"handgunswmemp",
				"rifleswmemp",
				"launcherswmemp",
				"magazineswmemp",
				"opticswmemp"
			};
		};
		class AGD_3AS_Stock
		{
			displayName = "3AS Weaponry";
			categories[] = {
				"handguns3AS",
				"rifles3AS",
				"sniperRifles3AS",
				"mg3AS",
				"smg3AS",
				"special3AS",
				"launchers3AS",
				"specialMagazines3AS",
				"launcherMagazines3AS",
				"navigation3AS",
				"pointers3AS",
				"muzzles3AS",
				"magazines3AS",
				"optics3AS",
				"misc3AS"
			};
		};
		class AGD_Misc_Stock
		{
			displayName = "Warmantle Weaponry";
			categories[] = {
				"WeaponsLS",
				"MagazinesLS",
				"BackpacksLS",
				"HelmetsLS",
				"VestsLS"
			};
		};
	};
};
