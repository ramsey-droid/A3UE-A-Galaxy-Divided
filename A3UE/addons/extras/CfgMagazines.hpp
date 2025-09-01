class CfgMagazines {
	class IDA_Blaster_Cell_Power3_60Rnd_Red;
	class AGD_A130_Mag: IDA_Blaster_Cell_Power3_60Rnd_Red {
		author = "Ramsey";
		displayName = "A130 Blaster Repeater Magazine";
		count = 15;
	};
	class 1Rnd_GAT_missiles;
	class AGD_Rocket_Static_Mag: 1Rnd_GAT_missiles
	{
		displayName = "[SOB] 3x Shellcracker AT Missiles";
		count = 3;
		ammo = "AGD_Rocket_AT";
		displayNameShort = "AT Missile";
		descriptionShort = "Shellcracker AT Missile<br/>Designed for anti-vehicle engagements";
	};
	class Titan_AA;
	class AGD_Rocket_AA_Mag: Titan_AA
	{
		displayName = "[SOB] AA Rocket (Purple)";
		count = 3;
		ammo = "AGD_Rocket_AA";
		displayNameShort = "AA Rocket (Purple)";
		descriptionShort = "Anti-Air Rocket (Purple)<br/>Merr-Sonn Munitions<br/>Designed for anti-air engagements";
		mass = 20;
	};

	class AGD_Rocket_AA_Yellow_Mag: Titan_AA
	{
		displayName = "[SOB] AA Rocket (Yellow)";
		count = 3;
		ammo = "AGD_Rocket_AA_Yellow";
		displayNameShort = "AA Rocket (Yellow)";
		descriptionShort = "Anti-Air Rocket (Yellow)<br/>Merr-Sonn Munitions<br/>Designed for anti-air engagements";
		mass = 20;
	};

};
