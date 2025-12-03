    class AGD_KND_Base: AGD_Base
    {
        requiredAddons[] = {"knd_vehicles_core"};
        logo = QPATHTOF(Templates_LLTE\LLTEicon_ca.paa);
        priority = 20;
    };

	class AGD_KND_Deathwatch: AGD_KND_Base
    {
        basepath = QPATHTOFOLDER(Templates_KND\Rival); 
        side = "Riv"; 
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_dw_co.paa); 
        name = "[KND] Deathwatch"; 
        file = "Deathwatch"; 
        maps[] = {}; 
        climate[] = {"arid", "temperate", "tropical","arctic"}; 
        description = "Led by Pre Visla, the Deathwatch are a splinter group of Mandalorians who seek to restore Mandalore to its former glory through any means necessary"; 
    };

    class AGD_KND_Mando_Invaders: AGD_KND_Base
    {
        basepath = QPATHTOFOLDER(Templates_KND\Invaders); 
        side = "Inv"; 
        flagTexture = QPATHTOF(Pictures\Markers\marker_mando_co.paa); 
        name = "[KND] Mandalorians"; 
        file = "Mandalorians"; 
        maps[] = {};
        climate[] = {"arid", "temperate", "tropical","arctic"}; 
        description = "The Mandalorians of Clan Saxon seek to restore Mandalore to its former glory, even if it means working with the Empire"; 
    };

    class AGD_KND_Mando_Rebels: AGD_KND_Base
    {
        basepath = QPATHTOFOLDER(Templates_KND\Rebel); 
        side = "Reb"; 
        flagTexture = QPATHTOF(Pictures\Markers\marker_mando_co.paa); 
        name = "[KND] House Kandosii"; 
        file = "KND"; 
        maps[] = {};
        climate[] = {"arid", "temperate", "tropical","arctic"}; 
        description = "A splinter group of Mandalorians who oppose the Deathwatch and seek to protect the innocent from their tyranny"; 
    };