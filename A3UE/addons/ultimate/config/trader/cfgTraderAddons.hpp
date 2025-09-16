    /*
        Each addon entry can use these values:
        addons[] = {};
        weapons = traderWeapons entry;
        vehicles = traderVehicles entry;

        Essentially, this is the core file. It links to other files.
    */
    
    class addons_agd_weapons_IDA : addons_base
    {
        addons[] = {"IDA_Imperial", "IDA_Republic", "IDA_CIS", "IDA_INDEP"};
        weapons = "AGD_IDA_stock";
    };
    class addons_agd_weapons_WM : addons_base
    {
        addons[] = {"WM_Rebels"};
        weapons = "AGD_WM_stock";
        vehicles = "vehicles_wm";
    };
    class addons_agd_weapons_3as : addons_base
    {
        addons[] = {"3AS"};
        weapons = "AGD_3AS_stock";
        vehicles = "vehicles_3as";
    };
    class addons_agd_weapons_extra : addons_base
    {
        addons[] = {"ls_loadorder","JLTS_core"};
        weapons = "AGD_Misc_Stock";
        vehicles = "vehicles_ls";
    };
    class addons_agd_weapons_knd : addons_base
    {
        addons[] = {"knd_newArmor"};
        weapons = "AGD_KND_stock";
        vehicles = "vehicles_knd";
    };