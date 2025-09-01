/*
    VEHICLE_TYPE = What type the vehicle is.
        types : ['AA', 'APC', 'ARMEDCAR', 'ARTILLERY', 'BOAT', 'HELI', 'PLANE', 'STATICAA', 'STATICAT', 'STATICMG', 'STATICMORTAR', 'TANK', 'UAV', 'UNARMEDCAR']

    VEHICLE_CONDITION = Condition to show.
        VEHICLE_CONDITION_X : VEHICLE_CONDITION + VEHICLE_TYPE

    VEHICLE_CONDITION_X can also be replaced with a string to add your own condition.

    ITEM(CLASSNAME, PRICE, VEHICLE_TYPE, VEHICLE_CONDITION_X);
*/

class vehicles_ls : vehicles_base
{
    ITEM(ls_vehicle_starsaber, 44500, "PLANE", VEHICLE_CONDITION_PLANE);
    ITEM(ls_vehicle_laatle, 41500, "HELI", VEHICLE_CONDITION_HELI);
    ITEM(ls_vehicle_z95, 47000, "PLANE", VEHICLE_CONDITION_PLANE);
    ITEM(ls_vehicle_z98, 46500, "PLANE", VEHICLE_CONDITION_PLANE);
};
