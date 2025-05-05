//Compatible with ACE Advanced Medical

tooltip = "Chinese Infantry by Ferdilanz";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {"UK3CB_CSAT_G_O_U_SF_CombatUniform", "UK3CB_CSAT_G_O_U_SF_CombatUniform_shortsleeve", "UK3CB_CSAT_G_O_U_SF_JumperUniform"};
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
    goggles[] = {
        "None",
        "G_Aviator",
        "G_Bandanna_aviator",
        "G_Bandanna_khk",
        "CUP_G_TK_RoundGlasses_blk",
        "rhs_scarf",
        "UK3CB_G_Neck_Shemag_Oli",
        "UK3CB_G_Neck_Shemag_Tan",
        "UK3CB_G_Neck_Shemag",
        "dvk_tacg_shem_altcsat",
        "dvk_tacg_shem_w_altcsat",
        "G_Balaclava_blk"
    };
    backpack[] = {"MNP_B_FieldPack_PLA_Basic"};
    headgear[] = {"MNP_Helmet_China"};
    vest[] = {
        "MNP_Vest_ChinaH_T",
        "MNP_Vest_ChinaH_T2"
    };
    primaryWeapon[] = {
        "UK3CB_QBZ95"
    };
    secondaryWeapon[] = {};
    bipod[] = {};
    scope[] = {};
    silencer[] = {};
    attachment[] = {"Everlight_X2000_point"};
    sidearmWeapon[] = {};
    magazines[] = {
        LIST_7("UK3CB_DBP88_30rnd_580x42"),
        LIST_3("UK3CB_DBP88_30rnd_580x42_GT"),
        LIST_2("rhs_mag_rgo"),
        LIST_2("rhs_mag_rdg2_white")
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
        LIST_5("UK3CB_DBP88_30rnd_580x42")
    };
};
class rat : r
{
    displayName = "Rifleman AT";
    backpackItems[] = {};
    secondaryWeapon[] = {"rhs_weap_rpg26"};
    secondaryAttachments[] = {};
};
class mark : r
{
    displayName = "Platoon Marksman";
    primaryWeapon[] = {
        "UK3CB_QBU88"
    };
    scope[] = {"optic_dms"};
    sidearmWeapon[] = {"UK3CB_BHP"};
    magazines[] = {
        LIST_10("UK3CB_DBP88_10rnd_580x42_GT"),
        LIST_2("UK3CB_BHP_9_13Rnd"),
        LIST_2("rhs_mag_rgo"),
        LIST_2("rhs_mag_rdg2_white")
    };
};
class g : r
{
    displayName = "Grenadier";
    primaryWeapon[] = {
        "UK3CB_QBZ95_UGL"
    };
    sidearmWeapon[] = {};
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
    backpack[] = {
        "MNP_B_Carryall_PLA_Basic"
    };
    magazines[] = {
        LIST_7("UK3CB_DBP88_30rnd_580x42"),
        LIST_3("UK3CB_DBP88_30rnd_580x42_GT"),
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
    sidearmWeapon[] = {"UK3CB_BHP"};
    magazines[] +=
    {
        LIST_2("UK3CB_BHP_9_13Rnd")
    };
    backpackItems[] +=
    {
        LIST_5("1Rnd_SmokeYellow_Grenade_shell"),
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
    headgear[] = {
        "dvk_altcsat_beret"
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
    primaryWeapon[] = {"UK3CB_QBZ95_LSW"};
    bipod[] = {};
    magazines[] =
    {
        LIST_3("UK3CB_DBP88_100rnd_580x42_GT"),
        LIST_2("UK3CB_BHP_9_13Rnd"),
        LIST_2("rhs_mag_rgo"),
        LIST_2("rhs_mag_rdg2_white")
    };
    backpackItems[] =
    {
        LIST_7("UK3CB_DBP88_100rnd_580x42_GT")
    };
    sidearmWeapon[] = {"UK3CB_BHP"};
    sidearmAttachments[] = {};
};
class aar : r
{
    displayName = "Asst. Automatic Rifleman";
    backpackItems[] =
    {
        LIST_8("UK3CB_DBP88_100rnd_580x42_GT")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mat : r
{
    displayName = "MAT Gunner";
    secondaryWeapon[] = {"launch_RPG32_ghex_F"};
    magazines[] += {"RPG32_F"};
    items[] += {"ACRE_PRC152"};
    backpackItems[] =
    {
        LIST_4("RPG32_F")
    };
};
class mata : r
{
    displayName = "MAT Assistant";
    backpackItems[] =
    {
        LIST_4("RPG32_F")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class matam : r
{
    displayName = "MAT Ammo Man";
    backpackItems[] =
    {
        LIST_4("RPG32_F")
    };
};
class hat : r
{
    displayName = "HAT Gunner";
    secondaryWeapon[] = {"launch_B_Titan_short_tna_F"};
    backpack[] = {
        "MNP_B_Carryall_PLA_Basic"
    };
    backpackItems[] =
    {
        LIST_2("Titan_AT")
    };
    items[] += {"ACRE_PRC152"};
};
class hata : r
{
    displayName = "HAT Assistant";
    backpack[] = {
        "MNP_B_Carryall_PLA_Basic"
    };
    backpackItems[] =
    {
        LIST_3("Titan_AT")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class hatam : r
{
    displayName = "HAT Ammo Man";
    backpack[] = {
        "MNP_B_Carryall_PLA_Basic"
    };
    backpackItems[] =
    {
        LIST_3("Titan_AT")
    };
};

class smg : r
{
    displayName = "SMG Base (Not for play)";
    vest[] = {
        "V_TacVest_oli"
    };
    primaryWeapon[] = {"uk3cb_mat49m"};
    scope[] = {};
    attachment[] = {};
    bipod[] = {};
    backpackItems[] = {};
    sidearmWeapon[] = {"hgun_Pistol_Signal_F"};
    magazines[] =
    {
        LIST_5("UK3CB_MAT49_35Rnd_762x25_Magazine"),
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
        "UK3CB_H_Pilot_Helmet"
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
        "UK3CB_H_Pilot_Helmet"
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
    uniform[] = {"dvk_china_hpilot"};
    vest[] = {"V_Rangemaster_belt"};
    backpack[] = {"B_Parachute"};
    headgear[] = {"UK3CB_TKA_O_H_zsh7a_Des_alt"};
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
