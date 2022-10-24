//Compatible with ACE Advanced Medical

tooltip = "Czech Desert w/ BREN by Cypher";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {"CUP_U_B_CZ_DST_NoKneepads", "CUP_U_B_CZ_DST_Kneepads_Sleeve"};
    vest[] = {};
    headgear[] = {};
    backpack[] = {};
    goggles[] = {"rhsusf_oakley_goggles_blk", "rhs_googles_black", "rhsusf_shemagh2_gogg_tan", "rhsusf_shemagh2_tan"};
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
    code = "onMapSingleClick {_shift};";

    // These are acre item radios that will be added during the ACRE init. ACRE radios added via any other system will be erased.
    radios[] = {};

    insignias[] = {};
    faces[] = {"faceset:russian"};
};
class r : baseMan
{
    displayName = "Rifleman";
    backpack[] = {"B_Kitbag_cbr"};
    headgear[] = {
        "CUP_H_CZ_Helmet01",
        "CUP_H_CZ_Helmet02"
    };
    vest[] = {
        "CUP_V_CZ_NPP2006_des",
        "CUP_V_CZ_NPP2006_nk_des",
        "CUP_V_CZ_NPP2006_ok_des"
    };
    primaryWeapon[] = {
        "CUP_arifle_CZ805_A1_blk",
    };
    secondaryWeapon[] = {};
    bipod[] = {};
    scope[] = {"rhsusf_acc_t1_high", "sma_spitfire_01_sc_black"};
    silencer[] = {"rhsgref_acc_zendl"};
    attachment[] = {
        "acc_flashlight"
    };
    sidearmWeapon[] = {};
    magazines[] = {
        LIST_7("CUP_30Rnd_556x45_XM8"),
        LIST_3("CUP_30Rnd_TE1_Green_Tracer_556x45_XM8"),
        "rhs_mag_f1",
        "SmokeShell"
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
    code = "_this setUnitTrait [""Medic"", true]; onMapSingleClick {_shift};";
    insignias[] = {"MedB"};
    backpack[] = {"UK3CB_KRG_B_B_FieldPack_SF_MED"};
    magazines[] = {
        LIST_7("CUP_30Rnd_556x45_XM8"),
        LIST_3("CUP_30Rnd_TE1_Green_Tracer_556x45_XM8"),
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
class ftl : g
{
    displayName = "Fireteam Leader";
    vest[] = {
        "CUP_V_CZ_NPP2006_co_des"
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
    primaryWeapon[] = {"CUP_lmg_Mk48"};
    bipod[] = {};
    magazines[] =
    {
        LIST_2("150Rnd_762x51_Box_Tracer"),
        LIST_2("rhssaf_mag_15Rnd_9x19_FMJ"),
        "rhs_mag_f1",
        "SmokeShell"
    };
    backpackItems[] =
    {
        LIST_5("150Rnd_762x51_Box_Tracer")
    };
    sidearmWeapon[] = {"rhs_weap_cz99"};
    sidearmAttachments[] = {};
};
class aar : r
{
    displayName = "Asst. Automatic Rifleman";
    backpackItems[] =
    {
        LIST_5("150Rnd_762x51_Box_Tracer")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mg : r
{
    displayName = "MMG Gunner";
    primaryWeapon[] = {"rhs_weap_m84"};
    bipod[] = {};
    magazines[] =
    {
        LIST_2("rhssaf_250Rnd_762x54R"),
        LIST_2("rhssaf_mag_15Rnd_9x19_FMJ"),
        "SmokeShell"
    };
    items[] += {"ACRE_PRC152"};
    sidearmWeapon[] = {"rhs_weap_cz99"};
    sidearmAttachments[] = {};
};
class mga : r
{
    displayName = "MMG Assistant";
    backpackItems[] =
    {
        LIST_2("rhssaf_250Rnd_762x54R")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mgam : r
{
    displayName = "MMG Ammo Man";
    backpackItems[] =
    {
        LIST_2("rhssaf_250Rnd_762x54R")
    };
};
class mat : r
{
    displayName = "MAT Gunner";
    secondaryWeapon[] = {"launch_MRAWS_green_rail_F"};
    secondaryAttachments[] = {};
    magazines[] += {"MRAWS_HEAT_F"};
    items[] += {"ACRE_PRC152"};
    backpackItems[] = {LIST_2("MRAWS_HEAT_F")};
};
class mata : r
{
    displayName = "MAT Assistant";
    backpackItems[] =
    {
        LIST_4("MRAWS_HEAT_F")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class matam : r
{
    displayName = "MAT Ammo Man";
    backpackItems[] =
    {
        LIST_4("MRAWS_HEAT_F")
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
