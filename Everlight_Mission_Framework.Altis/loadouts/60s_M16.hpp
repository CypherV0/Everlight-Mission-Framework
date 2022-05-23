//Compatible with ACE Advanced Medical

tooltip = "60s w/ M16 by Cypher";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {"usm_bdu_odg", "usm_bdu_btisrl_odg", "usm_bdu_bti_odg", "usm_bdu_srh_odg", "usm_bdu_srl_odg"};
    vest[] = {};
    headgear[] = {};
    backpack[] = {};
    goggles[] = {"G_Aviator", "G_Spectacles", "None", "CUP_G_TK_RoundGlasses_blk"};
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
    faces[] = {"faceset:american"};
};
class r : baseMan
{
    displayName = "Rifleman";
    backpack[] = {"CUP_B_AlicePack_Khaki"};
    headgear[] = {
        "CUP_H_USArmy_Helmet_M1_Olive",
        "CUP_H_USArmy_Helmet_M1_plain_Olive",
        "CUP_H_USArmy_Helmet_M1_Vine",
        "CUP_H_USArmy_Helmet_M1_plain_Vine"
    };
    vest[] = {
        "usm_vest_lbe_rm",
        "usm_vest_lbe_rm2",
        "usm_vest_lbe_rmp"
    };
    primaryWeapon[] = {
        "CUP_arifle_M16A1"
    };
    secondaryWeapon[] = {};
    bipod[] = {};
    scope[] = {};
    silencer[] = {};
    attachment[] = {"acc_flashlight"};
    sidearmWeapon[] = {};
    magazines[] = {
        LIST_10("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
        LIST_2("rhs_mag_m67"),
        LIST_2("SmokeShell")
    };
    items[] = {
        LIST_10("ACE_fieldDressing"),
        LIST_2("ACE_morphine"),
        LIST_2("ACE_tourniquet"),
        "ACE_personalAidKit"
    };
};
class rm : r
{
    displayName = "Rifleman (Extra Ammo)";
    magazines[] += {
        LIST_5("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red")
    };
};
class g : r
{
    displayName = "Grenadier";
    vest[] = {
        "usm_vest_lbe_gr"
    };
    primaryWeapon[] = {
        "CUP_arifle_M16A1"
    };
    backpack[] = {"CUP_B_AlicePack_Khaki"};
    backpackItems[] = {
      LIST_10("rhs_mag_M433_HEDP"),
      LIST_5("1Rnd_Smoke_Grenade_shell"),
      "rhs_weap_m79"};
    sidearmWeapon[] = {};
};
class m : r
{
    displayName = "Medic";
    code = "_this setUnitTrait [""Medic"", true]; onMapSingleClick {_shift};";
    insignias[] = {"MedB"};
    magazines[] = {
        LIST_10("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
        LIST_2("SmokeShell"),
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
    backpack[] = {"usm_pack_m5_medic"};
};
class smg : r
{
    displayName = "SMG Base (Not for play)";
    vest[] = {
        "V_TacVest_oli"
    };
    primaryWeapon[] = {"CUP_smg_M3A1"};
    scope[] = {};
    attachment[] = {};
    bipod[] = {};
    backpackItems[] = {};
    sidearmWeapon[] = {"hgun_Pistol_Signal_F"};
    magazines[] =
    {
        LIST_3("CUP_30Rnd_45ACP_M3A1_M"),
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
    vest[] = {
        "usm_vest_lbe_rmpr"
    };
    magazines[] +=
    {
        LIST_2("rhsusf_mag_7x45acp_MHP")
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
    sidearmWeapon[] = {"rhsusf_weap_m1911a1"};
    sidearmAttachments[] = {};
};
class sl : ftl
{
    displayName = "Squad Leader";
    backpack[] = {"usm_pack_st128_prc77"};
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
    vest[] = {
        "usm_vest_lbe_mg"
    };
    primaryWeapon[] = {"UK3CB_M60"};
    bipod[] = {};
    backpack[] = {"CUP_B_AlicePack_Khaki"};
    magazines[] =
    {
        LIST_6("rhsusf_100Rnd_762x51_m62_tracer"),
        LIST_2("rhsusf_mag_7x45acp_MHP"),
        "rhs_mag_m67",
        "SmokeShell"
    };
    sidearmWeapon[] = {"rhsusf_weap_m1911a1"};
    sidearmAttachments[] = {};
};
class aar : r
{
    displayName = "Asst. Automatic Rifleman";
    backpack[] = {"usm_pack_alice"};
    backpackItems[] =
    {
        LIST_8("rhsusf_100Rnd_762x51_m62_tracer")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class rat : r
{
    displayName = "Rifleman AT";
    backpackItems[] =
    {
        LIST_5("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red")
    };
    secondaryWeapon[] = {"CUP_launch_M72A6_Special"};
    secondaryAttachments[] = {};
};
class mat : r
{
    displayName = "MAT Gunner";
    secondaryWeapon[] = {"rhs_weap_maaws"};
    secondaryAttachments[] = {"rhs_optic_maaws"};
    magazines[] += {"MRAWS_HEAT_F"};
    items[] += {"ACRE_PRC152"};
    backpackItems[] = {"MRAWS_HEAT_F"};
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
