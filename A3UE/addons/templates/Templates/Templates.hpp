class Templates 
{
    class Vanilla_Base;

    class CIS : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOBFACTIONS); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = "ls_statics_props\flags\data\flag_cis.paa"; // Path to an icon to be displayed in the select menu.
        name = "[SOB] CIS"; // Name shown in the select menu.
        file = "CIS"; // The template file name - .sqf, that gets appended automatically.
        climate[] = {"arid", "temperate", "arctic", "tropical"}; // climate that the template can be selected on.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        description = "The Confederacy of Independant Systems spans wide, with a complex military built up of numerous Battledroid and Alien lifeforms"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class DW : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOBFACTIONS); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Inv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = "ls_statics_props\flags\data\flag_mandalorian.paa"; // Path to an icon to be displayed in the select menu.
        name = "[SOB] Maul Deathwatch"; // Name shown in the select menu.
        file = "DW"; // The template file name - .sqf, that gets appended automatically.
        climate[] = {"arid", "temperate", "arctic", "tropical"}; // climate that the template can be selected on.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        description = "Maul's Deathwatch Loyalists provide a brutal but challenging foe"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class Mando : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOBFACTIONS); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = "ls_statics_props\flags\data\flag_mandalorian.paa"; // Path to an icon to be displayed in the select menu.
        name = "[SOB] Mandalorians"; // Name shown in the select menu.
        file = "Mando"; // The template file name - .sqf, that gets appended automatically.
        climate[] = {"arid", "temperate", "arctic", "tropical"}; // climate that the template can be selected on.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        description = "A Mandalorian Clan, featuring many distinct armours"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class OR : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOBFACTIONS); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Inv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = "ls_statics_props\flags\data\flag_repNavy.paa"; // Path to an icon to be displayed in the select menu.
        name = "[SOB] Old Republic"; // Name shown in the select menu.
        file = "OR"; // The template file name - .sqf, that gets appended automatically.
        climate[] = {"arid", "temperate", "arctic", "tropical"}; // climate that the template can be selected on.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        description = "The Military of the Old Republic Predates ours - but do not underestimate them, they're just as deadly"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class Sith : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOBFACTIONS); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = "ls_statics_props\flags\data\flag_repNavy.paa"; // Path to an icon to be displayed in the select menu.
        name = "[SOB] Sith Empire"; // Name shown in the select menu.
        file = "SITH"; // The template file name - .sqf, that gets appended automatically.
        climate[] = {"arid", "temperate", "arctic", "tropical"}; // climate that the template can be selected on.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        description = "Merciless followers of the way of the Sith"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class Imp : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOBFACTIONS); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = "ls_statics_props\flags\data\flag_imp.paa"; // Path to an icon to be displayed in the select menu.
        name = "[SOB] Galactic Empire"; // Name shown in the select menu.
        file = "Empire"; // The template file name - .sqf, that gets appended automatically.
        climate[] = {"arid", "temperate", "arctic", "tropical"}; // climate that the template can be selected on.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        description = "Execute Order 66"; // If this isn't included, no description will show (unless inherited from the base class.)
    }

    class Ion : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOBFACTIONS); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Inv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = "ls_statics_props\flags\data\flag_imp.paa"; // Path to an icon to be displayed in the select menu.
        name = "[SOB] Intergalactic Omnitech Nexus"; // Name shown in the select menu.
        file = "ION"; // The template file name - .sqf, that gets appended automatically.
        climate[] = {"arid", "temperate", "arctic", "tropical"}; // climate that the template can be selected on.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        description = "Corpo-Scum looking to gain a foothold on Altis"; // If this isn't included, no description will show (unless inherited from the base class.)
    }

    class Trando : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOBRIVALS); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Riv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = "\A3\Data_F_Kart\Flags\flag_redburger_co.paa"; // Path to an icon to be displayed in the select menu.
        name = "[SOB] Trandoshan Mercs"; // Name shown in the select menu.
        file = "TNDO"; // The template file name - .sqf, that gets appended automatically.
        climate[] = {"arid", "temperate", "arctic", "tropical"}; // climate that the template can be selected on.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        description = "Mischevious Bastards looking to cause you trouble along your way"; // If this isn't included, no description will show (unless inherited from the base class.)
    }

    class Jaro : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOBFACTIONS); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Inv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = "\A3\Data_F_Exp\Flags\flag_SYND_CO.paa"; // Path to an icon to be displayed in the select menu.
        name = "[SOB] Jaro'tsad"; // Name shown in the select menu.
        file = "JARO"; // The template file name - .sqf, that gets appended automatically.
        climate[] = {"arid", "temperate", "arctic", "tropical"}; // climate that the template can be selected on.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        description = "A highly armoured mercenary group, with a thirst for blood"; // If this isn't included, no description will show (unless inherited from the base class.)
    }

    class GAR : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOBFACTIONS); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Inv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = "ls_statics_props\flags\data\flag_republic.paa"; // Path to an icon to be displayed in the select menu.
        name = "[SOB] Galactic Republic"; // Name shown in the select menu.
        file = "GAR"; // The template file name - .sqf, that gets appended automatically.
        climate[] = {"arid", "temperate", "arctic", "tropical"}; // climate that the template can be selected on.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        description = "How did we get here..."; // If this isn't included, no description will show (unless inherited from the base class.)
    }

    class SOBH : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOB); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Flags\UltraNightmareFlag.paa); // Path to an icon to be displayed in the select menu.
        name = "[SOB] Ultra Nightmare!"; // Name shown in the select menu.
        file = "SOBH"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate", "arctic", "tropical"}; // climate that the template can be selected on.
        description = "You start with nothing and cant purchase vehicles - You'll have to gather everything - It's nothing but you, a baseball bat and a dream..."; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class SOBP2 : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOB); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Flags\NightmareFlag.paa); // Path to an icon to be displayed in the select menu.
        name = "[SOB] Nightmare"; // Name shown in the select menu.
        file = "SOBP2"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate", "arctic", "tropical"}; // climate that the template can be selected on.
        description = "Phase 2 Trooper only from the Start. Access to SR, No backpack, start with only a pistol and a personal aid kit - You have access to your custom P2 Armours"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class Rebel : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOBRIVALS); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Riv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = "ls_statics_props\flags\data\flag_rebel.paa"; // Path to an icon to be displayed in the select menu.
        name = "[SOB] Rebels"; // Name shown in the select menu.
        file = "REBEL"; // The template file name - .sqf, that gets appended automatically.
        climate[] = {"arid", "temperate", "arctic", "tropical"}; // climate that the template can be selected on.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        description = "Rebels looking to overthrow the leading powers themselves!"; // If this isn't included, no description will show (unless inherited from the base class.)
    }

    class Chiss : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOBRIVALS); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Riv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = "\A3\Data_F\Flags\flag_fd_blue_CO.paa"; // Path to an icon to be displayed in the select menu.
        name = "[SOB] Chiss Ascendancy"; // Name shown in the select menu.
        file = "CHISS"; // The template file name - .sqf, that gets appended automatically.
        climate[] = {"arid", "temperate", "arctic", "tropical"}; // climate that the template can be selected on.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        description = "Twenty years ago, even ten, I would have said the destruction of the Chiss Ascendancy would be a straightforward exercise. No longer. A new generation of military leaders has arisen, warriors who cannot be trusted to walk recklessly down the well-worn paths of manipulation set before them"; // If this isn't included, no description will show (unless inherited from the base class.)
    }

    class Cloneinsurr : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOBRIVALS); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Riv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = "\ls_flags\tex\arc.paa"; // Path to an icon to be displayed in the select menu.
        name = "[SOB] Clone Insurrectionists"; // Name shown in the select menu.
        file = "CLONE"; // The template file name - .sqf, that gets appended automatically.
        climate[] = {"arid", "temperate", "arctic", "tropical"}; // climate that the template can be selected on.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        description = "This Rebellion is a festering wound of betrayal, where rogue Special Operations clones twisted their deadly skills into acts of insurrection, poisoning order with their misguided crusade for so-called freedom"; // If this isn't included, no description will show (unless inherited from the base class.)
    }

    class Cloneinsurr2 : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOBFACTIONS); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = "\ls_flags\tex\arc.paa"; // Path to an icon to be displayed in the select menu.
        name = "[SOB] Clone Insurrectionists"; // Name shown in the select menu.
        file = "CLONE2"; // The template file name - .sqf, that gets appended automatically.
        climate[] = {"arid", "temperate", "arctic", "tropical"}; // climate that the template can be selected on.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        description = "This Rebellion is a festering wound of betrayal, where rogue Special Operations clones twisted their deadly skills into acts of insurrection, poisoning order with their misguided crusade for so-called freedom"; // If this isn't included, no description will show (unless inherited from the base class.)
    }

    class SOBHARD : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOB); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Flags\VeteranFlag.paa); // Path to an icon to be displayed in the select menu.
        name = "[SOB] Heroic"; // Name shown in the select menu.
        file = "SOBHARD"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate", "arctic", "tropical"}; // climate that the template can be selected on.
        description = "Start with specialized uniform and SR, but no Helmet, vest, backpack, rifles or LR - For veterans of Antistasi"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class SOBE : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOB); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Flags\MediumFlag.paa); // Path to an icon to be displayed in the select menu.
        name = "[SOB] Normal"; // Name shown in the select menu.
        file = "SOBBASIC"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate", "arctic", "tropical"}; // climate that the template can be selected on.
        description = "Start with specialized armour and SR, but no backpack, rifles or LR - An ideal Antistasi experience"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class SOB : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOB); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Flags\EasyFlag.paa); // Path to an icon to be displayed in the select menu.
        name = "[SOB] Beginner"; // Name shown in the select menu.
        file = "SOB"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate", "arctic", "tropical"}; // climate that the template can be selected on.
        description = "Perfect for players new to antistasi - Provides Starter weapons for Specialised units and gives access to specialised armour, NVGs, radio and RTO - This is easy mode"; // If this isn't included, no description will show (unless inherited from the base class.)
    };
};





/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/