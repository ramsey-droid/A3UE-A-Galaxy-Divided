//////////////////////////////
//   Civilian Information   //
//////////////////////////////

//////////////////////////
//       Vehicles       //
//////////////////////////

private _civCarsWithWeights = [
    "C_Hatchback_01_F", 1.3,
    "C_SUV_01_F", 1.0,
    "OPTRE_M12_CIV", 1.0,
    "I_G_Offroad_01_F", 1.0
];
private _civBoat = [
    "C_Boat_Civil_01_rescue_F", 0.1,           // motorboats
    "C_Boat_Civil_01_police_F", 0.1,
    "C_Boat_Civil_01_F", 1.0,
    "C_Rubberboat", 1.0                        // rescue boat
];
private _civIndustrial = [
    "C_Truck_02_covered_F", 1.0,
    "OPTRE_forklift", 0.8,
    "C_Truck_02_transport_F", 0.5,
    "B_MRAP_01_F", 0.5
];
private _civRepair = [
    "B_G_Offroad_01_repair_F", 0.3,
    "C_Offroad_01_repair_F", 0.1
];
private _civMedical = ["OPTRE_M12_ins_MED", 0.2];
private _civFuel = [
    "C_Truck_02_fuel_F", 0.2,
    "OPTRE_m1015_mule_fuel_cma", 0.1
];

private _civPlanes = ["3AS_Civilian_Transport_01"];
private _civHelicopter = ["a3a_C_Heli_Light_02_blue_F"];

["vehiclesCivCar", _civCarsWithWeights] call _fnc_saveToTemplate;
["vehiclesCivHeli", _civHelicopter] call _fnc_saveToTemplate;
["vehiclesCivIndustrial", _civIndustrial] call _fnc_saveToTemplate;
["vehiclesCivBoat", _civBoat] call _fnc_saveToTemplate;
["vehiclesCivRepair", _civRepair] call _fnc_saveToTemplate;
["vehiclesCivMedical", _civMedical] call _fnc_saveToTemplate;
["vehiclesCivFuel", _civFuel] call _fnc_saveToTemplate;
["vehiclesCivPlanes", _civPlanes] call _fnc_saveToTemplate;

["animations", [
]] call _fnc_saveToTemplate;

["variants", [
]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _faces = [
    "Head_SFA_Arcona_01",
    "Head_SFA_Trandoshan_01",
    "Head_SFA_Twilek_01",
    "Head_SFA_Twilek_02",
    "Head_SFA_Twilek_03",
    "Head_SFA_Twilek_04",
    "Head_SFA_Twilek_05",
    "Head_SFA_Duros_01",
    "Head_SFA_Duros_02",
    "Head_SFA_Duros_03",
    "Head_SFA_Duros_04",
    "Head_SFA_Cathar_01",
    "Head_SFA_Cathar_02",
    "Head_SFA_Cathar_03",
    "Head_chiss_01"
];

["faces", _faces] call _fnc_saveToTemplate;

private _civUniforms = [
    "SFA_Combat_Eng_Uniform",
    "U_B_ParadeUniform_01_UCNavy_F",
    "U_B_ParadeUniform_01_UCMC_F",
    "WM_ParaMilitary_Urban_Shirt",
    "WM_ParaMilitary_Tee",
    "WM_ParaMilitary_Shirt_Rolled",
    "SFA_Imp_Officer",
    "SFA_Officer_Uniform",
    "OPTRE_Ins_ER_rolled_OD_crimson",
    "OPTRE_Ins_ER_rolled_surplus_crimson",
    "U_C_FormalSuit_01_gray_F",
    "U_C_FormalSuit_01_khaki_F",
    "U_C_FormalSuit_01_black_F",
    "U_C_FormalSuit_01_blue_F",
    "U_O_ParadeUniform_01_CSAT_F",
    "U_I_E_ParadeUniform_01_LDF_F",
    "U_C_Man_casual_2_F",
    "U_Marshal"
];

private _pressUniforms = [
    "TKE_CombatUniRolledV1ArmyV3_U_B"
];

private _workerUniforms = [
    "TKE_WarbotUniWorker_U_B"
];

private _dlcUniforms = [];

private _civHats = [];

private _workerHelmets = ["TKE_WarBotHeadWorker"];

private _dlcHats = [];

["uniforms", _civUniforms + _pressUniforms + _workerUniforms + _dlcUniforms] call _fnc_saveToTemplate;

["headgear", _civHats + _dlcHats] call _fnc_saveToTemplate;

private _loadoutData = call _fnc_createLoadoutData;

_loadoutData set ["uniforms", _civUniforms + _dlcUniforms];
_loadoutData set ["pressUniforms", _pressUniforms];
_loadoutData set ["workerUniforms", _workerUniforms];
_loadoutData set ["pressVests", ["V_Press_F"]];
_loadoutData set ["helmets", _civHats + _dlcHats];
_loadoutData set ["workerHelmets", _workerHelmets];
_loadoutData set ["pressHelmets", ["H_PASGT_neckprot_blue_press_F"]];
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];

private _manTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _workerTemplate = {
    [["workerHelmets"] call _fnc_fallback] call _fnc_setHelmet;
    ["workerUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _pressTemplate = {
    ["pressHelmets"] call _fnc_setHelmet;
    ["pressVests"] call _fnc_setVest;
    ["pressUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _prefix = "militia";
private _unitTypes = [
    ["Press", _pressTemplate],
    ["Worker", _workerTemplate],
    ["Man", _manTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
