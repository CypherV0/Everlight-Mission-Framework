//Compatible with ACE Advanced Medical

tooltip = "SAS G36C w/ NVGs by Cypher";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {
      "CUP_U_B_BDUv2_DPM",
      "CUP_U_B_BDUv2_dirty_DPM",
      "CUP_U_B_BDUv2_gloves_DPM",
      "CUP_U_B_BDUv2_gloves_dirty_DPM",
      "CUP_U_B_BDUv2_roll2_DPM",
      "CUP_U_B_BDUv2_roll2_dirty_DPM",
      "CUP_U_B_BDUv2_roll2_gloves_DPM",
      "CUP_U_B_BDUv2_roll2_gloves_dirty_DPM",
      "CUP_U_B_BDUv2_roll_DPM",
      "CUP_U_B_BDUv2_roll_dirty_DPM",
      "CUP_U_B_BDUv2_roll_gloves_DPM",
      "CUP_U_B_BDUv2_roll_gloves_dirty_DPM"
    };
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
    backpack[] = {"B_Kitbag_rgr"};
    headgear[] = {
        "H_Watchcap_camo",
        "H_Booniehat_khk_hs",
        "rhsusf_bowman_cap"
    };
    hmd[] =
    {
        "UK3CB_ANPVS7"
    };
    vest[] = {
        "CUP_V_B_BAF_DPM_Osprey_Mk3_Rifleman"
    };
    primaryWeapon[] = {
        "rhs_weap_g36c",
    };
    secondaryWeapon[] = {};
    bipod[] = {};
    scope[] = {"sma_eotech552"};
    silencer[] = {"rhsusf_acc_sfmb556"};
    attachment[] = {
        "acc_pointer_ir"
    };
    sidearmWeapon[] = {};
    magazines[] = {
        LIST_10("rhssaf_30rnd_556x45_EPR_G36"),
        LIST_2("rhs_mag_m67"),
        LIST_2("SmokeShell")
    };
    items[] = {
        LIST_5("ACE_fieldDressing"),
        LIST_2("ACE_morphine"),
        LIST_2("ACE_tourniquet"),
        "evlt_medical_advancedAid",
        "ACE_Flashlight_XL50",
        "ACRE_PRC343"
    };
};
class rm : r
{
    displayName = "Rifleman (Extra Ammo)";
    magazines[] += {
        LIST_5("rhssaf_30rnd_556x45_EPR_G36")
    };
};
class rat : r
{
    displayName = "Rifleman AT";
    backpackItems[] =
    {
        LIST_5("rhssaf_30rnd_556x45_EPR_G36")
    };
    secondaryWeapon[] = {"rhs_weap_M136"};
    secondaryAttachments[] = {"rhs_acc_at4_handler"};
};
class g : r
{
    displayName = "Grenadier";
    primaryWeapon[] = {
        "rhs_weap_g36kv_ag36"
    };
    vest[] = {
        "CUP_V_B_BAF_DPM_Osprey_Mk3_Grenadier"
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
    vest[] = {
        "CUP_V_B_BAF_DPM_Osprey_Mk3_Medic"
    };
    magazines[] = {
        LIST_10("rhssaf_30rnd_556x45_EPR_G36"),
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
        LIST_5("rhs_mag_M433_HEDP"),
        LIST_5("rhssaf_30rnd_556x45_EPR_G36")
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
    vest[] = {
        "CUP_V_B_BAF_DPM_Osprey_Mk3_Officer"
    };
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
    primaryWeapon[] = {"CUP_lmg_L110A1"};
    bipod[] = {};
    silencer[] = {"rhsusf_acc_sf3p556"};
    vest[] = {
        "CUP_V_B_BAF_DPM_Osprey_Mk3_AutomaticRifleman"
    };
    magazines[] =
    {
        LIST_3("rhsusf_200Rnd_556x45_box"),
        LIST_2("rhsusf_mag_17Rnd_9x19_FMJ"),
        LIST_2("rhs_mag_m67"),
        LIST_2("SmokeShell")
    };
    backpackItems[] =
    {
        LIST_2("rhsusf_200Rnd_556x45_box")
    };
    sidearmWeapon[] = {"rhsusf_weap_glock17g4"};
    sidearmAttachments[] = {};
};
class aar : r
{
    displayName = "Asst. Automatic Rifleman";
    backpackItems[] =
    {
        LIST_5("rhsusf_200Rnd_556x45_box")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class smg : r
{
    displayName = "SMG Base (Not for play)";
    vest[] = {
        "CUP_V_B_BAF_DPM_Osprey_Mk3_Pilot"
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
