private _hasApex = "expansion" in A3A_enabledDLC;


//////////////////////////////
//   Civilian Information   //
//////////////////////////////

//////////////////////////
//       Vehicles       //
//////////////////////////

["vehiclesCivCar", [
    "JMSLLTE_C_veh_g17_F", 1.0
    ,"JMSLLTE_C_veh_AA2_F", 1.0
	,"JMSLLTE_C_veh_x34_F", 1.0
	,"JMSLLTE_C_veh_v35c_F", 1.0]] call _fnc_saveToTemplate;

["vehiclesCivIndustrial", [
    "JMSLLTE_C_veh_AA5_F", 1.0
]] call _fnc_saveToTemplate;

["vehiclesCivBoat", [
    "C_Boat_Civil_01_rescue_F", 0.1            // motorboats
    ,"C_Boat_Civil_01_F", 1.0
    ,"C_Rubberboat", 1.0                    // rescue boat
    ,"C_Boat_Transport_02_F", 1.0            // RHIB
    ,"C_Scooter_Transport_01_F", 0.5]] call _fnc_saveToTemplate;

["vehiclesCivRepair", [
    "JMSLLTE_C_veh_AA5sup_F", 0.3]] call _fnc_saveToTemplate;

["vehiclesCivMedical", ["a3a_Van_02_black_medevac_F", 0.1]] call _fnc_saveToTemplate;

["vehiclesCivFuel", [
    "JMSLLTE_C_veh_AA5sup_F", 0.2]] call _fnc_saveToTemplate;


["vehiclesCivHeli", ["3AS_Aegis_Shuttle_Civ_Green"]] call _fnc_saveToTemplate;

/////////////////////////////////
///  Identities and currency  ///
////////////////////////////////

["currencySymbol", "Credits"] call _fnc_saveToTemplate;

["faces", [
    "TanoanHead_A3_02",
    "WhiteHead_02",
    "WhiteHead_18",
    "AsianHead_A3_05",
    "ls_chiss_male1_blue",
    "GreekHead_A3_01",
    "ls_chiss_male3_purple",
    "GreekHead_A3_04",
    "WhiteHead_07",
    "TanoanHead_A3_04",
    "WhiteHead_26",
    "LivonianHead_7",
    "TanoanHead_A3_05",
    "TanoanHead_A3_07",
    "ls_mirialan_male1_green",
    "ls_mirialan_male1_sand",
    "ls_mirialan_male1_yellow",
    "ls_mirialan_male2_green",
    "ls_mirialan_male2_sand",
    "ls_mirialan_male2_yellow",
    "ls_mirialan_male3_green",
    "ls_mirialan_male3_sand",
    "ls_mirialan_male3_yellow",
    "ls_zabrak_male2t1_base",
    "ls_zabrak_male2t2_pale",
    "ls_zelosian_male1",
    "ls_zelosian_male2",
    "ls_zeltron_male3_red",
    "ls_zeltron_male2_pink",
    "ls_zeltron_male1_red",
    "Head_AbedDark",
    "Head_AbedGrey",
    "Head_AbedPink",
    "Head_AbedYellow",
    "Head_AqualishBrown",
    "Head_AqualishGreen",
    "Head_AqualishLight",
    "Head_DurosBlue",
    "Head_DurosBlue2",
    "Head_DurosGreen",
    "Head_DurosGrey",
    "Head_QuarrenBrown",
    "Head_QuarrenPink",
    "Head_QuarrenRed",
    "Head_QuarrenYellow",
    "Head_RodianBlue",
    "Head_RodianGreen",
    "Head_RodianOlive",
    "Head_RodianRed",
    "Head_SullustanSkin"
    ]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _civUniforms = [
    "JMSLLTE_c_genshirt2_black_F_CombatUniform",
    "JMSLLTE_c_genshirt2_beige_F_CombatUniform",
    "JMSLLTE_c_genshirt_blue_F_CombatUniform",
    "JMSLLTE_c_genshirt_beige_F_CombatUniform",
    "JMSLLTE_ScumTroopHeavy_wood_F_CombatUniform",
    "JMSLLTE_PirShirtS2_white_F_CombatUniform",
    "JMSLLTE_ScumTroopHeavy_brown_F_CombatUniform"
];

private _pressUniforms = [
    "JMSLLTE_ScumNavy_white_F_CombatUniform"
    ];

private _workerUniforms = [
    "JMSLLTE_c_jumpsuit_blue_F_CombatUniform",
    "JMSLLTE_c_jumpsuit_green_F_CombatUniform",
    "JMSLLTE_c_jumpsuit_sand_F_CombatUniform"
    ];

private _dlcUniforms = [];

["uniforms", _civUniforms + _pressUniforms + _workerUniforms + _dlcUniforms] call _fnc_saveToTemplate;

private _civhats = [
];

["headgear", _civHats] call _fnc_saveToTemplate;

private _loadoutData = call _fnc_createLoadoutData;

_loadoutData set ["uniforms", _civUniforms];
_loadoutData set ["pressUniforms", _pressUniforms];
_loadoutData set ["workerUniforms", _workerUniforms];
_loadoutData set ["pressVests", ["V_Press_F"]];
_loadoutData set ["helmets", _civHats];
_loadoutData set ["pressHelmets", _civHats];

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
    ["helmets"] call _fnc_setHelmet;
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