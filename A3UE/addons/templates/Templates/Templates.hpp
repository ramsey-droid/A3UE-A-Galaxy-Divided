class Templates 
{
    class Vanilla_Base;
// -------------------- Occupiers ---------------------------------
    class Empire_Basic : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Empire); 
        side = "Occ"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_galactic_empire_co.paa); 
        name = "Galactic Empire"; 
        file = "Empire_Base"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "This is a new template, called the Galactic Empire!"; 
    };
    class Empire_Tropical : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Empire); 
        side = "Occ"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_galactic_empire_co.paa); 
        name = "Galactic Empire (Tropical)"; 
        file = "Empire_Tropical"; 
        maps[] = {}; 
        climate[] = {"tropical"}; 
        description = "This is a new template, called the Galactic Empire (Tropical)!"; 
    };

    class New_Republic : Vanilla_Base
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

    class Rebels_Inv_AI : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Rebels); 
        side = "Inv"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_rebels_co.paa); 
        name = "Alliance to Restore the Republic"; 
        file = "Rebels_AI"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "The Alliance to Restore the Republic"; 
    };

    class Remnant_Inv : Vanilla_Base
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

    class Rebels_Reb : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Rebels); 
        side = "Reb"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_galactic_empire_co.paa); 
        name = "Alliance to Restore the Republic"; 
        file = "Rebels"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "I have friends everywhere"; 
    };
    class Imp_Reb : Vanilla_Base
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


// -------------------- WBK Zombies Dependancy -------------------------------
    class Project_Blackwing : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Misc); 
        side = "Civ"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_rebels_co.paa); 
        name = "Project Blackwing"; 
        file = "Blackwing"; 
        maps[] = {}; 
        requiredAddons[] = {"WBK_ZombieCreatures_Units"};
        climate[] = {"arid", "temperate"}; 
        description = "There's very little intel as of yet, but we believe that a group of Imperial scientists have been doing covert bio-weapons research..."; 
    };
};


/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/