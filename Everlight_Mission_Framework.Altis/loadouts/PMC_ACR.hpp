//Compatible with ACE Advanced Medical

tooltip = "PMC ACR by Cypher";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {

      "CUP_I_B_PMC_Unit_14",
      "CUP_I_B_PMC_Unit_16",
      "CUP_I_B_PMC_Unit_11",
      "CUP_I_B_PMC_Unit_6",
      "CUP_I_B_PMC_Unit_5",
      "CUP_I_B_PMC_Unit_10",
      "CUP_I_B_PMC_Unit_9",
      "CUP_I_B_PMC_Unit_42",
      "CUP_I_B_PMC_Unit_41",
      "CUP_I_B_PMC_Unit_43",
      "CUP_I_B_PMC_Unit_39",
      "CUP_I_B_PMC_Unit_36",
      "CUP_I_B_PMC_Unit_38"

    };
    vest[] = {};
    headgear[] = {};
    backpack[] = {};
    goggles[] = {

      "dvk_shemag_tan_altcsat",
      "rhsusf_shemagh2_grn",
      "rhsusf_shemagh2_od",
      "rhsusf_shemagh2_tan",
      "rhsusf_shemagh2_gogg_grn",
      "rhsusf_shemagh2_gogg_od",
      "rhsusf_shemagh2_gogg_tan",
      "G_Bandanna_aviator",
      "G_Bandanna_blk",
      "G_Bandanna_khk",
      "G_Bandanna_oli",
      "G_Bandanna_tan",
      "dvk_tacg_shem_altcsat",
      "dvk_tacg_altcsat",
      "rhsusf_oakley_goggles_blk",
      "rhsusf_oakley_goggles_clr",
      "G_Aviator",
      "G_Bandanna_beast"
    };
    hmd[] =
    {
        // "rhsusf_ANPVS_15"
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
    backpack[] = {"B_Kitbag_sgg"};
    headgear[] = {
        "H_Cap_blk",
        "H_Watchcap_camo",
        "H_Watchcap_khk",
        "H_Cap_oli_hs",
        "rhsusf_bowman_cap",
        "H_Bandanna_gry",
        "H_Bandanna_blu",
        "H_Bandanna_cbr",
        "H_Bandanna_khk_hs",
        "rhssaf_bandana_smb",
        "H_Cap_blk",
        "CUP_H_PMC_Cap_Back_EP_Grey",
        "CUP_H_PMC_Cap_Back_PRR_Grey",
        "CUP_H_PMC_Cap_EP_Grey",
        "CUP_H_PMC_Cap_PRR_Grey",
        "CUP_H_PMC_Cap_Back_EP_Tan",
        "CUP_H_PMC_Cap_Back_PRR_Tan",
        "CUP_H_PMC_Cap_EP_Tan",
        "CUP_H_PMC_Cap_PRR_Tan"
    };
    hmd[] = {};
    vest[] = {
        "MNP_Vest_Olive_1",
        "MNP_Vest_Olive_2"
    };
    primaryWeapon[] = {
        "hlc_rifle_ACR_carb_black",
    };
    secondaryWeapon[] = {};
    bipod[] = {};
    scope[] = {"sma_eotech552", "sma_eotech", "rhsusf_acc_compm4" };
    silencer[] = {};
    attachment[] = {
        "everlight_x2000_point"
    };
    sidearmWeapon[] = {};
    magazines[] = {
        LIST_7("rhs_mag_30Rnd_556x45_M855A1_PMAG"),
        LIST_3("rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red"),
        LIST_2("rhs_mag_m67"),
        LIST_2("SmokeShell")
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
        LIST_5("rhs_mag_30Rnd_556x45_M855A1_PMAG")
    };
};
class rat : r
{
    displayName = "Rifleman AT";
    backpackItems[] =
    {
        LIST_5("rhs_mag_30Rnd_556x45_M855A1_PMAG")
    };
    secondaryWeapon[] = {"rhs_weap_M136"};
    secondaryAttachments[] = {"rhs_acc_at4_handler"};
};
class mark : r
{
    displayName = "Platoon Marksman";
    primaryWeapon[] = {
        "rhs_weap_m14ebrri"
    };
    scope[] = {"cup_optic_sb_11_4x20_pm"};
    sidearmWeapon[] = {"hlc_pistol_P226R_357Combat"};
    sidearmAttachments[] = {"hlc_optic_siglite"};
    magazines[] = {
        LIST_10("rhsusf_20Rnd_762x51_m62_Mag"),
        LIST_5("hlc_12Rnd_357SIG_B_P226"),
        LIST_2("rhs_mag_m67"),
        LIST_2("SmokeShell")
    };
};
class g : r
{
    displayName = "Grenadier";
    primaryWeapon[] = {
        "hlc_rifle_ACR_GL_Carb_black"
    };
    bipod[] = {};
    backpackItems[] = {
      LIST_10("rhs_mag_M433_HEDP"),
      LIST_5("1Rnd_Smoke_Grenade_shell")};
    secondaryWeapon[] = {};
};
class m : r
{
    displayName = "Medic";
    code = "_this setUnitTrait [""Medic"", true];";
    insignias[] = {"MedB"};
    magazines[] = {
        LIST_7("rhs_mag_30Rnd_556x45_M855A1_PMAG"),
        LIST_3("rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red"),
        LIST_2("SmokeShell")
    };
    backpackItems[] = {
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
    magazines[] += {"hlc_12Rnd_357SIG_B_P226"};
    backpackItems[] +=
    {
        LIST_5("1Rnd_SmokeBlue_Grenade_shell"),
        LIST_5("1Rnd_SmokeRed_Grenade_shell")
    };
    items[] += {"ACRE_PRC343"};
    linkedItems[] =
    {
        "ItemMap",
        "ItemCompass",
        "ItemWatch",
        "rhssaf_zrak_rd7j",
    };
    sidearmWeapon[] = {"hlc_pistol_P226R_357Combat"};
    sidearmAttachments[] = {"hlc_optic_siglite"};
};
class sl : ftl
{
    displayName = "Squad Leader";
    items[] += {"ACRE_PRC152"};
};
class pl : sl
{
    displayName = "Platoon Commander";
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
    primaryWeapon[] = {"LMG_Mk200_black_F"};
    bipod[] = {"rhs_acc_harris_swivel"};
    magazines[] =
    {
        LIST_3("200Rnd_65x39_cased_Box_Tracer_Red"),
        LIST_2("hlc_12Rnd_357SIG_B_P226"),
        LIST_2("rhs_mag_m67"),
        LIST_2("SmokeShell")
    };
    backpackItems[] =
    {
        LIST_2("200Rnd_65x39_cased_Box_Tracer_Red")
    };
    sidearmWeapon[] = {"hlc_pistol_P226R_357Combat"};
    sidearmAttachments[] = {"hlc_optic_siglite"};
};
class aar : r
{
    displayName = "Asst. Automatic Rifleman";
    backpackItems[] =
    {
        LIST_5("200Rnd_65x39_cased_Box_Tracer_Red")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class smg : r
{
    displayName = "SMG Base (Not for play)";
    vest[] = {
        "V_TacVest_oli"
    };
    primaryWeapon[] = {"CUP_smg_MP5A5"};
    scope[] = {};
    attachment[] = {};
    bipod[] = {};
    backpackItems[] = {};
    sidearmWeapon[] = {"hgun_Pistol_Signal_F"};
    magazines[] =
    {
        LIST_3("CUP_30Rnd_9x19_MP5"),
        "6Rnd_RedSignal_F",
        "SmokeShellRed",
        "ACE_HandFlare_Red",
        LIST_2("SmokeShell")
    };
    secondaryWeapon[] = {};
};
class vcrew : smg
{
    displayName = "Vehicle Crew";
    headgear[] = {
        "rhsusf_cvc_green_helmet"
    };
    items[] += {
        "ACRE_PRC152",
        "ToolKit"
    };
    linkedItems[] += {"rhssaf_zrak_rd7j","ItemGPS"};
};
class vcrewco : smg
{
    displayName = "Vehicle Commander";
    headgear[] = {
        "rhsusf_cvc_green_helmet"
    };
    items[] += {
        LIST_2("ACRE_PRC152"),
        "ToolKit"
    };
    linkedItems[] += {"rhssaf_zrak_rd7j","ItemGPS"};
};
class hp : smg
{
    displayName = "Helicopter Pilot";
    headgear[] = {
        "rhsusf_hgu56p",
        "rhsusf_hgu56p_visor"
    };
    hmd[] = {"ACE_NVG_Wide_Black"};
    goggles[] = {"default"};
    items[] += {
        LIST_2("ACRE_PRC152"),
        "ToolKit"
    };
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
        "evlt_medical_advancedAid",
        "Toolkit"
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class jp : baseMan
{
    displayName = "Fixed-Wing Pilot";
    uniform[] = {"U_B_PilotCoveralls"};
    vest[] = {"V_Rangemaster_belt"};
    backpack[] = {"B_Parachute"};
    headgear[] = {"H_PilotHelmetFighter_B"};
    goggles[] = {"default"};
    sidearmWeapon[] = {"hlc_pistol_P226R_357Combat"};
    sidearmAttachments[] = {"hlc_optic_siglite"};
    magazines[] =
    {
        LIST_2("hlc_12Rnd_357SIG_B_P226")
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
        "rhs_mag_m18_red",
        "6Rnd_RedSignal_F"
    };
    linkedItems[] = {"ItemMap","ItemGPS","ItemCompass","ItemWatch","rhssaf_zrak_rd7j"};
};
