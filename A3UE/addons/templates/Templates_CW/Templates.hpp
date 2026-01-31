	class CIS : AGD_Base
    {
        basepath = QPATHTOFOLDER(Templates_CW\CIS); 
        side = "Inv"; 
        flagTexture = "\MRC\JLTS\Core_mod_droids\data\markers\flags\cis_ca.paa"; 
        name = "CIS"; 
        file = "CIS"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate","tropical","arctic"}; 
        description = "The Confederacy of Independent Systems was a galactic political faction that fought against the Galactic Republic during the Clone Wars"; 
    };

	class Republic : AGD_Base
	{
		basepath = QPATHTOFOLDER(Templates_CW\Rep); 
		side = "Occ"; 
		flagTexture = "\MRC\JLTS\Core_mod\data\markers\flags\rep_ca.paa"; 
		name = "Galactic Republic"; 
		file = "Rep"; 
		maps[] = {}; 
		climate[] = {"arid", "temperate","tropical"}; 
		description = "The Galactic Republic, or simply the Republic, was the democratic union that governed the galaxy for over a thousand years before the rise of the Galactic Empire"; 
	};

	class Republic_Arctic : Republic
	{
		basepath = QPATHTOFOLDER(Templates_CW\Rep); 
		side = "Occ"; 
		flagTexture = "\MRC\JLTS\Core_mod\data\markers\flags\rep_ca.paa"; 
		name = "Galactic Republic (Arctic)"; 
		file = "Rep_Arctic"; 
		maps[] = {}; 
		climate[] = {"arctic"}; 
		description = "The Galactic Republic, or simply the Republic, was the democratic union that governed the galaxy for over a thousand years before the rise of the Galactic Empire"; 
	};

    class AGD_WBK_Base: AGD_Base
    {
        requiredAddons[] = {"WBK_DroidsSw"};
        logo = QPATHTOF(Templates_LLTE\LLTEicon_ca.paa);
        priority = 20;
    };

	class CIS_WBK: AGD_WBK_Base
	{
		basepath = QPATHTOFOLDER(Templates_CW\CIS); 
		side = "Inv"; 
		flagTexture = "\MRC\JLTS\Core_mod_droids\data\markers\flags\cis_ca.paa"; 
		name = "CIS [WBK]"; 
		file = "CIS_WBK"; 
		maps[] = {}; 
		climate[] = {"arid", "temperate","tropical","arctic"}; 
		description = "The Confederacy of Independent Systems was a galactic political faction that fought against the Galactic Republic during the Clone Wars"; 
	};