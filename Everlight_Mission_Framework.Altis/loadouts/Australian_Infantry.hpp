//Compatible with ACE Advanced Medical

tooltip = "Australian Infantry by Cypher";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {"MNP_CombatUniform_Australia","MNP_CombatUniform_Australia_S"};
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
    backpack[] = {"B_AssaultPack_rgr","B_Kitbag_rgr"};
    headgear[] = {
        "MNP_Helmet_Australia"
    };
    vest[] = {
        "MNP_Vest_Australia"
    };
    primaryWeapon[] = {
        "CUP_arifle_AUG_A1",
    };
    secondaryWeapon[] = {};
    bipod[] = {};
    scope[] = {};
    silencer[] = {};
    attachment[] = {};
    sidearmWeapon[] = {};
    magazines[] = {
        LIST_7("CUP_30Rnd_556x45_AUG"),
        LIST_3("CUP_30Rnd_TE1_Red_Tracer_556x45_AUG"),
        LIST_2("SmokeShell"),
        "rhs_mag_f1"
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
        LIST_5("CUP_30Rnd_556x45_AUG")
    };
};
class rat : r
{
    displayName = "Rifleman AT";
    backpackItems[] =
    {
        LIST_5("CUP_30Rnd_556x45_AUG")
    };
    secondaryWeapon[] = {"rhs_weap_m72a7"};
    secondaryAttachments[] = {};
};
class g : r
{
    displayName = "Grenadier";
    primaryWeapon[] = {
        "CUP_arifle_AUG_A1"
    };
    bipod[] = {};
    backpackItems[] = {
      LIST_10("rhs_mag_M433_HEDP"),
      LIST_5("1Rnd_Smoke_Grenade_shell")};
    secondaryWeapon[] = {"rhs_weap_M320"};
};
class m : r
{
    displayName = "Medic";
    code = "_this setUnitTrait [""Medic"", true];";
    insignias[] = {"MedB"};
    backpack[] = {"UK3CB_ION_B_B_RIF_MED_OLI"};
    magazines[] = {
        LIST_7("CUP_30Rnd_556x45_AUG"),
        LIST_3("CUP_30Rnd_TE1_Red_Tracer_556x45_AUG"),
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
    sidearmWeapon[] = {"rhs_weap_M320"};
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
    primaryWeapon[] = {"rhs_weap_minimi_para_railed"};
    bipod[] = {"rhsusf_acc_saw_bipod"};
    magazines[] =
    {
        LIST_3("rhsusf_200rnd_556x45_mixed_box"),
        LIST_2("hlc_12Rnd_357SIG_B_P226"),
        LIST_2("SmokeShell"),
        "rhs_mag_f1"
    };
    backpackItems[] =
    {
        LIST_2("rhsusf_200rnd_556x45_mixed_box")
    };
    sidearmWeapon[] = {"hlc_pistol_P226R_357Combat"};
    sidearmAttachments[] = {"hlc_optic_siglite"};
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
class hat : r
{
    displayName = "HAT Gunner";
    backpack[] = {"UK3CB_LSM_B_B_CARRYALL_OLI"};
    secondaryWeapon[] = {"rhs_weap_fgm148"};
    magazines[] += {"rhs_fgm148_magazine_AT"};
    items[] += {"ACRE_PRC152"};
};
class hata : r
{
    displayName = "HAT Assistant";
    backpack[] = {"UK3CB_LSM_B_B_CARRYALL_OLI"};
    backpackItems[] =
    {
        "rhs_fgm148_magazine_AT"
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class hatam : r
{
    displayName = "HAT Ammo Man";
    backpack[] = {"UK3CB_LSM_B_B_CARRYALL_OLI"};
    backpackItems[] =
    {
        "rhs_fgm148_magazine_AT"
    };
};
class mg : r
{
    displayName = "MMG Gunner";
    backpack[] = {"UK3CB_LSM_B_B_CARRYALL_OLI"};
    primaryWeapon[] = {"rhs_weap_fnmag"};
    attachment[] = {"everlight_x2000_point"};
    bipod[] = {};
    magazines[] =
    {
        LIST_6("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"),
        LIST_2("hlc_12Rnd_357SIG_B_P226"),
        LIST_2("SmokeShell"),
        "rhs_mag_f1"
    };
    items[] += {"ACRE_PRC152"};
    sidearmWeapon[] = {"hlc_pistol_P226R_357Combat"};
    sidearmAttachments[] = {"hlc_optic_siglite"};
};
class mga : r
{
    displayName = "MMG Assistant";
    backpack[] = {"UK3CB_LSM_B_B_CARRYALL_OLI"};
    backpackItems[] =
    {
        LIST_7("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mgam : r
{
    displayName = "MMG Ammo Man";
    backpack[] = {"UK3CB_LSM_B_B_CARRYALL_OLI"};
    backpackItems[] =
    {
        LIST_7("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
    };
};
class mat : r
{
    displayName = "MAT Gunner";
    backpack[] = {"UK3CB_LSM_B_B_CARRYALL_OLI"};
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
    backpack[] = {"UK3CB_LSM_B_B_CARRYALL_OLI"};
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
    backpack[] = {"UK3CB_LSM_B_B_CARRYALL_OLI"};
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
