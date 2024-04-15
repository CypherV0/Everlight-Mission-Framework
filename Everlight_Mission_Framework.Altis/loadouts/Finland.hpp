//Compatible with ACE Advanced Medical

tooltip = "Finnish Infantry by Cypher";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {"MNP_CombatUniform_Finarctic_A", "MNP_CombatUniform_Finarctic_B"};
    vest[] = {};
    headgear[] = {};
    backpack[] = {};
    goggles[] = {"None", "rhs_googles_black", "rhsusf_oakley_goggles_blk", "rhsusf_shemagh2_gogg_white", "G_Spectacles", "UK3CB_G_Neck_Shemag"};
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
    backpack[] = {"MNP_B_RUW_FP"};
    headgear[] = {
        "MNP_Helmet_FIN_A"
    };
    vest[] = {
        "MNP_Vest_FIN_1", "MNP_Vest_FIN_2"
    };
    primaryWeapon[] = {
        "KAR_RIFLE_RK62M2"
    };
    secondaryWeapon[] = {};
    bipod[] = {};
    scope[] = {"rhs_acc_rakursPM", "rhs_acc_1p87", "rhs_acc_okp7_picatinny"};
    silencer[] = {"CUP_muzzle_mfsup_SCAR_H"};
    attachment[] = {
        "everlight_x2000_point"
    };
    sidearmWeapon[] = {};
    magazines[] = {
        LIST_7("rhs_30Rnd_762x39mm_polymer"),
        LIST_3("rhs_30Rnd_762x39mm_polymer_tracer"),
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
        LIST_5("rhs_30Rnd_762x39mm_polymer")
    };
};
class rat : r
{
    displayName = "Rifleman AT";
    backpackItems[] =
    {
        LIST_5("rhs_30Rnd_762x39mm_polymer")
    };
    secondaryWeapon[] = {"rhs_weap_m72a7"};
    secondaryAttachments[] = {};
};
class g : r
{
    displayName = "Grenadier";
    sidearmWeapon[] = {"rhs_weap_M320"};
    backpackItems[] = {
      LIST_10("rhs_mag_M433_HEDP"),
      LIST_5("1Rnd_Smoke_Grenade_shell")};
};
class m : r
{
    displayName = "Medic";
    code = "_this setUnitTrait [""Medic"", true];";
    insignias[] = {"MedB"};
    backpack[] = {"MNP_B_RUW_CA"};
    magazines[] = {
        LIST_7("rhs_30Rnd_762x39mm_polymer"),
        LIST_3("rhs_30Rnd_762x39mm_polymer_tracer"),
        LIST_2("rhs_mag_rdg2_white")
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
    backpack[] = {"CUP_O_RUS_Patrol_bag_Green"};
    primaryWeapon[] = {"CUP_lmg_PKM_top_rail_B50_vfg"};
    bipod[] = {};
    magazines[] =
    {
        LIST_2("rhs_100Rnd_762x54mmR"),
        LIST_2("rhs_mag_9x19_17"),
        LIST_2("rhs_mag_m67"),
        LIST_2("SmokeShell")
    };
    backpackItems[] =
    {
        LIST_4("rhs_100Rnd_762x54mmR")
    };
    sidearmWeapon[] = {"rhs_weap_pya"};
    sidearmAttachments[] = {};
};
class aar : r
{
    displayName = "Asst. Automatic Rifleman";
    backpack[] = {"CUP_O_RUS_Patrol_bag_Green"};
    backpackItems[] =
    {
        LIST_4("rhs_100Rnd_762x54mmR")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mat : r
{
    displayName = "MAT Gunner";
    backpack[] = {"MNP_B_RUW_CA"};
    secondaryWeapon[] = {"rhs_weap_rpg7"};
    secondaryAttachments[] = {"rhs_acc_pgo7v"};
    magazines[] += {"rhs_rpg7_PG7VS_mag"};
    items[] += {"ACRE_PRC152"};
    backpackItems[] =
    {
        LIST_4("rhs_rpg7_PG7VS_mag")
    };
};
class mata : r
{
    displayName = "MAT Assistant";
    backpack[] = {"MNP_B_RUW_CA"};
    backpackItems[] =
    {
        LIST_4("rhs_rpg7_PG7VS_mag")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class matam : r
{
    displayName = "MAT Ammo Man";
    backpack[] = {"MNP_B_RUW_CA"};
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
    backpack[] = {"MNP_B_RUW_CA"};
    backpackItems[] =
    {
        LIST_4("ace_compat_rhs_afrf3_mag_9m1331")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class hatam : r
{
    displayName = "HAT Ammo Man";
    backpack[] = {"MNP_B_RUW_CA"};
    backpackItems[] =
    {
        LIST_4("ace_compat_rhs_afrf3_mag_9m1331")
    };
};
class mg : r
{
    displayName = "MMG Gunner";
    backpack[] = {"MNP_B_RUW_CA"};
    primaryWeapon[] = {"UK3CB_MG3"};
    attachment[] = {};
    bipod[] = {};
    magazines[] =
    {
        LIST_2("UK3CB_MG3_250rnd_762x51_GT"),
        LIST_2("rhs_mag_9x19_17"),
        LIST_2("rhs_mag_m67"),
        LIST_2("SmokeShell")
    };
    items[] += {"ACRE_PRC152"};
    sidearmWeapon[] = {"rhs_weap_pya"};
    sidearmAttachments[] = {};
    backpackItems[] =
    {
        LIST_3("UK3CB_MG3_250rnd_762x51_GT")
    };
};
class mga : r
{
    displayName = "MMG Assistant";
    backpack[] = {"MNP_B_RUW_CA"};
    backpackItems[] =
    {
        LIST_3("UK3CB_MG3_250rnd_762x51_GT")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mgam : r
{
    displayName = "MMG Ammo Man";
    backpack[] = {"MNP_B_RUW_CA"};
    backpackItems[] =
    {
        LIST_3("UK3CB_MG3_250rnd_762x51_GT")
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
        "ACRE_PRC152",
        "ToolKit"
    };
    linkedItems[] += {"rhssaf_zrak_rd7j","ItemGPS"};
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
