//Compatible with ACE Advanced Medical

tooltip = "Middle East Guerrillas by Cypher";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {"U_C_HunterBody_grn", "U_BG_Guerilla3_1", "U_BG_Guerilla2_3", "U_BG_Guerilla2_1", "U_BG_Guerilla2_2", "UK3CB_ADC_C_Shorts_U_02", "U_I_C_Soldier_Bandit_4_F", "U_C_Poloshirt_tricolour", "U_I_C_Soldier_Para_5_F", "U_I_C_Soldier_Bandit_1_F", "U_I_C_Soldier_Bandit_5_F", "U_I_C_Soldier_Bandit_3_F"};
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
    goggles[] = {
        "None",
        "G_Aviator",
        "CUP_G_TK_RoundGlasses_blk",
        "G_Lowprofile",
        "G_Combat"
    };
    backpack[] = {"UK3CB_B_TacticalPack_Oli"};
    headgear[] = {
        "UK3CB_H_Shemag_oli",
        "UK3CB_H_Shemag_tan",
        "UK3CB_H_Shemag_blk",
        "UK3CB_H_Shemag_grey",
        "UK3CB_H_Shemag_white"
    };
    vest[] = {
        "CUP_V_B_GER_Carrier_Rig_2_Brown"
    };
    primaryWeapon[] = {
        "CUP_srifle_M14"
    };
    secondaryWeapon[] = {};
    bipod[] = {};
    scope[] = {};
    silencer[] = {};
    attachment[] = {"Everlight_X2000_point"};
    sidearmWeapon[] = {};
    magazines[] = {
        LIST_10("ACE_10Rnd_762x51_Mag_Tracer"),
        LIST_2("rhs_mag_f1"),
        LIST_2("SmokeShell")
    };
    items[] = {
        LIST_10("ACE_fieldDressing"),
        LIST_2("ACE_morphine"),
        LIST_2("ACE_tourniquet"),
        "evlt_medical_advancedAid"
    };
};
class rm : r
{
    displayName = "Rifleman (Extra Ammo)";
    magazines[] += {
        LIST_5("ACE_10Rnd_762x51_Mag_Tracer")
    };
};
class rat : r
{
    displayName = "Rifleman AT";
    secondaryWeapon[] = {"rhs_weap_rpg75"};
    secondaryAttachments[] = {};
};
class mark : r
{
    displayName = "Platoon Marksman";
    primaryWeapon[] = {
        "CUP_srifle_M14"
    };
    scope[] = {"optic_KHS_old"};
    sidearmWeapon[] = {"rhs_weap_pya"};
    magazines[] = {
        LIST_10("ACE_10Rnd_762x51_Mag_Tracer"),
        LIST_5("rhs_mag_9x19_17"),
        LIST_2("rhs_mag_f1"),
        LIST_2("SmokeShell")
    };
};
class g : r
{
    displayName = "Grenadier";
    sidearmWeapon[] = {};
    magazines[] += {
      LIST_10("rhs_mag_M433_HEDP"),
      LIST_5("1Rnd_Smoke_Grenade_shell"),
      "rhs_weap_m79"};
    secondaryWeapon[] = {};
};
class m : r
{
    displayName = "Medic";
    code = "_this setUnitTrait [""Medic"", true];";
    insignias[] = {"MedB"};
    vest[] = {
        "rhsgref_6b23_khaki_medic"
    };
    backpack[] = {
        "UK3CB_B_TacticalPack_Med_Oli"
    };
    primaryWeapon[] = {
        "UK3CB_Sten"
    };
    magazines[] = {
        LIST_10("UK3CB_Sten_34Rnd_Magazine"),
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
    sidearmWeapon[] = {"rhs_weap_pya"};
    magazines[] +=
    {
        LIST_2("rhs_mag_9x19_17"),
        LIST_5("ACE_40mm_Flare_white"),
        LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
        LIST_2("1Rnd_SmokeRed_Grenade_shell")
    };
    items[] += {"ACRE_PRC343"};
    linkedItems[] =
    {
        "ItemMap",
        "ItemCompass",
        "ItemWatch",
        "rhssaf_zrak_rd7j",
    };
};
class sl : ftl
{
    displayName = "Squad Leader";
    vest[] = {"CUP_V_B_GER_Carrier_Rig_3_Brown"};
    items[] += {"ACRE_PRC152"};
};
class pl : sl
{
    displayName = "Platoon Commander";
    uniform[] = {"U_BG_Guerilla3_1"};
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
    displayName = "Automatic Rifleman (RPK)";
    primaryWeapon[] = {"CUP_arifle_RPK74_45"};
    bipod[] = {};
    magazines[] =
    {
        LIST_2("rhs_60Rnd_545X39_AK_Green"),
        LIST_2("rhs_mag_9x19_17"),
        LIST_2("rhs_mag_f1"),
        LIST_2("SmokeShell")
    };
    backpackItems[] =
    {
        LIST_10("rhs_60Rnd_545X39_AK_Green")
    };
    sidearmWeapon[] = {"rhs_weap_pya"};
    sidearmAttachments[] = {};
};
class aar : r
{
    displayName = "Asst. Automatic Rifleman (RPK)";
    backpackItems[] =
    {
        LIST_10("rhs_60Rnd_545X39_AK_Green")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class lat : r
{
    displayName = "LAT";
    secondaryWeapon[] = {"rhs_weap_rpg7"};
    secondaryAttachments[] = {"rhs_acc_pgo7v"};
    magazines[] +=
    {
        "rhs_rpg7_PG7VS_mag"
    };
    backpackItems[] =
    {
        LIST_4("rhs_rpg7_PG7VS_mag")
    };
};
class hat : r
{
    displayName = "HAT Gunner";
    secondaryWeapon[] = {"ace_compat_rhs_afrf3_kornet_carry"};
    items[] += {"ACRE_PRC152"};
};
class hata : r
{
    displayName = "HAT Assistant";
    backpackItems[] =
    {
        LIST_4("ace_compat_rhs_afrf3_mag_9m1331")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class hatam : r
{
    displayName = "HAT Ammo Man";
    backpackItems[] =
    {
        LIST_4("ace_compat_rhs_afrf3_mag_9m1331")
    };
};
class mg : r
{
    displayName = "MMG Gunner";
    backpack[] = {
        "UK3CB_LSM_B_B_CARRYALL_KHK"
    };
    primaryWeapon[] = {"rhs_weap_pkm"};
    attachment[] = {};
    bipod[] = {};
    magazines[] =
    {
        LIST_6("rhs_100Rnd_762x54mmR_green"),
        LIST_2("rhs_mag_9x19_17"),
        LIST_2("rhs_mag_f1"),
        LIST_2("SmokeShell")
    };
    items[] += {"ACRE_PRC152"};
    sidearmWeapon[] = {"rhs_weap_pya"};
    sidearmAttachments[] = {};
};
class mga : r
{
    displayName = "MMG Assistant";
    backpack[] = {
        "UK3CB_LSM_B_B_CARRYALL_KHK"
    };
    backpackItems[] =
    {
        LIST_4("rhs_100Rnd_762x54mmR_green")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mgam : r
{
    displayName = "MMG Ammo Man";
    backpack[] = {
        "UK3CB_LSM_B_B_CARRYALL_KHK"
    };
    backpackItems[] =
    {
        LIST_4("rhs_100Rnd_762x54mmR_green")
    };
};
class smg : r
{
    displayName = "SMG Base (Not for play)";
    vest[] = {
        "V_TacVest_oli"
    };
    primaryWeapon[] = {"CUP_smg_vityaz"};
    scope[] = {};
    attachment[] = {};
    bipod[] = {};
    backpackItems[] = {};
    sidearmWeapon[] = {"hgun_Pistol_Signal_F"};
    magazines[] =
    {
        LIST_3("CUP_30Rnd_9x19_Vityaz"),
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
    linkedItems[] += {"rhssaf_zrak_rd7j", "ItemGPS"};
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
    linkedItems[] += {"rhssaf_zrak_rd7j", "ItemGPS"};
};
