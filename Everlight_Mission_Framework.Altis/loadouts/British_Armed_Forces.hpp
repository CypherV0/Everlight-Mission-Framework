//Compatible with ACE Advanced Medical

tooltip = "British Armed Forces by Cypher";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {"CUP_U_B_BAF_DDPM_UBACSTSHIRTKNEE",
    "CUP_U_B_BAF_DDPM_UBACSTSHIRT_Gloves",
    "CUP_U_B_BAF_DDPM_UBACSTSHIRT",
    "CUP_U_B_BAF_DDPM_UBACSROLLEDKNEE",
    "CUP_U_B_BAF_DDPM_UBACSROLLED_Gloves",
    "CUP_U_B_BAF_DDPM_UBACSROLLED",
    "CUP_U_B_BAF_DDPM_UBACSLONGKNEE_Gloves",
    "CUP_U_B_BAF_DDPM_UBACSLONGKNEE",
    "CUP_U_B_BAF_DDPM_UBACSLONG_Gloves",
    "CUP_U_B_BAF_DDPM_UBACSLONG"
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
    backpack[] = {"CUP_B_Bergen_BAF","B_Kitbag_tan"};
    headgear[] = {
        "CUP_H_BAF_DDPM_Mk6_EMPTY",
        "CUP_H_BAF_DDPM_Mk6_EMPTY_PRR",
        "CUP_H_BAF_DDPM_Mk6_GLASS_PRR",
        "CUP_H_BAF_DDPM_Mk6_GOGGLES_PRR",
        "CUP_H_BAF_DDPM_Mk6_NETTING_PRR"

    };
    vest[] = {
        "CUP_V_B_BAF_DDPM_Osprey_Mk3_Rifleman"
    };
    primaryWeapon[] = {
        "CUP_arifle_L85A2_NG"
    };
    secondaryWeapon[] = {};
    bipod[] = {};
    scope[] = {"rhsusf_acc_compm4","CUP_optic_MicroT1"};
    silencer[] = {};
    attachment[] = {"everlight_x2000_point"};
    sidearmWeapon[] = {};
    magazines[] = {
        LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
        LIST_3("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
        LIST_2("rhs_mag_m67"),
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
        LIST_5("rhs_mag_30Rnd_556x45_M855A1_Stanag")
    };
};
class rat : r
{
    displayName = "Rifleman AT";
    backpackItems[] =
    {
        LIST_5("rhs_mag_30Rnd_556x45_M855A1_Stanag")
    };
    secondaryWeapon[] = {"rhs_weap_m72a7"};
    secondaryAttachments[] = {};
};
class g : r
{
    displayName = "Grenadier";
    vest[] = {
        "CUP_V_B_BAF_DDPM_Osprey_Mk3_Grenadier"
    };
    primaryWeapon[] = {
        "CUP_arifle_L85A2_GL",
    };
    bipod[] = {};
    scope[] = {"rhsusf_acc_compm4","CUP_optic_MicroT1"};
    silencer[] = {};
    attachment[] = {"everlight_x2000_point"};
    backpackItems[] = {
      LIST_10("rhs_mag_M433_HEDP"),
      LIST_5("1Rnd_Smoke_Grenade_shell")};
    sidearmWeapon[] = {};
};
class m : r
{
    displayName = "Medic";
    code = "_this setUnitTrait [""Medic"", true];";
    insignias[] = {"MedB"};
    vest[] = {
        "CUP_V_B_BAF_DDPM_Osprey_Mk3_Medic"
    };
    magazines[] = {
        LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
        LIST_3("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
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
    backpack[] = {"UK3CB_B_TacticalPack_Med_Oli"};
};
class ftl : g
{
    displayName = "Fireteam Leader";
    vest[] = {
        "CUP_V_B_BAF_DDPM_Osprey_Mk3_Grenadier"
    };
    magazines[] +=
    {
        LIST_2("rhsusf_mag_17Rnd_9x19_FMJ")
    };
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
    vest[] = {
        "CUP_V_B_BAF_DDPM_Osprey_Mk3_Officer"
    };
    items[] += {"ACRE_PRC152"};
};
class pl : sl
{
    displayName = "Platoon Commander";
    vest[] = {
        "CUP_V_B_BAF_DDPM_Osprey_Mk3_Officer"
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
    vest[] = {
        "CUP_V_B_BAF_DDPM_Osprey_Mk3_AutomaticRifleman"
    };
    primaryWeapon[] = {"rhs_weap_minimi_para_railed"};
    bipod[] = {};
    magazines[] =
    {
        LIST_3("rhsusf_200rnd_556x45_mixed_box"),
        LIST_2("rhsusf_mag_17Rnd_9x19_FMJ"),
        LIST_2("rhs_mag_m67"),
        LIST_2("SmokeShell")
    };
    backpackItems[] =
    {
        LIST_2("rhsusf_200rnd_556x45_mixed_box")
    };
    sidearmWeapon[] = {"rhsusf_weap_glock17g4"};
    sidearmAttachments[] = {};
};
class aar : r
{
    displayName = "Asst. Automatic Rifleman";
    backpackItems[] =
    {
        LIST_4("rhsusf_200rnd_556x45_mixed_box")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class hat : r
{
    displayName = "HAT Gunner";
    backpack[] = {"B_Carryall_cbr"};
    vest[] = {
        "CUP_V_B_BAF_DDPM_Osprey_Mk3_Officer"
    };
    secondaryWeapon[] = {"rhs_weap_fgm148"};
    magazines[] += {"rhs_fgm148_magazine_AT"};
    items[] += {"ACRE_PRC152"};
};
class hata : r
{
    displayName = "HAT Assistant";
    secondaryWeapon[] = {};
    backpack[] = {"B_Carryall_cbr"};
    backpackItems[] =
    {
        "rhs_fgm148_magazine_AT"
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class hatam : r
{
    displayName = "HAT Ammo Man";
    backpack[] = {"B_Carryall_cbr"};
    backpackItems[] =
    {
        "rhs_fgm148_magazine_AT"
    };
};
class mat : r
{
    displayName = "MAT Gunner";
    vest[] = {
        "CUP_V_B_BAF_DDPM_Osprey_Mk3_Officer"
    };
    backpack[] = {"B_Carryall_cbr"};
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
    backpack[] = {"B_Carryall_cbr"};
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
    backpack[] = {"B_Carryall_cbr"};
    backpackItems[] =
    {
        LIST_2("rhs_mag_maaws_HEAT"),
        "rhs_mag_maaws_HEDP"
    };
};
class mg : r
{
    displayName = "MMG Gunner";
    vest[] = {
        "CUP_V_B_BAF_DDPM_Osprey_Mk3_Officer"
    };
    backpack[] = {"B_Carryall_cbr"};
    primaryWeapon[] = {"rhs_weap_fnmag"};
    attachment[] = {"everlight_x2000_point"};
    bipod[] = {};
    magazines[] =
    {
        LIST_6("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"),
        LIST_2("rhsusf_mag_17Rnd_9x19_FMJ")
    };
    items[] += {"ACRE_PRC152"};
    sidearmWeapon[] = {"rhsusf_weap_glock17g4"};
    sidearmAttachments[] = {};
};
class mga : r
{
    displayName = "MMG Assistant";
    backpack[] = {"B_Carryall_cbr"};
    backpackItems[] =
    {
        LIST_7("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mgam : r
{
    displayName = "MMG Ammo Man";
    backpack[] = {"B_Carryall_cbr"};
    backpackItems[] =
    {
        LIST_7("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
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
