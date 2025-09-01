class WeaponsLS
{
	displayName = "Misc Exotic Weapons";
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

	ITEM(ls_weapon_acpr, 500, 3);
	ITEM(ls_weapon_ls150, 1100, 3);
	ITEM(ls_weapon_mercenarySniper, 2800, 2);

	ITEM(ls_weapon_rd4, 3700, 2);
	ITEM(JLTS_EPL2, 2900, 2);
	ITEM(ls_weapon_zh73, 2600, 2);
	ITEM(ls_weapon_firepuncher, 3500, 1);
};

class MagazinesLS
{
	displayName = "Misc Exotic Magazines";
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

	class ls_magazine_zh73 {
		price = 180;
		stock = 15;
	};

	class ls_magazine_rd4_6Rnd {
		price = 220;
		stock = 10;
	};

	class JLTS_EPL2_mag {
		price = 160;
		stock = 10;
	};

	class ls_magazine_3Rnd_40mw_IM304D {
		price = 200;
		stock = 10;
	};

	class ls_magazine_2Rnd_40mw_IM334K {
		price = 180;
		stock = 10;
	};

	class ls_magazine_2Rnd_40mw_IM973B {
		price = 180;
		stock = 10;
	};

	class ls_magazine_3Rnd_40mw_IM92F {
		price = 200;
		stock = 10;
	};

	class ls_magazine_mercenarySniper {
		price = 240;
		stock = 8;
	};

	class ls_magazine_acpr {
		price = 160;
		stock = 15;
	};
	class ls_weapon_ls150 {
		price = 150;
		stock = 15;
	};

	class ls_magazine_firepuncher {
		price = 300;
		stock = 5;
	};
};

class BackpacksLS
{
	displayName = "Backpacks";
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";

	ITEM(ls_rebelBackpack_chest_pouch, 180, 8);
	ITEM(ls_backpack_chestRig, 200, 8);
	ITEM(ls_backpack_chestRigPouch, 220, 8);
	ITEM(ls_cloneBackpack_ammo, 350, 5);
	ITEM(ls_cloneBackpack_arc, 400, 4);
	ITEM(ls_cloneBackpack_standard, 250, 10);
	ITEM(ls_cloneBackpack_beltbag, 150, 12);
	ITEM(ls_cloneBackpack_cdv, 300, 6);
	ITEM(ls_mandalorianBackpack, 450, 3);
	ITEM(ls_cloneBackpack_rocket, 500, 3);
	ITEM(ls_sob_commando_backpack, 380, 4);
	ITEM(ls_sob_commando_rto_backpack, 420, 4);
	ITEM(ls_cloneBackpack_heavy, 550, 2);
	ITEM(ls_backpack_hawkbat, 480, 3);
};

class HelmetsLS
{
	displayName = "Misc Helmets";
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\headgear_ca.paa";

	ITEM(JLTS_CloneHelmetSCC_SC, 120, 15);
	ITEM(ls_mandalorianHelmet_deathwatchGrunt, 150, 12);
	ITEM(ls_helmet_cqcm, 180, 10);
	ITEM(ls_sob_tech_helmet, 200, 8);
	ITEM(JLTS_CloneHelmetP2_bomb, 220, 10);
	ITEM(JLTS_CloneHelmetP2_332, 250, 8);
	ITEM(ls_mandalorianHelmet_vizslaCaptain, 300, 6);
	ITEM(ls_helmet_jockey, 320, 5);
	ITEM(JLTS_CloneHelmetAB_Purge, 350, 4);
	ITEM(ls_mandalorianHelmet_stalker, 380, 4);
	ITEM(ls_imperialHelmet_army, 400, 3);
	ITEM(ls_helmet_reinforcedServiceCoif, 450, 3);
	ITEM(ls_jabiimHelmet_nationalist, 480, 2);
	ITEM(ls_imperialHelmet_army_gd_isb, 500, 2);
	ITEM(ls_jabiimHelmet_nimbusCommando, 550, 1);
};

class VestsLS
{
	displayName = "Misc Vests";
	picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\headgear_ca.paa";

	// Basic Protection Tier (120-200)
	ITEM(ls_vest_spacer, 120, 15);
	ITEM(ls_vest_poncho, 150, 12);
	ITEM(JLTS_CloneVestLieutenant, 180, 10);
	
	// Advanced Protection Tier (300-400)
	ITEM(ls_imperialVest_army_black, 350, 4);
	
	// Elite Protection Tier (450-550)
	ITEM(ls_newRepublicVest_naval_heavy, 450, 3);
	ITEM(ls_vest_flakJacket_open, 480, 2);
	ITEM(ls_vest_flakJacket_pouchesAlt_brown, 520, 1);
};