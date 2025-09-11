#include "script_component.hpp"

class CfgPatches 
{
    class ANTISTASI_SFA
    {
        name = COMPONENT_NAME;
        units[] = {"AGD_S_Acolyte","AGD_S_Eradicator","AGD_Truck_Sith_Fuel","AGD_Truck_Sith_Repair","AGD_Truck_Sith_Ammo","AGD_Sith_AAC","AGD_Sith_AAC_AA","AGD_Sith_AAC_Rocket","AGD_Sith_AAC_MRLS"};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"SFA_Core","SW_Items"};
        author = AUTHOR;
        authors[] = { AUTHORS };
        authorUrl = "";
        VERSION_CONFIG;
        skipWhenMissingDependencies = 1;
    };
};

class CfgVehicles
{
    #include "vehicles.hpp"
    #include "units.hpp"
};