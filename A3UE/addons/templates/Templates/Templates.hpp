class Templates 
{
    /*
        A "Class" literally just stores things. It by itself does not do anything.

        In the case of Antistasi, most of the scripts will grab all classes from the corresponding configs.

        Say we have a function that grabs all factions and displays their name. These classes exist as storage and key-value pairs basically.
    */

    class Vanilla_Base;
    /*
        Vanilla_Base is a class in the main Antistasi Ultimate mod. It contains values for factions and such.
        https://github.com/SilenceIsFatto/A3-Antistasi-Ultimate/blob/stable/A3A/addons/core/Templates/Templates.hpp#L61-L69

        Class inheritance is a very useful thing and allows you to not have to re-define values in every class. Read more here:
        https://community.bistudio.com/wiki/Class_Inheritance
    */

    /*
        Vanilla_AAF is a class in the main Antistasi Ultimate mod.
        https://github.com/SilenceIsFatto/A3-Antistasi-Ultimate/blob/stable/A3A/addons/core/Templates/Templates.hpp#L123-L132

        By redefining it here, we are essentially replacing the values of this class. 
        Because of inheritance and how classes work, it will only change the values that we change here. 
        If we simply wanted to rename the AAF to AAF 2, we would change the name value. Everything else would be left untouched.

        In this case we are changing the basepath value (so it can find our new template);
        The name (so we know it's different);
        And the file (so it will use our custom template instead of the normal one.)
        Everything else will be inherited from the class (link above)
    */
    class Vanilla_AAF
    { 
        basepath = QPATHTOFOLDER(Templates\Vanilla);
        name = "A3 AAF (OVERWRITTEN)"; // Name shown in the select menu. If this is removed, it will use the name of the template you are overwriting. Remove this for "silent" changes
        file = "Vanilla_AI_AAF";
    };

    /*
        Here we are creating a completely new class that inherits from Vanilla_Base (Link in the top comment above)

        Since it has a unique classname, this will show up as a new faction in the faction selector rather than overwriting an existing one.

        You do not need all of these values. If they are in the Vanilla_Base class, they will be inherited. Only define a value if you need to change it.
    */
    class Vanilla_AAF_New : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Vanilla); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Vanilla\flag_aaf_torn_co.paa); // Path to an icon to be displayed in the select menu.
        name = "A3 AAF (NEW)"; // Name shown in the select menu.
        file = "Vanilla_AI_AAF_New"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate"}; // climate that the template can be selected on.
        description = "This is a new template, called the A3 AAF (NEW)!"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    /*
        Here we are creating a completely new class that inherits from Vanilla_AAF_New.

        Since it has a unique classname, this will show up as a new faction in the faction selector rather than overwriting Vanilla_AAF_New.

        You will see that the only values changed are name and description. These are the only differences. This faction will have the exact same equipment, flag, etc as Vanilla_AAF_New.
    */
    class Vanilla_AAF_New_InheritanceExample : Vanilla_AAF_New
    {
        name = "A3 AAF (NEW INHERITED)";
        description = "This is a new template, called the A3 AAF (NEW INHERITED)!";
    };

    class SOB : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOB); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Flags\EasyFlag.paa); // Path to an icon to be displayed in the select menu.
        name = "[SOB] Beginner"; // Name shown in the select menu.
        file = "SOB"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate"}; // climate that the template can be selected on.
        description = "Perfect for players new to antistasi - Provides Starter weapons for Specialised units and gives access to specialised armour, NVGs, radio and RTO - This is easy mode"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

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

    class SOBP2 : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOB); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Flags\NightmareFlag.paa); // Path to an icon to be displayed in the select menu.
        name = "[SOB] Nightmare "; // Name shown in the select menu.
        file = "SOBP2"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate"}; // climate that the template can be selected on.
        description = "Phase 2 Trooper only from the Start. Access to SR, No backpack, start with only a pistol and a personal aid kit - You have access to your custom P2 Armours"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class SOBH : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOB); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Flags\UltraNightmareFlag.paa); // Path to an icon to be displayed in the select menu.
        name = "[SOB] Ultra Nightmare!"; // Name shown in the select menu.
        file = "SOBH"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate"}; // climate that the template can be selected on.
        description = "You start with nothing and cant purchase vehicles - You'll have to gather everything - It's nothing but you, a baseball bat and a dream..."; // If this isn't included, no description will show (unless inherited from the base class.)
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

    class SOBE : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOB); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Flags\MediumFlag.paa); // Path to an icon to be displayed in the select menu.
        name = "[SOB] Normal"; // Name shown in the select menu.
        file = "SOBBASIC"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate"}; // climate that the template can be selected on.
        description = "Start with specialized armour and SR, but no backpack, rifles or LR - An ideal Antistasi experience"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class SOBHARD : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\SOB); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Flags\VeteranFlag.paa); // Path to an icon to be displayed in the select menu.
        name = "[SOB] Heroic"; // Name shown in the select menu.
        file = "SOBHARD"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate"}; // climate that the template can be selected on.
        description = "Start with specialized uniform and SR, but no Helmet, vest, backpack, rifles or LR - An ideal Antistasi experience"; // If this isn't included, no description will show (unless inherited from the base class.)
    };
};





/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/