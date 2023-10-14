//Compatible with ACE Advanced Medical

tooltip = "Serbia Modern Digital by Ferdilanz";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {"rhssaf_uniform_m10_digital", "rhssaf_uniform_m10_digital_summer"};
    vest[] = {};
    headgear[] = {};
    backpack[] = {};
    goggles[] = {"G_Combat_Goggles_tna_F", "rhsusf_oakley_goggles_blk", "rhsusf_shemagh_gogg_grn", "rhsusf_shemagh2_gogg_grn", "rhsusf_shemagh2_grn"};
    hmd[] =
    {
        // "UK3CB_ANPVS7"
    };
    // Leave empty to remove all. "Default" > leave original item.

    // All randomized
    primaryWeapon[] = {};
    scope[] = {};
    bipod[] = {};
    attachment[] = {};
    silencer[] = {};
    // Leave empty to remove all. "Default" for primaryWeapon > leave original weapon.

    // Only *Weapons[] arrays are randomized
    secondaryWeapon[] = {};
    secondaryAttachments[] = {};
    sidearmWeapon[] = {};
    sidearmAttachments[] = {};
    // Leave empty to remove all. "Default" for secondaryWeapon or sidearmWeapon > leave original weapon.

    // These are added to the uniform or vest
    magazines[] = {};
    items[] = {};
    // These are added directly into their respective slots
    linkedItems[] = {
        "ItemMap",
        "ItemCompass",
        "ItemWatch"
    };

    // These are put into the backpack
    backpackItems[] = {};

    // This is executed after unit init is complete. argument: _this = _unit.
    code = "";

    // These are acre item radios that will be added during the ACRE init. ACRE radios added via any other system will be erased.
    radios[] = {};

    insignias[] = {};
    faces[] = {};
};
class r : baseMan
{
    displayName = "Rifleman";
    backpack[] = {"rhssaf_kitbag_digital"};
    headgear[] = {
        "rhssaf_helmet_m97_digital",
        "rhssaf_helmet_m97_digital_black_ess",
        "rhssaf_helmet_m97_digital_black_ess_bare"
    };
    vest[] = {
        "UK3CB_TKA_B_V_GA_LITE_WDL"
    };
    primaryWeapon[] = {
        "rhs_weap_m21a_pr"
    };
    secondaryWeapon[] = {};
    bipod[] = {};
    scope[] = {"cup_optic_compm2_low", "rhsusf_acc_rx01", "cup_optic_ac11704_black", "sma_barska", "cup_optic_zddot"};
    silencer[] = {"rhsusf_acc_sfmb556"};
    attachment[] = {};
    sidearmWeapon[] = {};
    magazines[] = {
        LIST_7("rhsgref_30rnd_556x45_m21"),
        LIST_3("rhsgref_30rnd_556x45_m21_t"),
        LIST_2("rhssaf_mag_brd_m83_white"),
        LIST_2("rhssaf_mag_br_m84")
    };
    items[] = {
        LIST_10("ACE_fieldDressing"),
        LIST_2("ACE_morphine"),
        LIST_2("ACE_tourniquet"),
        "evlt_medical_advancedAid",
        "ACRE_PRC343"
    };
};
class rm : r
{
    displayName = "Rifleman (Extra Ammo)";
    magazines[] += {
        LIST_5("rhsgref_30rnd_556x45_m21")
    };
};
class rat : r
{
    displayName = "Rifleman AT";
    backpackItems[] +=
    {
        LIST_5("rhsgref_30rnd_556x45_m21")
    };
    secondaryWeapon[] = {"rhs_weap_m80"};
    
};
class g : r
{
    displayName = "Grenadier";
    primaryWeapon[] = {
        "rhs_weap_m21a_pr_pbg40"
    };
    backpackItems[] += {
      LIST_10("rhs_VOG25"),
      LIST_5("rhs_GRD40_White")};
};
class m : r
{
    displayName = "Medic";
    code = "_this setUnitTrait [""Medic"", true];";
    insignias[] = {"MedB"};
    backpack[] = {"rhssaf_kitbag_digital"};
    magazines[] += {};
    backpackItems[] += {
      LIST_20("ACE_fieldDressing"),
      LIST_20("ACE_fieldDressing"),
      LIST_10("ACE_fieldDressing"),
      LIST_15("evlt_medical_basicAid"),
      LIST_10("ACE_morphine"),
      LIST_10("ACE_epinephrine"),
      LIST_10("ACE_tourniquet")
    };
};
class ftl : g
{
    displayName = "Fireteam Leader";
    vest[] = {
        "UK3CB_TKA_B_V_GA_HEAVY_WDL"
    };
    magazines[] += {"rhssaf_mag_15Rnd_9x19_FMJ"};
    backpackItems[] +=
    {
        LIST_5("hlc_GRD_blue"),
        LIST_5("rhs_GRD40_Red")
    };
    linkedItems[] =
    {
        "ItemMap",
        "ItemCompass",
        "ItemWatch",
        "rhssaf_zrak_rd7j"
    };
    sidearmWeapon[] = {"rhs_weap_cz99_etched"};
    sidearmAttachments[] = {};
    
};
class sl : ftl
{
    displayName = "Squad Leader";
    items[] += {"ACRE_PRC152"};
};
class pl : sl
{
    displayName = "Platoon Commander";
    headgear[] = {"rhssaf_beret_green"};
    items[] += {"ACRE_PRC152"};
};
class ps : pl
{
    displayName = "Platoon Sergeant";
};
class pm : m
{
    displayName = "Platoon Medic";
    items[] += {"ACRE_PRC152"};
};
class ar : r
{
    displayName = "Automatic Rifleman";
    backpack[] = {
        "UK3CB_GAF_B_B_ENG_DIGI"
    };
    vest[] = {
        "UK3CB_TKA_B_V_GA_HEAVY_WDL"
    };
    primaryWeapon[] = {"rhs_weap_m249_pip_ris"};
    bipod[] = {"rhsusf_acc_grip4_bipod"};
    magazines[] =
    {
        LIST_2("rhssaf_mag_15Rnd_9x19_FMJ"),
        "rhsusf_200rnd_556x45_mixed_box",
        "rhssaf_mag_br_m84",
        "rhssaf_mag_brd_m83_white"
    };
    backpackItems[] =
    {
        LIST_5("rhsusf_200rnd_556x45_mixed_box")
    };
    sidearmWeapon[] = {"rhs_weap_cz99"};
    sidearmAttachments[] = {};
};
class aar : r
{
    displayName = "Asst. Automatic Rifleman";
    backpack[] = {
        "UK3CB_GAF_B_B_ENG_DIGI"
    };
    primaryWeapon[] = {"rhs_weap_m21s_pr"};
    backpackItems[] =
    {
        LIST_5("rhsusf_200rnd_556x45_mixed_box")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mark : r
{
    displayName = "Platoon Marksman";
    vest[] = {"UK3CB_TKA_B_V_GA_HEAVY_WDL"};
    primaryWeapon[] = {
        "rhs_weap_svdp"
    };
    scope[] = {"rhs_acc_pso1m2"};
    sidearmWeapon[] = {"rhs_weap_cz99_etched"};
    magazines[] = {
        LIST_10("rhs_10Rnd_762x54mmR_7N14"),
        LIST_5("rhssaf_mag_15Rnd_9x19_FMJ"),
        LIST_2("rhssaf_mag_brd_m83_white"),
        LIST_2("rhssaf_mag_br_m75")
    };
};
class mg : r
{
    displayName = "MMG Gunner";
    primaryWeapon[] = {"hlc_lmg_mg42kws_b"};
    attachment[] = {"everlight_x2000_point"};
    scope[] = {"sma_eotech552"};
    vest[] = {
        "UK3CB_TKA_B_V_GA_HEAVY_WDL"
    };
    bipod[] = {};
    magazines[] =
    {
        LIST_2("rhssaf_mag_15Rnd_9x19_FMJ"),
        "rhssaf_mag_brd_m83_white",
        "rhssaf_mag_br_m84",
        "hlc_200Rnd_792x57_M_MG42"
    };
    items[] += {"ACRE_PRC152"};
    sidearmWeapon[] = {"rhs_weap_cz99"};
    sidearmAttachments[] = {};
    backpackItems[] = {
        LIST_2("hlc_200Rnd_792x57_M_MG42")
    };
};
class mga : r
{
    displayName = "MMG Assistant";
    primaryWeapon[] = {"rhs_weap_m21s_pr"};
    backpackItems[] =
    {
        LIST_2("hlc_200Rnd_792x57_M_MG42")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mgam : r
{
    displayName = "MMG Ammo Man";
    primaryWeapon[] = {"rhs_weap_m21s_pr"};
    backpackItems[] =
    {
        LIST_2("hlc_200Rnd_792x57_M_MG42")
    };
};
class mat : r
{
    displayName = "MAT Gunner";
    primaryWeapon[] = {"rhs_weap_m21s_pr"};
    secondaryWeapon[] = {"rhs_weap_smaw_green"};
    secondaryAttachments[] = {};
    backpack[] = {
        "UK3CB_GAF_B_B_ENG_DIGI"
    };
    magazines[] += {"rhs_mag_smaw_HEAA"};
    items[] += {"ACRE_PRC152"};
    backpackItems[] = {"rhs_mag_smaw_HEAA"};
};
class mata : r
{
    displayName = "MAT Assistant";
    primaryWeapon[] = {"rhs_weap_m21s_pr"};
    backpack[] = {
        "UK3CB_GAF_B_B_ENG_DIGI"
    };
    backpackItems[] =
    {
        LIST_2("rhs_mag_smaw_HEAA")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class matam : r
{
    displayName = "MAT Ammo Man";
    primaryWeapon[] = {"rhs_weap_m21s_pr"};
    backpack[] = {
        "UK3CB_GAF_B_B_ENG_DIGI"
    };
    backpackItems[] =
    {
        LIST_2("rhs_mag_smaw_HEAA")
    };
};
class hat : r
{
    displayName = "HAT Gunner";
    backpack[] = {};
    primaryWeapon[] = {"rhs_weap_m21s_pr"};
    magazines[] = {
        LIST_4("rhsgref_30rnd_556x45_m21"),
        LIST_3("rhsgref_30rnd_556x45_m21_t"),
        "rhssaf_mag_brd_m83_white",
        "rhssaf_mag_br_m84"
    };
    secondaryWeapon[] = {"ace_compat_rhs_afrf3_kornet_carry"};
    items[] += {"ACRE_PRC152"};
};
class hata : r
{
    displayName = "HAT Assistant";
    backpack[] = {
        "UK3CB_GAF_B_B_ENG_DIGI"
    };
    backpackItems[] =
    {
        LIST_4("ace_compat_rhs_afrf3_mag_9m1331")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class hatam : r
{
    displayName = "HAT Ammo Man";
    backpack[] = {
        "UK3CB_GAF_B_B_ENG_DIGI"
    };
    backpackItems[] =
    {
        LIST_4("ace_compat_rhs_afrf3_mag_9m1331")
    };
};
class smg : r
{
    displayName = "SMG Base (Not for play)";
    vest[] = {
        "V_TacVest_oli"
    };
    primaryWeapon[] = {"rhs_weap_scorpion"};
    scope[] = {};
    attachment[] = {};
    bipod[] = {};
    backpackItems[] = {};
    sidearmWeapon[] = {"hgun_Pistol_Signal_F"};
    magazines[] =
    {
        LIST_8("rhsgref_20rnd_765x17_vz61"),
        "6Rnd_RedSignal_F",
        "rhssaf_mag_brd_m83_red",
        "ACE_HandFlare_Red",
        LIST_2("rhssaf_mag_brd_m83_white")
    };
    secondaryWeapon[] = {};
};
class vcrew : smg
{
    displayName = "Vehicle Crew";
    headgear[] = {
        "rhs_tsh4_bala", "rhs_tsh4_ess", "rhs_tsh4_ess_bala"
    };
    items[] += {
        "ACRE_PRC152"
    };
    backpackItems[] = {"ToolKit"};
    linkedItems[] += {"rhssaf_zrak_rd7j","ItemGPS"};
};
class vcrewco : smg
{
    displayName = "Vehicle Commander";
    headgear[] = {
        "rhs_tsh4_bala", "rhs_tsh4_ess", "rhs_tsh4_ess_bala"
    };
    items[] += {
        LIST_2("ACRE_PRC152")
    };
    backpackItems[] = {"ToolKit"};
    linkedItems[] += {"rhssaf_zrak_rd7j","ItemGPS"};
};
class hp : smg
{
    displayName = "Helicopter Pilot";
    uniform[] = {"rhssaf_uniform_heli_pilot"};
    headgear[] = {
        "rhsusf_hgu56p",
        "rhsusf_hgu56p_visor"
    };
    hmd[] = {"ACE_NVG_Wide_Black"};
    goggles[] = {"default"};
    items[] += {
        LIST_2("ACRE_PRC152")
    };
    backpackItems[] = {"ToolKit"};
    linkedItems[] += {"rhssaf_zrak_rd7j","ItemGPS"};
};
class hpst : smg
{
    displayName = "Heli Pilot Stranded";
    headgear[] = {
        "rhsusf_hgu56p",
        "rhsusf_hgu56p_visor"
    };
    hmd[] = {"ACE_NVG_Wide_Black"};
    goggles[] = {"default"};
    items[] = {
        LIST_10("ACE_fieldDressing"),
        LIST_2("ACE_morphine"),
        LIST_2("ACE_tourniquet"),
        "evlt_medical_advancedAid"
    };
    backpackItems[] = {"ToolKit"};
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class jp : baseMan
{
    displayName = "Fixed-Wing Pilot";
    uniform[] = {"rhssaf_uniform_mig29_pilot"};
    vest[] = {"V_Rangemaster_belt"};
    backpack[] = {"B_Parachute"};
    headgear[] = {"H_PilotHelmetFighter_I"};
    goggles[] = {"default"};
    sidearmWeapon[] = {"rhs_weap_cz99_etched"};
    magazines[] =
    {
        LIST_2("rhssaf_mag_15Rnd_9x19_FMJ")
    };
    items[] =
    {
        LIST_10("ACE_fieldDressing"),
        LIST_2("ACE_morphine"),
        LIST_2("ACE_tourniquet"),
        LIST_2("ACRE_PRC152"),
        "ACE_epinephrine",
        "ACE_microDAGR",
        "evlt_medical_advancedAid",
        "hgun_Pistol_Signal_F",
        "ACE_HandFlare_Red",
        "rhssaf_mag_brd_m83_red",
        "6Rnd_RedSignal_F"
    };
    linkedItems[] = {"ItemMap","ItemGPS","ItemCompass","ItemWatch","rhssaf_zrak_rd7j"};
};
