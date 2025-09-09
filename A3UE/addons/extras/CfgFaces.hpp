class CfgFaces {
    class Man_A3 {
        class Default;
        class GVAR(female_bun_01): Default {
			author = "Iceman";
			displayname = "Carter";
			head = QGVAR(female_bun_01);
			texture = QPATHTOF(faces\female_head_ICEMAN\female_01\xxx_co.paa);
			material = QPATHTOF(faces\female_head_ICEMAN\female_01\f_white.rvmat);
			materialWounded1 = QPATHTOF(faces\female_head_ICEMAN\female_01\f_white.rvmat);
			materialWounded2 = QPATHTOF(faces\female_head_ICEMAN\female_01\f_white.rvmat);
			textureHL = QPATHTOF(faces\female_head_ICEMAN\female_01\F_HL_co.paa);
			materialHL = QPATHTOF(faces\female_head_ICEMAN\female_01\F_HL_white.rvmat);
			textureHL2 = QPATHTOF(faces\female_head_ICEMAN\female_01\F_HL_co.paa);
			materialHL2 = QPATHTOF(faces\female_head_ICEMAN\female_01\F_HL_white.rvmat);
		};

		class GVAR(female_bun_02): GVAR(female_bun_01) {
			displayname = "Carter (Tactical)";
			head = QGVAR(female_bun_01);
			texture = QPATHTOF(faces\female_head_ICEMAN\female_02\xxx_co.paa);
		};

		class GVAR(female_bun_03): GVAR(female_bun_01) {
			displayname = "Medrano";
			head = QGVAR(female_bun_02);
			texture = QPATHTOF(faces\female_head_ICEMAN\female_03\xxx_co.paa);
		};

		class GVAR(female_bun_04): GVAR(female_bun_01) {
			displayname = "Medrano (Tactical)";
			head = QGVAR(female_bun_03);
			texture = QPATHTOF(faces\female_head_ICEMAN\female_04\xxx_co.paa);
		};
    };
};
