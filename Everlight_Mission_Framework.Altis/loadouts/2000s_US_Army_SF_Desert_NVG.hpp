//Compatible with ACE Advanced Medical

tooltip = "2000s US Army SF Desert NVG by Cypher";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {
      "CUP_U_B_BDUv2_DCU_US",
      "CUP_U_B_BDUv2_dirty_DCU_US",
      "CUP_U_B_BDUv2_gloves_DCU_US",
      "CUP_U_B_BDUv2_gloves_dirty_DCU_US",
      "CUP_U_B_BDUv2_roll2_DCU_US",
      "CUP_U_B_BDUv2_roll2_dirty_DCU_US",
      "CUP_U_B_BDUv2_roll2_gloves_DCU_US",
      "CUP_U_B_BDUv2_roll2_gloves_dirty_DCU_US",
      "CUP_U_B_BDUv2_roll_DCU_US",
      "CUP_U_B_BDUv2_roll_dirty_DCU_US",
      "CUP_U_B_BDUv2_roll_gloves_DCU_US",
      "CUP_U_B_BDUv2_roll_gloves_dirty_DCU_US"
    };
    vest[] = {};
    headgear[] = {};
    backpack[] = {};
    goggles[] = {"default", "None", "rhs_googles_black", "rhsusf_shemagh2_grn", "rhsusf_shemagh2_tan", "rhsusf_shemagh2_od", "rhsusf_shemagh2_gogg_grn", "rhsusf_shemagh2_gogg_od", "rhsusf_shemagh2_gogg_tan"};
    hmd[] =
    {
        "UK3CB_ANPVS7"
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
    code = "onMapSingleClick {_shift};";

    // These are acre item radios that will be added during the ACRE init. ACRE radios added via any other system will be erased.
    radios[] = {};

    insignias[] = {};
    faces[] = {"faceset:american"};
};
class r : baseMan
{
    displayName = "Rifleman";
    backpack[] = {"UK3CB_CW_US_B_LATE_B_RIF_04"};
    headgear[] = {
        "usm_bdu_boonie_dcu"
    };
    vest[] = {
        "CUP_V_B_Interceptor_Grenadier_M81"
    };
    primaryWeapon[] = {
        "rhs_weap_m4a1_carryhandle",
    };
    secondaryWeapon[] = {};
    bipod[] = {};
    scope[] = {"cup_optic_compm2_low", "cup_optic_compm2_black", "rhsusf_acc_compm4", "cup_optic_ac11704_black", "sma_barska"};
    silencer[] = {};
    attachment[] = {
        "cup_acc_anpeq_15_black"
    };
    sidearmWeapon[] = {};
    magazines[] = {
        LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
        LIST_3("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
        LIST_2("rhs_mag_m67"),
        LIST_2("SmokeShell")
    };
    items[] = {
        LIST_10("ACE_fieldDressing"),
        LIST_2("ACE_morphine"),
        LIST_2("ACE_tourniquet"),
        "ACE_personalAidKit",
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
class g : r
{
    displayName = "Grenadier";
    primaryWeapon[] = {
        "rhs_weap_m4a1_carryhandle_m203S"
    };
    bipod[] = {};
    backpack[] = {"UK3CB_CW_US_B_LATE_B_RIF_04"};
    backpackItems[] = {
      LIST_10("rhs_mag_M433_HEDP"),
      LIST_5("1Rnd_Smoke_Grenade_shell")};
    secondaryWeapon[] = {};
};
class m : r
{
    displayName = "Medic";
    code = "_this setUnitTrait [""Medic"", true]; onMapSingleClick {_shift};";
    insignias[] = {"MedB"};
    backpack[] = {"UK3CB_LSM_B_B_CARRYALL_OLI"};
    magazines[] = {
        LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
        LIST_3("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
        LIST_2("SmokeShell")
    };
    backpackItems[] = {
      LIST_20("ACE_fieldDressing"),
      LIST_20("ACE_elasticBandage"),
      LIST_20("ACE_quikclot"),
      LIST_10("ACE_bloodIV"),
      LIST_10("ACE_bloodIV_500"),
      LIST_10("ACE_morphine"),
      LIST_10("ACE_epinephrine"),
      LIST_10("ACE_tourniquet"),
      LIST_5("ACE_bloodIV_250"),
      LIST_10("ACE_Splint")
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
class ftl : g
{
    displayName = "Fireteam Leader";
    backpack[] = {"UK3CB_CW_US_B_LATE_B_RIF_04"};
    magazines[] += {"rhsusf_mag_15Rnd_9x19_FMJ"};
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
    backpack[] = {"UK3CB_CW_US_B_LATE_B_RIF_04"};
    primaryWeapon[] = {"rhs_weap_m249_pip_ris"};
    scope[] = {};
    bipod[] = {"rhsusf_acc_saw_bipod"};
    magazines[] =
    {
        LIST_3("rhsusf_200rnd_556x45_mixed_box"),
        LIST_2("rhsusf_mag_15Rnd_9x19_FMJ"),
        LIST_2("rhs_mag_m67"),
        LIST_2("SmokeShell")
    };
    backpackItems[] =
    {
        LIST_2("rhsusf_200rnd_556x45_mixed_box")
    };
    sidearmWeapon[] = {"rhsusf_weap_m9"};
    sidearmAttachments[] = {};
};
class aar : r
{
    displayName = "Asst. Automatic Rifleman";
    backpack[] = {"UK3CB_CW_US_B_LATE_B_RIF_04"};
    backpackItems[] =
    {
        LIST_5("rhsusf_200rnd_556x45_mixed_box")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class rat : r
{
    displayName = "Rifleman AT";
    magazines[] += {
        LIST_5("rhs_mag_30Rnd_556x45_M855A1_Stanag")
    };
    secondaryWeapon[] = {"rhs_weap_M136"};
    secondaryAttachments[] = {"rhs_acc_at4_handler"};
};
class mg : r
{
    displayName = "MMG Gunner";
    backpack[] = {"UK3CB_CW_US_B_LATE_B_RIF_04"};
    primaryWeapon[] = {"rhs_weap_m240G"};
    scope[] = {};
    attachment[] = {};
    bipod[] = {};
    magazines[] =
    {
        LIST_4("rhsusf_100Rnd_762x51_m62_tracer"),
        LIST_2("rhsusf_mag_15Rnd_9x19_FMJ"),
        LIST_2("rhs_mag_m67"),
        LIST_2("SmokeShell")
    };
    items[] += {"ACRE_PRC152"};
    sidearmWeapon[] = {"rhsusf_weap_m9"};
    sidearmAttachments[] = {};
};
class mga : r
{
    displayName = "MMG Assistant";
    backpack[] = {"UK3CB_CW_US_B_LATE_B_RIF_04"};
    backpackItems[] =
    {
        LIST_7("rhsusf_100Rnd_762x51_m62_tracer")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mgam : r
{
    displayName = "MMG Ammo Man";
    backpack[] = {"UK3CB_LSM_B_B_CARRYALL_OLI"};
    backpackItems[] =
    {
        LIST_7("rhsusf_100Rnd_762x51_m62_tracer")
    };
};
class mat : r
{
    displayName = "MAT Gunner";
    backpack[] = {"UK3CB_CW_US_B_LATE_B_RIF_04"};
    secondaryWeapon[] = {"rhs_weap_maaws"};
    secondaryAttachments[] = {};
    magazines[] += {"MRAWS_HEAT_F"};
    items[] += {"ACRE_PRC152"};
    backpackItems[] = {"MRAWS_HEAT_F"};
};
class mata : r
{
    displayName = "MAT Assistant";
    backpack[] = {"UK3CB_CW_US_B_LATE_B_RIF_04"};
    backpackItems[] =
    {
        LIST_4("MRAWS_HEAT_F")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class vcrew : smg
{
    displayName = "Vehicle Crew";
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
    code = "onMapSingleClick {};";
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
        "ACE_personalAidKit",
        "Toolkit"
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class jp : baseMan
{
    displayName = "Fixed-Wing Pilot";
    code = "onMapSingleClick {};";
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
        "ACE_microDAGR",
        "ACE_personalAidKit",
        "hgun_Pistol_Signal_F",
        "ACE_HandFlare_Red",
        "rhs_mag_m18_red",
        "6Rnd_RedSignal_F"
    };
    linkedItems[] = {"ItemMap","ItemGPS","ItemCompass","ItemWatch","rhssaf_zrak_rd7j"};
};
