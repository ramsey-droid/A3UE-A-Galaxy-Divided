	class CIS : AGD_Base
    {
        basepath = QPATHTOFOLDER(Templates_CW\CIS); 
        side = "Inv"; 
        flagTexture = "\MRC\JLTS\Core_mod_droids\data\markers\flags\cis_ca.paa"; 
        name = "CIS"; 
        file = "CIS"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate"}; 
        description = "The Confederacy of Independent Systems was a galactic political faction that fought against the Galactic Republic during the Clone Wars"; 
    };

	class Republic : AGD_Base
	{
		basepath = QPATHTOFOLDER(Templates_CW\Rep); 
		side = "Occ"; 
		flagTexture = "\MRC\JLTS\Core_mod_droids\data\markers\flags\republic_ca.paa"; 
		name = "Galactic Republic"; 
		file = "Rep"; 
		maps[] = {}; 
		climate[] = {"arid", "temperate"}; 
		description = "The Galactic Republic, or simply the Republic, was the democratic union that governed the galaxy for over a thousand years before the rise of the Galactic Empire"; 
	};