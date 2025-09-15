class AGD_unlimited_base : forbidden_unlimited_base 
{
    addons[] = {"3AS","JLTS_core","ls_loadorder","IDA_Republic"};
};

class AGD_limited_base : forbidden_limited_base 
{
    addons[] = {"3AS","JLTS_core","ls_loadorder","IDA_Republic"};
};

 // Will not appear in crates, but can be unlimited in the arsenal

 // Will not appear in crates, and can't be unlimited in the arsenal

// Can be weapon, magazine, vest, etc. Basically anything that can either go in the arsenal or a crate

    class ls_droidHelmet_b1_geonosis : AGD_limited_base {appearInCrates = 1;};
    class ls_droidHelmet_b1 : ls_droidHelmet_b1_geonosis {};
    class ls_droidHelmet_b1_geonosisOfficer : ls_droidHelmet_b1_geonosis {};
    class ls_droidHelmet_b1_saboteur : ls_droidHelmet_b1_geonosis {};
    class ls_droidHelmet_b1_training : ls_droidHelmet_b1_geonosis {};
    class ls_droidHelmet_b1_crew : ls_droidHelmet_b1_geonosis {};

    class ls_droidUniform_b1_crew : AGD_limited_base {};
    class ls_droidUniform_b1 : AGD_limited_base {};
    class ls_droidUniform_bx : AGD_limited_base {};
    class ls_droidUniform_b1_pilot : AGD_limited_base {};
    class 3AS_U_CIS_TS : AGD_limited_base {};

    // Completely blacklist sim stuff, it looks dumb
    class ls_droidHelmet_b1_simulation : AGD_limited_base {};
    class ls_droidHelmet_b1_hologram : AGD_limited_base {};
    class ls_gar_atrtDriverHologram_helmet : AGD_limited_base {};
    class ls_gar_barcHologram_helmet : AGD_limited_base {};
    class ls_sob_commando_hologram_helmet : AGD_limited_base {};
    class ls_gar_desertHologram_helmet : AGD_limited_base {};
    class ls_sob_fordoHologram_helmet : AGD_limited_base {};
    class ls_gar_phase1ArfHologram_helmet : AGD_limited_base {};
    class ls_gar_phase2ArfHologram_helmet : AGD_limited_base {};
    class ls_gar_phase1_hologram_helmet : AGD_limited_base {};
    class ls_gar_arcHologram_helmet : AGD_limited_base {};
    class ls_csfHelmet_senateCommando_hologram : AGD_limited_base {};
    class ls_gar_phase2Hologram_helmet : AGD_limited_base {};
    class ls_droidUniform_b1_hologram : AGD_limited_base {};
    class ls_droidUniform_b2_hologram : AGD_limited_base {};
    class ls_droidUniform_bx_hologram : AGD_limited_base {};
    class ls_sob_commando_hologram_uniform : AGD_limited_base {};
    class ls_gar_phase2Hologram_uniform : AGD_limited_base {};
    class ls_csfUniform_senateCommando_hologram: AGD_limited_base {};
    class ls_gar_arcHologram_vest : AGD_limited_base {};
    class ls_droidBackpack_b1_hologram : AGD_limited_base {};
    class ls_droidBackpack_b1_antenna_hologram : AGD_limited_base {};

    class JLTS_credits_10 : AGD_limited_base {appearInCrates = 1;};
    class JLTS_credits_50 : JLTS_credits_10 {};
    class JLTS_credits_100 : JLTS_credits_10 {};
    class JLTS_credits_500 : JLTS_credits_10 {};
    class JLTS_credits_1000 : JLTS_credits_10 {};
    class JLTS_credits_5000 : JLTS_credits_10 {};
    class JLTS_flan_10 : JLTS_credits_10 {};
    class JLTS_flan_50 : JLTS_credits_10 {};
    class JLTS_flan_100 : JLTS_credits_10 {};
    class JLTS_flan_500 : JLTS_credits_10 {};
    class JLTS_flan_1000 : JLTS_credits_10 {};
    class JLTS_flan_5000 : JLTS_credits_10 {};
    class JLTS_credit_card : JLTS_credits_10 {};

    class JLTS_drugs_deathstick : AGD_limited_base {};
    class JLTS_drugs_electrolit : AGD_limited_base {};
    class JLTS_drugs_protein : AGD_limited_base {};
    class JLTS_drugs_bacta : AGD_limited_base {};
    class JLTS_drugs_bacta_red : AGD_limited_base {};
    class JLTS_drugs_kolto : AGD_limited_base {};
    class JLTS_drugs_medikit : AGD_limited_base {};
    class JLTS_drugs_stimulant_adrenal : AGD_limited_base {};
    class JLTS_drugs_stimulant_battle : AGD_limited_base {};
    class JLTS_drugs_stimulant_echaniBattle : AGD_limited_base {};
    class JLTS_drugs_stimulant_hyperAdrenal : AGD_limited_base {};
    class JLTS_drugs_stimulant_hyperBattle : AGD_limited_base {};

    class JLTS_ids_rep_civ : AGD_limited_base {};
    class JLTS_ids_license_driver_small : AGD_limited_base {};
    class JLTS_ids_license_driver_medium : AGD_limited_base {};
    class JLTS_ids_license_driver_large : AGD_limited_base {};
    class JLTS_ids_police : AGD_limited_base {};
    class JLTS_ids_license_weapon_secondary : AGD_limited_base {};
    class JLTS_ids_license_weapon_primary : AGD_limited_base {};
    class JLTS_ids_gar_army : AGD_limited_base {};
    class JLTS_ids_gar_medical : AGD_limited_base {};
    class JLTS_ids_gar_navy : AGD_limited_base {};
    class JLTS_intel_bountypuck : AGD_limited_base {};
    class JLTS_intel_briefcase : AGD_limited_base {};
    class JLTS_intel_datapad_civ : AGD_limited_base {};
    class JLTS_intel_datacard : AGD_limited_base {};
    class JLTS_intel_holocron_jedi : AGD_limited_base {};
    class JLTS_intel_lightsaber_01 : AGD_limited_base {};
    class JLTS_intel_holoProjector : AGD_limited_base {};
    class JLTS_intel_holocron_sith : AGD_limited_base {};
    class JLTS_intel_trackingFob : AGD_limited_base {};
    class JLTS_icecream : AGD_limited_base {};
    class JLTS_pazaak_deck : AGD_limited_base {};
    class JLTS_sabacc_deck : AGD_limited_base {};
    class JLTS_scanner_bounty : AGD_limited_base {};
    class JLTS_scanner_police : AGD_limited_base {};
    class JLTS_riot_shield_droid_item : AGD_limited_base {};
    class JLTS_droidCaller : AGD_limited_base {};
    class JLTS_riot_shield_item : AGD_limited_base {};
    class JLTS_riot_shield_101_item : AGD_limited_base {};
    class JLTS_riot_shield_212_item : AGD_limited_base {};
    class JLTS_riot_shield_501_item : AGD_limited_base {};
    class JLTS_riot_shield_CG_item : AGD_limited_base {};
    class JLTS_riot_shield_GD_item : AGD_limited_base {};
    class JLTS_MSE6_toolkit : AGD_limited_base {};
    class JLTS_MSE6_manual : AGD_limited_base {};

    class JLTS_repairkit_weapon_mini : AGD_unlimited_base {};
    class JLTS_repairkit_weapon : AGD_unlimited_base {};

    class ls_meme_favoritesOfForce: AGD_limited_base {};
    class ls_holoprojector_bountyPuck : AGD_limited_base {};
    class ls_meme_graciousGovernmentMix : AGD_limited_base {};

    class Pipe_aluminium : AGD_unlimited_base {};
    class WBK_axe : AGD_unlimited_base {};
    class Bat_Clear : AGD_unlimited_base {};
    class Bat_Spike : AGD_unlimited_base {};
    class WBK_BrassKnuckles : AGD_unlimited_base {};
    class WBK_brush_axe : AGD_unlimited_base {};
    class WBK_craftedAxe : AGD_unlimited_base {};
    class Crowbar : AGD_unlimited_base {};
    class CrudeAxe : AGD_unlimited_base {};
    class FireAxe : AGD_unlimited_base {};
    class WBK_survival_weapon_2 : AGD_unlimited_base {};
    class WBK_survival_weapon_1 : AGD_unlimited_base {};
    class IceAxe : AGD_unlimited_base {};
    class WBK_Katana : AGD_unlimited_base {};
    class Weap_melee_knife : AGD_unlimited_base {};
    class Knife_kukri : AGD_unlimited_base {};
    class Knife_m3 : AGD_unlimited_base {};
    class WBK_pipeStyledSword : AGD_unlimited_base {};
    class Police_Bat : AGD_unlimited_base {};
    class Rod : AGD_unlimited_base {};
    class Sashka_Russian : AGD_unlimited_base {};
    class Shovel_Russian : AGD_unlimited_base {};
    class Shovel_Russian_Rotated : AGD_unlimited_base {};
    class Axe : AGD_unlimited_base {};
    class WBK_SmallHammer : AGD_unlimited_base {};
    class WBK_ww1_Club : AGD_unlimited_base {};
    class UNSC_Knife : AGD_unlimited_base {};
    class UNSC_Knife_reversed : AGD_unlimited_base {};
    class WBK_survival_weapon_4 : AGD_unlimited_base {};
    class WBK_survival_weapon_4_r : AGD_unlimited_base {};
    class WBK_survival_weapon_3 : AGD_unlimited_base {};
    class WBK_survival_weapon_3_r : AGD_unlimited_base {};
    class WBK_Dutch_Vibro : AGD_unlimited_base {};
    class WBK_SciFi_Sword_4 : AGD_unlimited_base {};
    class WBK_SciFi_Sword_3 : AGD_unlimited_base {};
    class WBK_TrainingSword : AGD_unlimited_base {};
    class WBK_SciFi_Sword_1 : AGD_unlimited_base {};
    class DpSword : AGD_unlimited_base {};
    class WBK_SciFi_Sword_2 : AGD_unlimited_base {};
    class WBK_SciFi_Sword_6 : AGD_unlimited_base {};
    class WBK_SciFi_Sword_5 : AGD_unlimited_base {};

    class WBK_lightsaberOldRep_kyloStyle : AGD_limited_base {};
    class WBK_lightsaberOldRep_jedi : AGD_limited_base {};
    class WBK_lightsaber_yellow : AGD_limited_base {};
    class WBK_lightsaber_white : AGD_limited_base {};
    class WBK_lightsaber_sith : AGD_limited_base {};
    class WBK_lightsaber_purple : AGD_limited_base {};
    class WBK_lightsaber_pink : AGD_limited_base {};
    class WBK_lightsaber_green : AGD_limited_base {};
    class WBK_lightsaber_jedi : AGD_limited_base {};
    class WBK_lightsaber1_yellow : AGD_limited_base {};
    class WBK_lightsaber1_white : AGD_limited_base {};
    class WBK_lightsaber1_sith : AGD_limited_base {};
    class WBK_lightsaber1_purple : AGD_limited_base {};
    class WBK_lightsaber1_pink : AGD_limited_base {};
    class WBK_lightsaber1_green : AGD_limited_base {};
    class WBK_lightsaber1_jedi : AGD_limited_base {};
    class WBK_lightsaber2_yellow : AGD_limited_base {};
    class WBK_lightsaber2_white : AGD_limited_base {};
    class WBK_lightsaber2_sith : AGD_limited_base {};
    class WBK_lightsaber2_purple : AGD_limited_base {};
    class WBK_lightsaber2_pink : AGD_limited_base {};
    class WBK_lightsaber2_green : AGD_limited_base {};
    class WBK_lightsaber2_jedi : AGD_limited_base {};
    class WBK_lightsaber3_yellow : AGD_limited_base {};
    class WBK_lightsaber3_white : AGD_limited_base {};
    class WBK_lightsaber3_sith : AGD_limited_base {};
    class WBK_lightsaber3_purple : AGD_limited_base {};
    class WBK_lightsaber3_pink : AGD_limited_base {};
    class WBK_lightsaber3_green : AGD_limited_base {};
    class WBK_lightsaber3_jedi : AGD_limited_base {};
    class WBK_lightsaber4_yellow : AGD_limited_base {};
    class WBK_lightsaber4_white : AGD_limited_base {};
    class WBK_lightsaber4_sith : AGD_limited_base {};
    class WBK_lightsaber4_purple : AGD_limited_base {};
    class WBK_lightsaber4_pink : AGD_limited_base {};
    class WBK_lightsaber4_green : AGD_limited_base {};
    class WBK_lightsaber4_jedi : AGD_limited_base {};
    class WBK_lightsaber_jedi_TwoSided : AGD_limited_base {};
    class WBK_lightsaber_sith_TwoSided : AGD_limited_base {};

    class IDA_Toolgun : AGD_limited_base {};
    class IDA_LegoGun : AGD_limited_base {};
    class JLTS_Glocko : AGD_limited_base {};
    class JLTS_Glocko_mag : AGD_limited_base {};
    class ls_weapon_electrostaff : AGD_limited_base {};
    class ls_weapon_electrostaff_black : AGD_limited_base {};
    class ls_meme_goose : AGD_limited_base {};
    class ls_weapon_verpinePowerLance : AGD_limited_base {};
    class IDA_Lasgun : AGD_limited_base {};
    class 3AS_P3_Pilot_Helmet_P : AGD_limited_base {};
    class 3AS_P3_Pilot_Helmet_501st : AGD_limited_base {};
    class ls_launcher_mortar_carry_cis : AGD_limited_base {};
    class ls_launcher_mrbc_carry : AGD_limited_base {};
    class ls_launcher_mortar_carry_gar : AGD_limited_base {};
    class ls_launcher_mortar_carry_mercenary : AGD_limited_base {};

    class ls_weapon_e11: AGD_limited_base {};
    class 3AS_E11: AGD_limited_base {};
    class 3AS_E11Stock: AGD_limited_base {};
    class 3AS_E11_GL: AGD_limited_base {};
    class WM_E11: AGD_limited_base {};
    class WM_E11D: AGD_limited_base {};

    class IDA_DC15A: AGD_limited_base {};
    class IDA_DC15LE: AGD_limited_base {};
    class IDA_DC15S: AGD_limited_base {};
    class IDA_DC15S_Evil: AGD_limited_base {};
    class IDA_DC15S_UGL: AGD_limited_base {};
    class IDA_DC15S_UGL_Evil: AGD_limited_base {};
    class IDA_DC15X: AGD_limited_base {};

    class ls_weapon_dc15a: AGD_limited_base {};
    class ls_weapon_dc15a_wooden: AGD_limited_base {};
    class ls_weapon_dc15br_wooden: AGD_limited_base {};
    class ls_weapon_dc15br: AGD_limited_base {};
    class ls_weapon_dc15s: AGD_limited_base {};
    class ls_weapon_dc17m: AGD_limited_base {};
    class ls_weapon_e5: AGD_limited_base {};
    class ls_weapon_e5c: AGD_limited_base {};
    class ls_weapon_westarM5: AGD_limited_base {};
    class ls_weapon_westarM5_ugl: AGD_limited_base {};
    class ls_weapon_z6: AGD_limited_base {};

    class 3AS_DWBlaster_F: AGD_limited_base {};

    class 3AS_E5_F: AGD_limited_base {};
    class E5C_F: AGD_limited_base {};
    class 3AS_E5S_F: AGD_limited_base {};