/*
    VEHICLE_TYPE = What type the vehicle is.
        types : ['AA', 'APC', 'ARMEDCAR', 'ARTILLERY', 'BOAT', 'HELI', 'PLANE', 'STATICAA', 'STATICAT', 'STATICMG', 'STATICMORTAR', 'TANK', 'UAV', 'UNARMEDCAR']

    VEHICLE_CONDITION = Condition to show.
        VEHICLE_CONDITION_X : VEHICLE_CONDITION + VEHICLE_TYPE

    VEHICLE_CONDITION_X can also be replaced with a string to add your own condition.

    ITEM(CLASSNAME, PRICE, VEHICLE_TYPE, VEHICLE_CONDITION_X);
*/

class vehicles_knd : vehicles_base
{
    ITEM(KND_RAT, 13000, "APC", VEHICLE_CONDITION_APC);
    ITEM(knd_ETA2_VTOL_Dynamic_F, 44500, "PLANE", VEHICLE_CONDITION_PLANE);
    ITEM(knd_FangFighter_VTOL_Dynamic_F, 81500, "PLANE", VEHICLE_CONDITION_PLANE);
    ITEM(knd_Z98_VTOL_Dynamic_F, 47000, "PLANE", VEHICLE_CONDITION_PLANE);
    ITEM(knd_KomrkFighter_VTOL_Dynamic_F, 79000, "PLANE", VEHICLE_CONDITION_PLANE);
};
