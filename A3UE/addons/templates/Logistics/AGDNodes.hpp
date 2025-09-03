/*
passed output from the function: A3A_Logistics_fnc_generateHardPoints
*/

/*
    Function: A3A_Logistics_fnc_generateHardPoints
    Author: [Håkon]
    [Description]
        Generates a rough node array for you based on the visual start and end of the intended cargo plane,
        in addition visual guides are rendered on screen to give you an idea of where it is relative to you.
        visuals last for 60 seconds.

        These are:
            Green dot   : start position of cargo plane (only visible if you can see the position)
            Red dot     : end position of cargo plane (only visible if you can see the position)
            white line  : cargo plane bounds
            white dots  : Node return positions

    Arguments:
    0. <Object> Vehicle your generating the nodes for
    1. <Array>  Model relativ position of cargo plane start position
    2. <Int>    The lenght of the cargo plane
    3. <Bool>   Return preped for model based definition instead of class based

    Return Value:
    <text> generated node class to be pasted in to the config

    Scope: Clients
    Environment: unscheduled
    Public: [Yes]
    Dependencies:

    Example: [cursorTarget, [0,-0.7,-0.7], 2.1] call A3A_Logistics_fnc_generateHardPoints;
*/

/*
example output
*/
class 3AS_3AS_rtt_model_rTT_p3d : TRIPLES(ADDON,Nodes,Base)
{
		canLoadWeapon = 0;
        class Nodes
		{
        class Node1
        {
            offset[] = {0,1.6,1.45};
			seats[] = {0,1,5,6,14};
        };
        class Node2
        {
            offset[] = {0,0.8,1.45};
			seats[] = {2,7};
        };
        class Node3
        {
            offset[] = {0,0,1.45};
			seats[] = {3,4,8};
        };
        class Node4
        {
            offset[] = {0,-0.8,1.45};
			seats[] = {9};
        };
        class Node5
        {
            offset[] = {0,-1.6,1.45};
        };
        class Node6
        {
            offset[] = {0,-2.4,1.45};
        };
        class Node7
        {
            offset[] = {0,-3.2,1.45};
        };
        class Node8
        {
            offset[] = {0,-4,1.45};
        };
    };
};

class 3AS_3AS_rtt_model_RTT_APC_Wheeled_p3d : TRIPLES(ADDON,Nodes,Base)
{
		canLoadWeapon = 0;
        class Nodes
		{
        class Node1
        {
            offset[] = {0,1.6,1.45};
			seats[] = {0,1,5,6,14};
        };
        class Node2
        {
            offset[] = {0,0.8,1.45};
			seats[] = {2,7};
        };
        class Node3
        {
            offset[] = {0,0,1.45};
			seats[] = {3,4,8};
        };
        class Node4
        {
            offset[] = {0,-0.8,1.45};
			seats[] = {9};
        };
        class Node5
        {
            offset[] = {0,-1.6,1.45};
        };
        class Node6
        {
            offset[] = {0,-2.4,1.45};
        };
        class Node7
        {
            offset[] = {0,-3.2,1.45};
        };
        class Node8
        {
            offset[] = {0,-4,1.45};
        };
    };
};

class 3as_3as_laat_LAATi_model_tcw_laat_p3d : TRIPLES(ADDON,Nodes,Base)
{
		canLoadWeapon = 0;
        class Nodes
		{
        class Node1
        {
            offset[] = {0,2.1,0.5};
			seats[] = {17,22};
        };
        class Node2
        {
            offset[] = {0,1.3,0.5};
			seats[] = {16,21,27};
        };
        class Node3
        {
            offset[] = {0,0.5,0.5};
			seats[] = {15,20,26};
        };
        class Node4
        {
            offset[] = {0,-0.3,0.5};
			seats[] = {14,19,25};
        };
        class Node5
        {
            offset[] = {0,-1.1,0.5};
			seats[] = {13,18,24,28,29};
        };
    };
};