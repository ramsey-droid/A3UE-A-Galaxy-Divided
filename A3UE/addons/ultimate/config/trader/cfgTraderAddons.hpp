    /*
        Each addon entry can use these values:
        addons[] = {};
        weapons = traderWeapons entry;
        vehicles = traderVehicles entry;

        Essentially, this is the core file. It links to other files.
    */
    
    class addons_MTI : addons_base
    {
        addons[] = {"mti_weapons_GH", "mti_vehicles", "mti_armoury_arc", "mti_armoury_rc"};
        weapons = "my_extension_weapons_mti";
        vehicles = "my_extension_vehicles_vanilla";
    };


