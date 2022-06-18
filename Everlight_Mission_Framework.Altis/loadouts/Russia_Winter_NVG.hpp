//Compatible with ACE Advanced Medical

tooltip = "Russia Winter w/ NVG by Cypher";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {"CUP_U_O_RUS_Ratnik_Winter"};
    vest[] = {};
    headgear[] = {};
    backpack[] = {};
    goggles[] = {"None", "CUP_G_RUS_Balaclava_Ratnik_winter_v2"};
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
    backpack[] = {"CUP_O_RUS_Patrol_bag_Winter"};
    headgear[] = {
        "CUP_H_RUS_6B47_v2_Winter",
        "CUP_H_RUS_6B47_v2_GogglesClosed_Winter",
        "CUP_H_RUS_6B47_v2_GogglesDown_Winter",
        "CUP_H_RUS_6B47_v2_GogglesUp_Winter"

    };
    vest[] = {
        "CUP_Vest_RUS_6B45_Sh117"
    };
    hmd[] =
    {
        "ACE_NVG_Gen4_Black"
    };
    primaryWeapon[] = {
        "rhs_weap_ak105_zenitco01"
    };
    secondaryWeapon[] = {};
    bipod[] = {
        "rhs_acc_grip_rk6"
    };
    scope[] = {};
    silencer[] = {"rhs_acc_dtk"};
    attachment[] = {
        "rhs_acc_perst1ik_ris"
    };
    sidearmWeapon[] = {};
    magazines[] = {
        LIST_7("rhs_30Rnd_545x39_7N10_AK"),
        LIST_3("rhs_30Rnd_545x39_AK_plum_green"),
        LIST_2("rhs_mag_rgo"),
        LIST_2("rhs_mag_rdg2_white")
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
        LIST_5("rhs_30Rnd_545x39_7N10_AK")
    };
};
class g : r
{
    displayName = "Grenadier";
    vest[] = {
        "CUP_Vest_RUS_6B45_Sh117_VOG"
    };
    sidearmWeapon[] = {"rhs_weap_M320"};
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
    magazines[] = {
        LIST_7("rhs_30Rnd_545x39_7N10_AK"),
        LIST_3("rhs_30Rnd_545x39_AK_plum_green"),
        LIST_2("rhs_mag_rdg2_white")
    };
    backpackItems[] = {
        LIST_20("ACE_fieldDressing"),
        LIST_20("ACE_elasticBandage"),
        LIST_20("ACE_quikclot"),
        LIST_10("ACE_bloodIV"),
        LIST_10("ACE_bloodIV_500"),
        LIST_5("ACE_bloodIV_250"),
        LIST_10("ACE_morphine"),
        LIST_10("ACE_epinephrine"),
        LIST_10("ACE_tourniquet"),
        LIST_10("ACE_Splint")
    };
};
class smg : r
{
    displayName = "SMG Base (Not for play)";
    uniform[] = {"UK3CB_CW_SOV_O_LATE_U_H_Pilot_Uniform_01_TTSKO"};
    vest[] = {
        "V_TacVest_oli"
    };
    primaryWeapon[] = {"CUP_smg_vityaz"};
    scope[] = {};
    attachment[] = {};
    bipod[] = {};
    backpack[] = {"B_FieldPack_oli"};
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
class ftl : g
{
    displayName = "Fireteam Leader";
    backpackItems[] +=
    {
      LIST_5("rhs_mag_M433_HEDP"),
      LIST_5("rhs_30Rnd_545x39_7N10_AK")
    };
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
    primaryWeapon[] = {"CUP_arifle_RPK74"};
    silencer[] = {"cup_muzzle_mfsup_flashhider_762x39_black"};
    attachment[] = {
        "rhs_acc_perst1ik_ris"
    };
    bipod[] = {};
    magazines[] =
    {
        LIST_2("rhs_75Rnd_762x39mm_tracer"),
        LIST_2("rhs_mag_9x19_17"),
        LIST_2("rhs_mag_rgo"),
        LIST_2("rhs_mag_rdg2_white")
    };
    backpackItems[] =
    {
        LIST_8("rhs_75Rnd_762x39mm_tracer")
    };
    sidearmWeapon[] = {"rhs_weap_pya"};
    sidearmAttachments[] = {};
};
class aar : r
{
    displayName = "Asst. Automatic Rifleman";
    backpackItems[] =
    {
        LIST_5("rhs_75Rnd_762x39mm_tracer")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class rat : r
{
    displayName = "Rifleman AT";
    backpackItems[] =
    {
        LIST_5("rhs_30Rnd_545x39_7N10_AK")
    };
    secondaryWeapon[] = {"rhs_weap_rpg26"};
    secondaryAttachments[] = {};
};
class lat : r
{
    displayName = "LAT";
    secondaryWeapon[] = {"rhs_weap_rpg7"};
    secondaryAttachments[] = {"rhs_acc_pgo7v2"};
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
    secondaryWeapon[] = {"launch_O_Vorona_brown_F"};
    magazines[] +=
    {
        LIST_2("Vorona_HEAT")
    };
    items[] += {"ACRE_PRC152"};
};
class hata : r
{
    displayName = "HAT Assistant";
    backpackItems[] =
    {
        LIST_3("Vorona_HEAT")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class hatam : r
{
    displayName = "HAT Ammo Man";
    backpackItems[] =
    {
        LIST_3("Vorona_HEAT")
    };
};
class mg : r
{
    displayName = "MMG Gunner";
    vest[] = {
        "CUP_Vest_RUS_6B45_Sh117_PKP"
    };
    primaryWeapon[] = {"rhs_weap_pkp"};
    attachment[] = {};
    bipod[] = {};
    magazines[] =
    {
        LIST_5("rhs_100Rnd_762x54mmR_green"),
        LIST_2("rhs_mag_9x19_17"),
        LIST_2("rhs_mag_rgo"),
        LIST_2("rhs_mag_rdg2_white")
    };
    items[] += {"ACRE_PRC152"};
    sidearmWeapon[] = {"rhs_weap_pya"};
    sidearmAttachments[] = {};
};
class mga : r
{
    displayName = "MMG Assistant";
    backpackItems[] =
    {
        LIST_4("rhs_100Rnd_762x54mmR_green")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mgam : r
{
    displayName = "MMG Ammo Man";
    backpackItems[] =
    {
        LIST_4("rhs_100Rnd_762x54mmR_green")
    };
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
