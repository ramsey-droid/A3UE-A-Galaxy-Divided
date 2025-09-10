    class AGD_Base
    {
        requiredAddons[] = {"ls_loadorder","JLTS_core","3AS"};
        basepath = QPATHTOFOLDER(Templates);
        logo = "\x\A3UE\addons\templates\Pictures\Markers\marker_galactic_empire_co.paa";
        priority = 100;
    };
// -------------------- Occupiers ---------------------------------
    class Empire_Basic : AGD_Base
    {
        basepath = QPATHTOFOLDER(Templates\Empire); 
        side = "Occ"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_galactic_empire_co.paa); 
        name = "Galactic Empire"; 
        file = "Empire_Base"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "The Galactic Empire, or simply the Empire, was the government that replaced the Galactic Republic, established by Supreme Chancellor Palpatine to rule the galaxy with an iron fist"; 
    };
    class Empire_Tropical : AGD_Base
    {
        basepath = QPATHTOFOLDER(Templates\Empire); 
        side = "Occ"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_galactic_empire_co.paa); 
        name = "Galactic Empire (Tropical)"; 
        file = "Empire_Tropical"; 
        maps[] = {}; 
        climate[] = {"tropical"}; 
        description = "The Galactic Empire, or simply the Empire, was the government that replaced the Galactic Republic, established by Supreme Chancellor Palpatine to rule the galaxy with an iron fist"; 
    };

    class New_Republic : AGD_Base
    {
        basepath = QPATHTOFOLDER(Templates\NewRepub); 
        side = "Occ"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_new_republic_co.paa); 
        name = "New Republic"; 
        file = "NewRepublic"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "With the death of Emperor Palpatine at the Battle of Endor, the Alliance to Restore the Republic founded the New Republic, fulfilling its mandate to restore the Galactic Republic and a return of freedom"; 
    };

// -------------------- Invaders ---------------------------------

    class Rebels_Inv_AI : AGD_Base
    {
        basepath = QPATHTOFOLDER(Templates\Rebels); 
        side = "Inv"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_rebels_co.paa); 
        name = "Alliance to Restore the Republic"; 
        file = "Rebels_AI"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "The Alliance to Restore the Republic, commonly referred to as the Rebel Alliance, was a coalition of various groups and individuals who opposed the Galactic Empire and sought to restore the Galactic Republic."; 
    };

    class Remnant_Inv : AGD_Base
    {
        basepath = QPATHTOFOLDER(Templates\Remnant); 
        side = "Inv"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_galactic_empire_co.paa); 
        name = "Imperial Remnants"; 
        file = "Remnant_AI"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "Without a ruler to hold them together after the death of the Galactic Emperor Sheev Palpatine, who left behind no instructions of succession, the Empire began to disintegrate"; 
    };
// ---------------------------- Rebels ---------------------------------

    class Rebels_Reb : AGD_Base
    {
        basepath = QPATHTOFOLDER(Templates\Rebels); 
        side = "Reb"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_rebels_co.paa); 
        name = "Alliance to Restore the Republic"; 
        file = "Rebels"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "I have friends everywhere"; 
    };
    class Imp_Reb : AGD_Base
    {
        basepath = QPATHTOFOLDER(Templates\Remnant); 
        side = "Reb"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_remnants_co.paa); 
        name = "Imperial Remnants"; 
        file = "Remnant"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "Without a ruler to hold them together after the death of the Galactic Emperor Sheev Palpatine, who left behind no instructions of succession, the Empire began to disintegrate. Stand as one of the last holdouts in the name of the Emperor"; 
    };
    class Imp_Mando_Reb : AGD_Base
    {
        basepath = QPATHTOFOLDER(Templates\Mandalorians); 
        side = "Reb"; 
        flagTexture = "\ls\core\addons\data\flags\flag_mandalorian_damaged_ca.paa"; 
        name = "Clan Saxon"; 
        file = "MandoEvil"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "The Mandalorians of Clan Saxon seek to restore Mandalore to its former glory, even if it means working with the Empire"; 
    };
    class Mando_Reb : AGD_Base
    {
        basepath = QPATHTOFOLDER(Templates\Mandalorians); 
        side = "Reb"; 
        flagTexture = "\ls\core\addons\data\flags\flag_mandalorian_damaged_ca.paa"; 
        name = "Mandalorian Survivors"; 
        file = "Mando"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "The Mandalorians are a proud warrior culture, seeking to maintain their way of life in an ever changing galaxy"; 
    };
    class Clone_Reb : AGD_Base
    {
        basepath = QPATHTOFOLDER(Templates\Clones); 
        side = "Reb"; 
        flagTexture = "\ls\core\addons\data\flags\flag_republic_damaged_ca.paa"; 
        name = "Clone Underground"; 
        file = "Underground"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "Led by Clone Commander Rex, the Clone Underground fights for the freedom of the galaxy against the oppressive regime of the Empire"; 
    };

// -------------------- WBK Zombies Dependancy -------------------------------
    class Project_Blackwing : AGD_Base
    {
        basepath = QPATHTOFOLDER(Templates\Misc); 
        side = "Civ"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_zombie_co.paa); 
        name = "Project Blackwing"; 
        file = "Blackwing"; 
        maps[] = {}; 
        requiredAddons[] = {"WBK_ZombieCreatures_Units"};
        climate[] = {"arid", "temperate"}; 
        description = "There's very little intel as of yet, but we believe that a group of Imperial scientists have been doing covert bio-weapons research..."; 
    };

// -------------------- Civilians ---------------------------------
    class Civ_Post : AGD_Base
    {
        basepath = QPATHTOFOLDER(Templates\Civ); 
        side = "Civ"; 
        flagTexture = "\A3\ui_f_orange\data\cfgmarkers\civildefense.paa"; 
        name = "Civilians"; 
        file = "Civ"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "Following the fall of the Empire, many civilians have been left to fend for themselves in the chaos."; 
    };

// ------------------- Rivals ---------------------------------
    class Mando_Rivals: AGD_Base
    {
        basepath = QPATHTOFOLDER(Templates\Rivals); 
        side = "Riv"; 
        flagTexture = "\ls\core\addons\data\flags\flag_mandalorian_damaged_ca.paa"; 
        name = "Mandalorian Survivors"; 
        file = "Mandalorian"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "Following the Great Purge of Mandalore, the survivors banded together to protect their way of life"; 
    };
    class CIS_Rivals: AGD_Base
    {
        basepath = QPATHTOFOLDER(Templates\Rivals); 
        side = "Riv"; 
        flagTexture = "\ls\core\addons\data\flags\flag_cis_damaged_ca.paa"; 
        name = "Neo-Separatist Coalition"; 
        file = "Droids"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "After the Death of Count Dooku, the Neo-Separatist Coalition emerged to continue the fight, now against the Galactic Empire"; 
    };

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/