//Compatible with ACE Advanced Medical

tooltip = "SWAT MP7 by Ace";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {"MNP_CombatUniform_PPU_A", "MNP_CombatUniform_PPU_B"};
    vest[] = {};
    headgear[] = {};
    backpack[] = {};
    goggles[] = {"default"};
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
    backpack[] = {"B_AssaultPack_blk"};
    headgear[] = {
        "rhssaf_helmet_m97_black_nocamo",
        "rhssaf_helmet_m97_black_nocamo_black_ess_bare"

    };
    vest[] = {
        "V_PlateCarrier1_blk",
        "V_PlateCarrier2_blk"
    };
    primaryWeapon[] = {
        "CUP_smg_MP7",
    };
    secondaryWeapon[] = {};
    bipod[] = {};
    scope[] = {"sma_cmore", "sma_micro_t2_lm", "optic_aco_smg" };
    silencer[] = {};
    attachment[] = {
        "everlight_x2000_point"
    };
    sidearmWeapon[] = {};
    magazines[] = {
        LIST_10("rhsusf_mag_40Rnd_46x30_JHP"),
        LIST_2("rhs_mag_mk84"),
        LIST_2("SmokeShell")
    };
    items[] = {
        LIST_5("ACE_fieldDressing"),
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
        LIST_5("rhsusf_mag_40Rnd_46x30_JHP")
    };
};
class rat : r
{
    displayName = "Rifleman AT";
    backpackItems[] =
    {
        LIST_5("rhsusf_mag_40Rnd_46x30_JHP")
    };
    secondaryWeapon[] = {"rhs_weap_M136"};
    secondaryAttachments[] = {"rhs_acc_at4_handler"};
};
class br : r
{
    displayName = "Breacher";
    primaryWeapon[] = {"rhs_weap_M590_8RD"};
    bipod[] = {};
    magazines[] =
    {
        LIST_5("rhsusf_8Rnd_Slug"),
        LIST_5("rhsusf_8Rnd_00Buck"),
        LIST_2("rhsusf_mag_17Rnd_9x19_FMJ"),
        LIST_2("rhs_mag_mk84"),
        LIST_2("SmokeShell")
    };
    sidearmWeapon[] = {"rhsusf_weap_glock17g4"};
    sidearmAttachments[] = {};
};
class g : r
{
    displayName = "Grenadier (Not for play)";
    primaryWeapon[] = {
        "arifle_SPAR_01_GL_blk_F"
    };
    scope[] = {"sma_eotech552", "sma_eotech", "rhsusf_acc_compm4" };
    magazines[] = {
        LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
        LIST_3("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
        LIST_2("rhs_mag_mk84"),
        LIST_2("SmokeShell")
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
    backpack[] = {"UK3CB_LFR_B_B_MESSENGER_MED"};
    magazines[] = {
        LIST_10("rhsusf_mag_40Rnd_46x30_JHP"),
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
    magazines[] += {"rhsusf_mag_17Rnd_9x19_FMJ"};
    backpackItems[] +=
    {
        LIST_5("1Rnd_SmokeBlue_Grenade_shell"),
        LIST_5("1Rnd_SmokeRed_Grenade_shell")
    };
    linkedItems[] =
    {
        "ItemMap",
        "ItemCompass",
        "ItemWatch",
        "rhssaf_zrak_rd7j",
    };
    sidearmWeapon[] = {"rhsusf_weap_glock17g4"};
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
    primaryWeapon[] = {"arifle_SPAR_02_blk_F"};
    scope[] = {"sma_eotech552", "sma_eotech", "rhsusf_acc_compm4" };
    bipod[] = {"rhs_acc_harris_swivel"};
    magazines[] =
    {
        LIST_3("rhs_mag_100Rnd_556x45_M855A1_cmag_mixed"),
        LIST_2("rhsusf_mag_17Rnd_9x19_FMJ"),
        LIST_2("rhs_mag_mk84"),
        LIST_2("SmokeShell")
    };
    backpackItems[] =
    {
        LIST_2("rhs_mag_100Rnd_556x45_M855A1_cmag_mixed")
    };
    sidearmWeapon[] = {"rhsusf_weap_glock17g4"};
    sidearmAttachments[] = {};
};
class aar : r
{
    displayName = "Asst. Automatic Rifleman";
    backpackItems[] =
    {
        LIST_5("rhs_mag_100Rnd_556x45_M855A1_cmag_mixed")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mg : r
{
    displayName = "LMG Gunner";
    primaryWeapon[] = {"rhs_weap_m249_pip_L"};
    scope[] = {"sma_eotech552", "sma_eotech", "rhsusf_acc_compm4" };
    bipod[] = {"rhsusf_acc_grip4_bipod"};
    magazines[] =
    {
        LIST_3("rhsusf_200rnd_556x45_mixed_box"),
        LIST_2("rhsusf_mag_17Rnd_9x19_FMJ"),
        LIST_2("rhs_mag_mk84"),
        LIST_2("SmokeShell")
    };
    backpackItems[] =
    {
        LIST_2("rhsusf_200rnd_556x45_mixed_box")
    };
    sidearmWeapon[] = {"rhsusf_weap_glock17g4"};
    sidearmAttachments[] = {};
};
class mga : r
{
    displayName = "LMG Assistant";
    backpackItems[] =
    {
        LIST_5("rhsusf_200rnd_556x45_mixed_box")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mgam : r
{
    displayName = "LMG Ammo Man";
    backpackItems[] =
    {
        LIST_7("rhsusf_200rnd_556x45_mixed_box")
    };
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
        LIST_5("ACE_fieldDressing"),
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
    sidearmWeapon[] = {"rhsusf_weap_glock17g4"};
    sidearmAttachments[] = {};
    magazines[] =
    {
        LIST_2("rhsusf_mag_17Rnd_9x19_FMJ")
    };
    items[] =
    {
        LIST_5("ACE_fieldDressing"),
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
