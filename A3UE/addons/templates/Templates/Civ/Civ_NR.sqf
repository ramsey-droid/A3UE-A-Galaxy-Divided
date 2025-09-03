private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;

//////////////////////////
//       Vehicles       //
//////////////////////////    

["vehiclesCivCar", ["B_MRAP_01_F","a3a_MRAP_03_grey_F","C_Offroad_01_F"]] call _fnc_saveToTemplate;             //this line determines civilian cars -- Example: ["vehiclesCivCar", ["C_Offroad_01_F"]] -- Array, can contain multiple assets

["vehiclesCivIndustrial", ["B_Truck_01_mover_F","B_Truck_01_transport_F"]] call _fnc_saveToTemplate;             //this line determines civilian trucks -- Example: ["vehiclesCivIndustrial", ["C_Truck_02_transport_F"]] -- Array, can contain multiple assets

["vehiclesCivHeli", ["3AS_Aegis_Shuttle_Civ_Green"]] call _fnc_saveToTemplate;             //this line determines civilian helis -- Example: ["vehiclesCivHeli", ["C_Heli_Light_01_civil_F"]] -- Array, can contain multiple assets

["vehiclesCivBoat", ["C_Boat_Civil_01_F"]] call _fnc_saveToTemplate;             //this line determines civilian boats -- Example: ["vehiclesCivBoat", ["C_Boat_Civil_01_F"]] -- Array, can contain multiple assets

["vehiclesCivRepair", ["C_Truck_02_box_F"]] call _fnc_saveToTemplate;            //this line determines civilian repair vehicles

["vehiclesCivMedical", ["a3a_Van_02_black_medevac_F"]] call _fnc_saveToTemplate;        //this line determines civilian medic vehicles

["vehiclesCivFuel", ["C_Truck_02_fuel_F"]] call _fnc_saveToTemplate;            //this line determines civilian fuel vehicles


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
    "ls_zeltron_male1_red"
    ]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _civUniforms = [
    "AGD_Spacer_Uniform1",
    "AGD_Spacer_Uniform1_Alt",
    "AGD_Spacer_Uniform2",
    "AGD_Spacer_Uniform2_Alt",
    "AGD_Spacer_Uniform3",
    "AGD_Spacer_Uniform3_Alt",
    "AGD_Spacer_Uniform4",
    "AGD_Spacer_Uniform4_Alt",
    "AGD_Spacer_Uniform5",
    "AGD_Spacer_Uniform5_Alt",
    "AGD_Spacer_Uniform6",
    "AGD_Spacer_Uniform6_Alt",
    "AGD_Spacer_Uniform7",
    "AGD_Spacer_Uniform7_Alt",
    "AGD_Spacer_Uniform8",
    "AGD_Spacer_Uniform8_Alt",
    "AGD_Worker_Uniform6",
    "AGD_Worker_Uniform7",
    "AGD_Worker_Uniform8",
    "AGD_Worker_Uniform9",
    "ls_uniform_pathfinder",
    "WM_ParaMilitary_Tee",
    "WM_ParaMilitary_Dst_Shirt",
    "3AS_U_Imperial_Army_Recruit_F",
    "WM_ArmyUniform",
    "ls_mandalorianUniform"
];          //Uniforms given to Normal Civs

private _pressUniforms = ["ls_orsfUniform_trooper"];            //Uniforms given to Press/Journalists

private _workerUniforms = [
    "AGD_Worker_Uniform1",
    "AGD_Worker_Uniform2",
    "AGD_Worker_Uniform3",
    "AGD_Worker_Uniform4",
    "AGD_Worker_Uniform5",
    "AGD_Worker_Uniform6",
    "AGD_Worker_Uniform7",
    "AGD_Worker_Uniform8",
    "AGD_Worker_Uniform9"
];           //Uniforms given to Workers at Factories/Resources

private _dlcUniforms = [];          //Uniforms given if DLCs are enabled, only given to the Arsenal not Civilians

if (_hasApex) then {_dlcUniforms append [];
};

if (_hasLawsOfWar) then {_dlcUniforms append [];
};

["uniforms", _civUniforms + _pressUniforms + _workerUniforms + _dlcUniforms] call _fnc_saveToTemplate;          //Uniforms given to the Arsenal, Allowed for Undercover and given to Rebel Ai that go Undercover

private _civhats = ["H_MilCap_blue","H_MilCap_gry","H_Cap_tan","ls_helmet_jockey_navy_alt","ls_imperialHelmet_kepi","ls_helmet_gunslinger","H_ShemagOpen_khk"];

["headgear", _civhats] call _fnc_saveToTemplate;            //Headgear given to Normal Civs, Workers, Undercover Rebels.

private _loadoutData = call _fnc_createLoadoutData;

_loadoutData set ["uniforms", _civUniforms];
_loadoutData set ["pressUniforms", _pressUniforms];
_loadoutData set ["workerUniforms", _workerUniforms];
_loadoutData set ["pressVests", ["ls_vest_flakJacket_open"]];
_loadoutData set ["helmets", _civHats];
_loadoutData set ["pressHelmets", ["ls_orsfHelmet_trooper"]];

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