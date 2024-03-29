//Compatible with ACE Advanced Medical

tooltip = "DEA 80s w/ NVG by Cypher";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {"usm_bdu_btisrl_wdl2", "usm_bdu_bti_wdl2", "usm_bdu_srh_wdl2", "usm_bdu_bnu_wdl2"};
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
    backpack[] = {};
    hmd[] =
    {
        "UK3CB_ANPVS7"
    };
    headgear[] = {
        "rhsusf_protech_helmet_rhino_ess",
        "rhsusf_protech_helmet_rhino"

    };
    vest[] = {
        "CUP_V_CZ_NPP2006_nk_black"
    };
    primaryWeapon[] = {
        "CUP_arifle_M16A2"
    };
    secondaryWeapon[] = {};
    bipod[] = {};
    scope[] = {};
    silencer[] = {};
    attachment[] = {"acc_pointer_ir"};
    sidearmWeapon[] = {};
    magazines[] = {
        LIST_10("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
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
class rat : r
{
    displayName = "Rifleman AT";
    secondaryWeapon[] = {"rhs_weap_m72a7"};
    secondaryAttachments[] = {};
};
class g : r
{
    displayName = "Grenadier";
    primaryWeapon[] = {
        "CUP_arifle_M16A2_GL"
    };
    backpack[] = {"B_FieldPack_blk"};
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
    magazines[] = {
        LIST_10("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
        LIST_2("SmokeShell")
    };
    backpack[] = {"usm_pack_m5_medic"};
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
    magazines[] +=
    {
        LIST_2("rhsusf_mag_15Rnd_9x19_JHP")
    };
    backpackItems[] +=
    {
        LIST_5("1Rnd_SmokeBlue_Grenade_shell"),
        LIST_5("1Rnd_SmokeRed_Grenade_shell"),
        LIST_5("ACE_40mm_Flare_white")
    };
    linkedItems[] =
    {
        "ItemMap",
        "ItemCompass",
        "ItemWatch",
        "rhssaf_zrak_rd7j",
    };
    sidearmWeapon[] = {"rhsusf_weap_m9"};
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
    primaryWeapon[] = {"rhs_weap_m249"};
    bipod[] = {};
    backpack[] = {"B_FieldPack_blk"};
    magazines[] =
    {
        LIST_2("rhsusf_200rnd_556x45_mixed_box"),
        LIST_2("rhsusf_mag_15Rnd_9x19_JHP"),
        "rhs_mag_m67",
        "SmokeShell"
    };
    backpackItems[] =
    {
        LIST_3("rhsusf_200rnd_556x45_mixed_box")
    };
    sidearmWeapon[] = {"rhsusf_weap_m9"};
    sidearmAttachments[] = {};
};
class aar : r
{
    displayName = "Asst. Automatic Rifleman";
    backpack[] = {"B_FieldPack_blk"};
    backpackItems[] =
    {
        LIST_3("rhsusf_200rnd_556x45_mixed_box")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class smg : r
{
    displayName = "SMG Base (Not for play)";
    uniform[] = {"usm_bdu_btisrl_wdl2", "usm_bdu_bti_wdl2", "usm_bdu_srh_wdl2"};
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
