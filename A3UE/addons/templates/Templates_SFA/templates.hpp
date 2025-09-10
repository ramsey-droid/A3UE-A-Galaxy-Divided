    class AGD_SFA_Base: AGD_Base
    {
        requiredAddons[] = {"SFA_Core"};
        logo = "\x\A3UE\addons\templates\Pictures\Markers\marker_galactic_empire_co.paa";
        priority = 50;
    };
	class AGD_OR: AGD_SFA_Base
    {
        basepath = QPATHTOFOLDER(Templates_SFA\OR); 
        side = "Occ"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_galactic_empire_co.paa); 
        name = "Old Republic"; 
        file = "Base"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "Expands on the Galactic Empire faction, adding more vehicles, uniforms and weapons to their arsenal"; 
    };
    class AGD_OR_S: AGD_OR
    {
        file = "Snow"; 
        climate[] = {"arctic"}; 
        name = "Old Republic (Snow)"; 
    };
    class AGD_OR_J: AGD_OR
    {
        file = "Jungle"; 
        climate[] = {"tropical"}; 
        name = "Old Republic (Jungle)"; 
    };
	class AGD_Sith: AGD_SFA_Base
    {
        basepath = QPATHTOFOLDER(Templates_SFA\Sith); 
        side = "Inv"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_galactic_empire_co.paa); 
        name = "Sith Empire"; 
        file = "Base"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "Expands on the Galactic Empire faction, adding more vehicles, uniforms and weapons to their arsenal"; 
    };
    class AGD_Sith_S: AGD_Sith
    {
        file = "Snow"; 
        climate[] = {"arctic"}; 
        name = "Sith Empire (Snow)"; 
    };