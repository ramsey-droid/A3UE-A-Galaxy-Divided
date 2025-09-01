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
        Here we are creating a completely new class that inherits from Vanilla_Base (Link in the top comment above)

        Since it has a unique classname, this will show up as a new faction in the faction selector rather than overwriting an existing one.

        You do not need all of these values. If they are in the Vanilla_Base class, they will be inherited. Only define a value if you need to change it.
    */
    class Empire_Basic : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Empire); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_galactic_empire_co.paa); // Path to an icon to be displayed in the select menu.
        name = "Galactic Empire"; // Name shown in the select menu.
        file = "Empire_Base"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate"}; // climate that the template can be selected on.
        description = "This is a new template, called the Galactic Empire!"; // If this isn't included, no description will show (unless inherited from the base class.)
    };
    class Empire_Tropical : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Empire); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_galactic_empire_co.paa); // Path to an icon to be displayed in the select menu.
        name = "Galactic Empire (Tropical)"; // Name shown in the select menu.
        file = "Empire_Tropical"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"tropical"}; // climate that the template can be selected on.
        description = "This is a new template, called the Galactic Empire (Tropical)!"; // If this isn't included, no description will show (unless inherited from the base class.)
    };
    class Remnant_Inv : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Remnant); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Inv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_galactic_empire_co.paa); // Path to an icon to be displayed in the select menu.
        name = "Imperial Remnants"; // Name shown in the select menu.
        file = "Remnant_AI"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate"}; // climate that the template can be selected on.
        description = "Without a ruler to hold them together after the death of the Galactic Emperor Sheev Palpatine, who left behind no instructions of succession, the Empire began to disintegrate"; // If this isn't included, no description will show (unless inherited from the base class.)
    };
    class New_Republic : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\NewRepub); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_galactic_empire_co.paa); // Path to an icon to be displayed in the select menu.
        name = "New Republic"; // Name shown in the select menu.
        file = "NewRepublic"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate"}; // climate that the template can be selected on.
        description = "With the death of Emperor Palpatine at the Battle of Endor, the Alliance to Restore the Republic founded the New Republic, fulfilling its mandate to restore the Galactic Republic and a return of freedom"; // If this isn't included, no description will show (unless inherited from the base class.)
    };
    /*
        Here we are creating a completely new class that inherits from Vanilla_AAF_New.

        Since it has a unique classname, this will show up as a new faction in the faction selector rather than overwriting Vanilla_AAF_New.

        You will see that the only values changed are name and description. These are the only differences. This faction will have the exact same equipment, flag, etc as Vanilla_AAF_New.
    */

    class Rebels_Reb : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Rebels); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_galactic_empire_co.paa); // Path to an icon to be displayed in the select menu.
        name = "Alliance to Restore the Republic"; // Name shown in the select menu.
        file = "Rebels"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate"}; // climate that the template can be selected on.
        description = "I have friends everywhere"; // If this isn't included, no description will show (unless inherited from the base class.)
    };
    class Imp_Reb : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Remnant); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_remnants_co.paa); // Path to an icon to be displayed in the select menu.
        name = "Imperial Remnants"; // Name shown in the select menu.
        file = "Remnant"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate"}; // climate that the template can be selected on.
        description = "Without a ruler to hold them together after the death of the Galactic Emperor Sheev Palpatine, who left behind no instructions of succession, the Empire began to disintegrate. Stand as one of the last holdouts in the name of the Emperor"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class Rebels_Inv_AI : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Rebels); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Inv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_rebels_co.paa); // Path to an icon to be displayed in the select menu.
        name = "Alliance to Restore the Republic"; // Name shown in the select menu.
        file = "Rebels_AI"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate"}; // climate that the template can be selected on.
        description = "The Alliance to Restore the Republic"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class Project_Blackwing : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Misc); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Civ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_rebels_co.paa); // Path to an icon to be displayed in the select menu.
        name = "Project Blackwing"; // Name shown in the select menu.
        file = "Blackwing"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate"}; // climate that the template can be selected on.
        description = "There's very little intel as of yet, but we believe that a group of Imperial scientists have been doing covert bio-weapons research..."; // If this isn't included, no description will show (unless inherited from the base class.)
    };
};


/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/