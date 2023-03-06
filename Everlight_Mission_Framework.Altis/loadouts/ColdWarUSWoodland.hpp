//Compatible with ACE Advanced Medical

tooltip = "Cold War US Woodland by Cypher";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {"usm_bdu_btisrl_wdl2", "usm_bdu_bti_wdl2", "usm_bdu_srh_wdl2"};
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
    code = "onMapSingleClick {_shift};";

    // These are acre item radios that will be added during the ACRE init. ACRE radios added via any other system will be erased.
    radios[] = {};

    insignias[] = {};
    faces[] = {"faceset:american"};
};
class r : baseMan
{
    displayName = "Rifleman";
    backpack[] = {};
    headgear[] = {
        "usm_helmet_pasgt_ce_wdl",
        "usm_helmet_pasgt_ceswd_wdl"

    };
    vest[] = {
        "usm_vest_pasgt_lbe_rm",
        "usm_vest_pasgt_lbe_rm2",
        "usm_vest_pasgt_lbe_rmp"
    };
    primaryWeapon[] = {
        "CUP_arifle_M16A2"
    };
    secondaryWeapon[] = {};
    bipod[] = {};
    scope[] = {};
    silencer[] = {};
    attachment[] = {};
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
        "ACE_epinephrine",
        "ACE_personalAidKit",
        "ACRE_PRC343"
    };
};
class rm : r
{
    displayName = "Rifleman (Extra Ammo)";
    magazines[] += {
        LIST_5("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red")
    };
};
class rat : r
{
    displayName = "Rifleman AT";
    backpackItems[] =
    {
        LIST_5("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red")
    };
    secondaryWeapon[] = {"rhs_weap_m72a7"};
    secondaryAttachments[] = {};
};
class g : r
{
    displayName = "Grenadier";
    vest[] = {
        "usm_vest_pasgt_lbe_gr"
    };
    primaryWeapon[] = {
        "CUP_arifle_M16A2_GL"
    };
    backpack[] = {"CUP_B_AlicePack_Khaki"};
    backpackItems[] = {
      LIST_10("rhs_mag_M433_HEDP"),
      LIST_5("1Rnd_Smoke_Grenade_shell")};
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
        LIST_20("ACE_fieldDressing"),
        LIST_20("ACE_fieldDressing"),
        LIST_10("ACE_personalAidKit"),
        LIST_10("ACE_morphine"),
        LIST_20("ACE_epinephrine"),
        LIST_20("ACE_tourniquet")
    };
    backpack[] = {"usm_pack_m5_medic"};
};
class ftl : g
{
    displayName = "Fireteam Leader";
    vest[] = {
        "usm_vest_pasgt_lbe_rmpr"
    };
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
    headgear[] = {"usm_bdu_8point_wdl"};
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
        "usm_vest_pasgt_lbe_mg"
    };
    primaryWeapon[] = {"UK3CB_M60"};
    bipod[] = {};
    backpack[] = {"CUP_B_AlicePack_Khaki"};
    magazines[] =
    {
        LIST_6("rhsusf_100Rnd_762x51_m62_tracer"),
        LIST_2("rhsusf_mag_15Rnd_9x19_JHP"),
        "rhs_mag_m67",
        "SmokeShell"
    };
    sidearmWeapon[] = {"rhsusf_weap_m9"};
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
class hat : r
{
    displayName = "HAT Gunner";
    secondaryWeapon[] = {"ace_compat_rhs_usf3_tow_carry"};
    items[] += {"ACRE_PRC152"};
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class hata : r
{
    displayName = "HAT Assistant";
    secondaryWeapon[] = {"ace_csw_m220CarryTripod"};
    backpackItems[] =
    {
        "ace_compat_rhs_usf3_mag_TOW2A"
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class hatam : r
{
    displayName = "HAT Ammo Man";
    backpackItems[] =
    {
        "ace_compat_rhs_usf3_mag_TOW2A"
    };
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
        "ACE_epinephrine",
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
        "ACE_epinephrine",
        "ACE_microDAGR",
        "ACE_personalAidKit",
        "hgun_Pistol_Signal_F",
        "ACE_HandFlare_Red",
        "rhs_mag_m18_red",
        "6Rnd_RedSignal_F"
    };
    linkedItems[] = {"ItemMap","ItemGPS","ItemCompass","ItemWatch","rhssaf_zrak_rd7j"};
};
