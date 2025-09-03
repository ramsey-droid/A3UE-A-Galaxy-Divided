/*
passed output from the function: A3A_Logistics_fnc_generateCargoOffset

Example of a function call
[
    _vehicle,                //the vehicle object that will load the cargo (needs to have nodes defined)
    _cargo,                //the object your defining as a valid cargo
    [
        _offset,            //cargos custom offset from the vehicle node, Array of 3 numbers
        _rotation,          //the cargo rotation, Array of 3 numbers
        _size,              //the size of the cargo (how many nodes it requires)
        _isWeapon,          //if the cargo is a weapon (static weapon like a turret)
        _recoil            //the recoil of the weapon (if it is one)
    ],
    _modelBased             //if the output should use the model or the class name
] call A3A_Logistics_fnc_generateCargoOffset;

example output bellow, you can modify it as you'd like by for example adding a blacklist as shown, rest can be modified in the arguments of the function when the data is generated.
*/

class 3AS_3AS_Static_HeavyRepeater_3AS_HeavyRepeaterShieldStatic_p3d : TRIPLES(ADDON,Cargo,Base)
{
    offset[] = {0, 0, 1.5};
    rotation[] = {0,-1,0}; //You can turn those ingame
    size = 2;
    recoil = 200;
	isWeapon = 1;
};
class 3AS_3AS_Static_HeavyRepeater_3AS_HeavyRepeaterStatic_p3d : TRIPLES(ADDON,Cargo,Base)
{
    offset[] = {0, 0, 1.5};
    rotation[] = {0,-1,0}; //You can turn those ingame
    size = 2;
    recoil = 200;
	isWeapon = 1;
};
//AA
//Flak 30/38 same Model
class 3AS_3AS_Static_ParticleCannon_3AS_ParticleCannon_p3d : TRIPLES(ADDON,Cargo,Base)
{
    offset[] = {0, -2, 1};
    rotation[] = {-1.5, -2, 0};
    size = 4;
    recoil = 2000;
	isWeapon = 1;
};
class CWDependencies_aaturret_turret : TRIPLES(ADDON,Cargo,Base)
{
    offset[] = {0, 0.1, 1.4};
    rotation[] = {0,1,0};
    size = 4;
    recoil = 1500;
	isWeapon = 1;
	blackList[] = {};
};
//Mortars
class ls_vehicles_ground_mortar_ls_ground_mortar_p3d : TRIPLES(ADDON,Cargo,Base)
{
    offset[] = {0, 0.5, 0.8};
    rotation[] = {0,-1,0};
    size = 2;
    recoil = 2000;
	isWeapon = 1;
};
class 3AS_3as_static_Mortar_model_republicmortar_p3d : TRIPLES(ADDON,Cargo,Base)
{
    offset[] = {0.2, 0.2, 0.7};
    rotation[] = {0,-1,0};
    size = 2;
    recoil = 2000;
	isWeapon = 1;
};