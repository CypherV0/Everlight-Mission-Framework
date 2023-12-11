//Compatible with ACE Advanced Medical

tooltip = "Czech w/ BREN by Cypher";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {"CUP_U_B_CZ_WDL_NoKneepads", "CUP_U_B_CZ_WDL_Kneepads_Gloves"};
    vest[] = {};
    headgear[] = {};
    backpack[] = {};
    goggles[] = {"G_Combat_Goggles_tna_F", "rhsusf_oakley_goggles_blk", "rhsusf_shemagh_gogg_grn", "rhsusf_shemagh2_gogg_grn", "rhsusf_shemagh2_grn"};
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
    backpack[] = {"B_Kitbag_cbr"};
    headgear[] = {
        "CUP_H_CZ_Helmet03",
        "CUP_H_CZ_Helmet04"
    };
    vest[] = {
        "CUP_V_CZ_NPP2006_nk_vz95",
        "CUP_V_CZ_NPP2006_vz95",
        "CUP_V_CZ_NPP2006_ok_vz95"
    };
    primaryWeapon[] = {
        "CUP_arifle_CZ805_A1_blk",
    };
    secondaryWeapon[] = {};
    bipod[] = {};
    scope[] = {"rhsusf_acc_t1_high", "sma_spitfire_01_sc_black"};
    silencer[] = {"rhsgref_acc_zendl"};
    attachment[] = {
        "everlight_x2000_point"
    };
    sidearmWeapon[] = {};
    magazines[] = {
        LIST_7("CUP_30Rnd_556x45_XM8"),
        LIST_3("CUP_30Rnd_TE1_Green_Tracer_556x45_XM8"),
        "rhs_mag_m67",
        "SmokeShell"
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
        LIST_5("CUP_30Rnd_556x45_XM8")
    };
};
class rat : r
{
    displayName = "Rifleman AT";
    backpackItems[] =
    {
        LIST_5("CUP_30Rnd_556x45_XM8")
    };
    secondaryWeapon[] = {"rhs_weap_M136"};
    secondaryAttachments[] = {"rhs_acc_at4_handler"};
};
class g : r
{
    displayName = "Grenadier";
    primaryWeapon[] = {
        "CUP_arifle_CZ805_GL_blk",
    };
    backpackItems[] = {
      LIST_10("rhs_mag_M433_HEDP"),
      LIST_5("1Rnd_Smoke_Grenade_shell")};
};
class m : r
{
    displayName = "Medic";
    code = "_this setUnitTrait [""Medic"", true];";
    insignias[] = {"MedB"};
    backpack[] = {"UK3CB_KRG_B_B_FieldPack_SF_MED"};
    magazines[] = {
        LIST_7("CUP_30Rnd_556x45_XM8"),
        LIST_3("CUP_30Rnd_TE1_Green_Tracer_556x45_XM8"),
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
    vest[] = {
        "CUP_V_CZ_NPP2006_co_vz95"
    };
    magazines[] += {"rhssaf_mag_15Rnd_9x19_FMJ"};
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
    sidearmWeapon[] = {"rhs_weap_cz99"};
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
    headgear[] = {"CUP_H_CZ_Hat01"};
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
    primaryWeapon[] = {"hlc_lmg_mk46"};
    bipod[] = {};
    magazines[] =
    {
        LIST_2("rhsusf_200rnd_556x45_mixed_box"),
        LIST_2("rhssaf_mag_15Rnd_9x19_FMJ"),
        "rhs_mag_m67",
        "SmokeShell"
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
    backpackItems[] =
    {
        LIST_5("rhsusf_200rnd_556x45_mixed_box")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mg : r
{
    displayName = "MMG Gunner";
    primaryWeapon[] = {"hlc_lmg_mk48"};
    backpack[] = {"B_Carryall_oli"};
    bipod[] = {};
    magazines[] =
    {
        LIST_3("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"),
        LIST_2("rhssaf_mag_15Rnd_9x19_FMJ"),
        "SmokeShell"
    };
    items[] += {"ACRE_PRC152"};
    sidearmWeapon[] = {"rhs_weap_cz99"};
    sidearmAttachments[] = {};
    backpackItems[] =
    {
        LIST_5("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
    };
};
class mga : r
{
    displayName = "MMG Assistant";
    backpack[] = {"B_Carryall_oli"};
    backpackItems[] =
    {
        LIST_5("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mgam : r
{
    displayName = "MMG Ammo Man";
    backpack[] = {"B_Carryall_oli"};
    backpackItems[] =
    {
        LIST_5("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
    };
};
class mat : r
{
    displayName = "MAT Gunner";
    backpack[] = {"B_Carryall_oli"};
    secondaryWeapon[] = {"rhs_weap_maaws"};
    secondaryAttachments[] = {"rhs_optic_maaws"};
    magazines[] += {"rhs_mag_maaws_HEAT"};
    items[] += {"ACRE_PRC152"};
    backpackItems[] = 
    {
        LIST_2("rhs_mag_maaws_HEDP"),
        "rhs_mag_maaws_HEAT"
    };
};
class mata : r
{
    displayName = "MAT Assistant";
    backpack[] = {"B_Carryall_oli"};
    backpackItems[] =
    {
        LIST_2("rhs_mag_maaws_HEAT"),
        "rhs_mag_maaws_HEDP"
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class matam : r
{
    displayName = "MAT Ammo Man";
    backpack[] = {"B_Carryall_oli"};
    backpackItems[] =
    {
        LIST_2("rhs_mag_maaws_HEAT"),
        "rhs_mag_maaws_HEDP"
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
        "rhs_tsh4_bala", "rhs_tsh4_ess", "rhs_tsh4_ess_bala"
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
        "rhs_tsh4_bala", "rhs_tsh4_ess", "rhs_tsh4_ess_bala"
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
    uniform[] = {"U_I_pilotCoveralls"};
    vest[] = {"V_Rangemaster_belt"};
    backpack[] = {"B_Parachute"};
    headgear[] = {"H_PilotHelmetFighter_I"};
    goggles[] = {"default"};
    sidearmWeapon[] = {"hlc_pistol_P226R_357Combat"};
    sidearmAttachments[] = {"hlc_optic_siglite"};
    magazines[] =
    {
        LIST_2("hlc_12Rnd_357SIG_B_P226")
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
