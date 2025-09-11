    class AGD_SFA_Base: AGD_Base
    {
        requiredAddons[] = {"SFA_Core"};
        logo = QPATHTOF(Templates_SFA\SFAicon_ca.paa);
        priority = 50;
    };
	class AGD_OR: AGD_SFA_Base
    {
        basepath = QPATHTOFOLDER(Templates_SFA\OR); 
        side = "Occ"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_or_co.paa); 
        name = "Old Republic"; 
        file = "Base"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "The Old Republic, also known as the Galactic Republic, was the democratic union that governed the galaxy for over a thousand years before the rise of the Galactic Empire."; 
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
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_sith_co.paa); 
        name = "Sith Empire"; 
        file = "Base"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "The Sith Empire, also known as the Sith Order, is an ancient and malevolent organization that seeks to dominate the galaxy through the use of the dark side of the Force"; 
    };
    class AGD_Sith_S: AGD_Sith
    {
        file = "Snow"; 
        climate[] = {"arctic"}; 
        name = "Sith Empire (Snow)"; 
    };

    class AGD_Revan: AGD_SFA_Base
    {
        basepath = QPATHTOFOLDER(Templates_SFA\Revan); 
        side = "Reb"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_revan_co.paa); 
        name = "Revanites"; 
        file = "Revan"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "Followers of the legendary Jedi Knight turned Sith Lord, Revan, who seek to restore balance to the Force and challenge both the Sith and the Jedi"; 
    };

    class AGD_Crusaders: AGD_SFA_Base
    {
        basepath = QPATHTOFOLDER(Templates_SFA\Rivals); 
        side = "Riv"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_crusaders_co.paa); 
        name = "Mandalorian Neo-Crusaders"; 
        file = "Crusaders"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate", "tropical"}; 
        description = "A faction of Mandalorian warriors who have adopted a crusader-like ideology, seeking to reclaim Mandalorian honor and territory through militant means";
    };