#include "script_component.hpp"
#include "config_list.hpp"
class CfgPatches 
{
    class ADDON 
    {
        name = COMPONENT_NAME;
        units[] = {UNIT_LIST};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {QDOUBLES(PREFIX,core)};
        author = AUTHOR;
        authors[] = { AUTHORS };
        authorUrl = "";
        VERSION_CONFIG;
    };
};

class SensorTemplateIR;
class SensorTemplateActiveRadar;
class SensorTemplateDataLink;
class SensorTemplateVisual;
class SensorTemplatePassiveRadar;
class SensorTemplateLaser;
class SensorTemplateNV;

class CfgFactionClasses
{
    class Antistasi_Empire
    {
        displayName = "Imperial Antistasi Assets";
        priority = 2;
        side = 1;
    };
    class Antistasi_Rebels
    {
        displayName = "Rebel Antistasi Assets";
        priority = 1;
        side = 0;
    };
    class Antistasi_NewRepub
    {
        displayName = "New Republic Assets";
        priority = 1;
        side = 0;
    };
    class Antistasi_Blackwing
    {
        displayName = "Project Blackwing";
        priority = 1;
        side = 0;
    };
    class Antistasi_Sith
    {
        displayName = "Sith Empire Assets";
        priority = 2;
        side = 1;
    };
    class Antistasi_OR
    {
        displayName = "Old Republic Assets";
        priority = 2;
        side = 1;
    };
};
#include "CfgAmmo.hpp"
#include "CfgVehicles.hpp"
#include "CfgWeapons.hpp"
#include "CfgGlasses.hpp"
#include "CfgMagazines.hpp"

class Extended_InitPost_EventHandlers {
    class AGD_Blackwing_Storm {
        class Zombie_Stormtrooper_Init {
            init = "_unit = _this select 0; if (local _unit) then {[_unit, 3] call WBK_LoadAIThroughEden;};";
        };
    };
    class AGD_Blackwing_Storm_Shooter {
        class Zombie_Stormtrooper_Shooter_Init {
            init = "_unit = _this select 0; if (local _unit) then {[_unit, 6] call WBK_LoadAIThroughEden;};";
        };
    };
};