    class AGD_LLTE_Base: AGD_Base
    {
        requiredAddons[] = {"JMSLLTE_empire_mod"};
        logo = QPATHTOF(Templates_LLTE\LLTEicon_ca.paa);
        priority = 100;
    };
// -------------------- Occupiers ---------------------------------
    class Empire_Basic_LLTE : AGD_LLTE_Base
    {
        basepath = QPATHTOFOLDER(Templates_LLTE\Empire); 
        side = "Occ"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_galactic_empire_co.paa); 
        name = "Galactic Empire [LLTE]"; 
        file = "Empire_Base"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "Expands on the Galactic Empire faction, adding more vehicles, uniforms and weapons to their arsenal"; 
    };

    class NewRepublic_LLTE : AGD_LLTE_Base
    {
        basepath = QPATHTOFOLDER(Templates_LLTE\NewRepub); 
        side = "Occ"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_republic_co.paa); 
        name = "New Republic [LLTE]"; 
        file = "NewRepublic"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "Expands on the New Republic faction, adding more vehicles, uniforms and weapons to their arsenal"; 
    };

// -------------------- Invaders ---------------------------------
    class Hutt_Cartel_LLTE : AGD_LLTE_Base
    {
        basepath = QPATHTOFOLDER(Templates_LLTE\Hutt); 
        side = "Inv"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_rebel_co.paa); 
        name = "Hutt Cartel [LLTE]"; 
        file = "Cartel"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate", "tropical"}; 
        description = "The Hutt Cartel is a powerful and influential criminal organization led by the Hutt species, known for their involvement in various illicit activities across the galaxy, including smuggling, extortion, and assassination.";
    };

    class Remnant_Inv_LLTE : AGD_LLTE_Base
    {
        basepath = QPATHTOFOLDER(Templates_LLTE\Remnant); 
        side = "Inv"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_galactic_empire_co.paa); 
        name = "Imperial Remnants [LLTE]"; 
        file = "Remnant_AI"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "The addition of JM's LLTE includes some minor tweaks to the remnant faction, adding more vehicles and weapons to their arsenal"; 
    };

    class Rebel_Inv_LLTE : AGD_LLTE_Base
    {
        basepath = QPATHTOFOLDER(Templates_LLTE\Rebel); 
        side = "Inv"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_rebel_co.paa); 
        name = "Rebels [LLTE]"; 
        file = "Rebels_AI"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "The addition of JM's LLTE includes a complete overhaul of the rebel faction, adding more uniforms, vehicles and weapons to their arsenal"; 
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
        description = "The addition of JM's LLTE includes some minor tweaks to the remnant faction, adding more vehicles and weapons to their arsenal"; 
    };

    class Rebel_LLTE : AGD_LLTE_Base
    {
        basepath = QPATHTOFOLDER(Templates_LLTE\Rebel); 
        side = "Reb"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_rebel_co.paa); 
        name = "Rebels [LLTE]"; 
        file = "Rebels"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "The addition of JM's LLTE includes a complete overhaul of the rebel faction, adding more uniforms, vehicles and weapons to their arsenal"; 
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
        description = "The addition of LLTE features a complete revamp of the civilian faction, with more sci-fi themed vehicles"; 
    };
// ----------------- Rivals ---------------------------------

    class Hondo_Rivals: AGD_LLTE_Base
    {
        basepath = QPATHTOFOLDER(Templates_LLTE\Rivals); 
        side = "Riv"; 
        flagTexture = "3AS\3as_props\Flags\Data\camo_flag_vanilla\camo_flag_vanilla_pir\camo_flag_vanilla_pir_co.paa"; 
        name = "Onhaka Gang [LLTE]"; 
        file = "Hondo"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate", "tropical"}; 
        description = "A notorious gang led by the infamous Hondo Ohnaka, known for their cunning and resourcefulness in the galaxy's underworld."; 
    };

    class Partisan_Rival_LLTE: AGD_LLTE_Base
    {
        basepath = QPATHTOFOLDER(Templates_LLTE\Rivals); 
        side = "Riv"; 
        flagTexture = "\A3\ui_f_orange\data\cfgmarkers\civildefense.paa"; 
        name = "Partisan Fighters [LLTE]"; 
        file = "Partisans"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "Led by Saw Gerrera, the Partisan Fighters are a militant group fighting against the tyranny of the Empire using guerrilla tactics and unconventional warfare"; 
    };

    class CIS_Rivals_LLTE: AGD_LLTE_Base
    {
        basepath = QPATHTOFOLDER(Templates_LLTE\Rivals); 
        side = "Riv"; 
        flagTexture = "\ls\core\addons\data\flags\flag_cis_damaged_ca.paa"; 
        name = "Neo-Separatist Coalition [LLTE]"; 
        file = "Droids"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "With the fall of the Separatist movement, remnants of the Confederacy have regrouped under new leadership to continue their fight against the Republic and the Empire"; 
    };