class CfgHeads {
    class Default_A3;
	class DefaultHead_A3: Default_A3{};
	class Hladas: DefaultHead_A3{};

	class GVAR(female_bun_01): Hladas {
		model = "\x\A3UE\addons\extras\faces\Models\female_head_bun.p3d";
		selectionHeadWound = "injury_head";
		selectionPersonality = "personality";
	};

    class GVAR(female_bun_02): Hladas {
		model = "\x\A3UE\addons\extras\faces\Models\female_head_bun_2.p3d";
		selectionHeadWound = "injury_head";
		selectionPersonality = "personality";
	};

    class GVAR(female_bun_03): Hladas {
		model = "\x\A3UE\addons\extras\faces\Models\female_head_bun_3.p3d";
		selectionHeadWound = "injury_head";
		selectionPersonality = "personality";
	};
};