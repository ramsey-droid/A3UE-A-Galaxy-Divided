    class AGD_LLTE_Base: AGD_Base
    {
        requiredAddons[] = {"JMSLLTE_empire_mod"};
        logo = "\x\A3UE\addons\templates\Pictures\Markers\marker_galactic_empire_co.paa";
        priority = 100;
    };
// -------------------- Occupiers ---------------------------------

// -------------------- Invaders ---------------------------------

    class Remnant_Inv_LLTE : AGD_LLTE_Base
    {
        basepath = QPATHTOFOLDER(Templates_LLTE\Remnant); 
        side = "Inv"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_galactic_empire_co.paa); 
        name = "Imperial Remnants [LLTE]"; 
        file = "Remnant_AI"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "Without a ruler to hold them together after the death of the Galactic Emperor Sheev Palpatine, who left behind no instructions of succession, the Empire began to disintegrate"; 
    };
// ---------------------------- Rebels ---------------------------------

    class Imp_Reb_LLTE : AGD_LLTE_Base
    {
        basepath = QPATHTOFOLDER(Templates_LLTE\Remnant); 
        side = "Reb"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_remnants_co.paa); 
        name = "Imperial Remnants [LLTE]"; 
        file = "Remnant"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "Without a ruler to hold them together after the death of the Galactic Emperor Sheev Palpatine, who left behind no instructions of succession, the Empire began to disintegrate. Stand as one of the last holdouts in the name of the Emperor"; 
    };

//-------------------- Civilians ---------------------------------
    class Civ_LLTE : AGD_LLTE_Base
    {
        basepath = QPATHTOFOLDER(Templates_LLTE\Civ); 
        side = "Civ"; 
        flagTexture = "\A3\ui_f_orange\data\cfgmarkers\civildefense.paa"; 
        name = "Civilians [LLTE]"; 
        file = "Civ"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "Following the fall of the Empire, many civilians have been left to fend for themselves in the chaos."; 
    };
