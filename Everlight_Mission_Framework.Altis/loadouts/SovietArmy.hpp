//Compatible with ACE Advanced Medical

tooltip = "Soviet Army by Cypher";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {"rhs_uniform_flora_patchless"};
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
    goggles[] = {"None", "G_Bandanna_tan", "G_Bandanna_khk"};
    backpack[] = {"rhs_rd54_vest"};
    headgear[] = {
        "rhs_ssh68_2"
    };
    vest[] = {
        "rhs_6b3_AK",
        "rhs_6b3_AK_2",
        "rhs_6b3_AK_3"
    };
    primaryWeapon[] = {
        "rhs_weap_ak74"
    };
    secondaryWeapon[] = {};
    bipod[] = {};
    scope[] = {};
    silencer[] = {};
    attachment[] = {};
    sidearmWeapon[] = {};
    magazines[] = {
        LIST_10("rhs_30Rnd_545x39_AK_plum_green"),
        LIST_2("rhs_mag_rgo"),
        LIST_2("rhs_mag_rdg2_white")
    };
    items[] = {
        LIST_10("ACE_fieldDressing"),
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
        LIST_5("rhs_30Rnd_545x39_AK_plum_green")
    };
};
class rat : r
{
    displayName = "Rifleman AT";
    backpackItems[] =
    {
        LIST_5("rhs_30Rnd_545x39_AK_plum_green")
    };
    secondaryWeapon[] = {"rhs_weap_rpg26"};
    secondaryAttachments[] = {};
};
class g : r
{
    displayName = "Grenadier";
    vest[] = {
        "rhs_6b3_VOG",
        "rhs_6b3_VOG_2"
    };
    primaryWeapon[] = {
        "rhs_weap_ak74_gp25"
    };
    sidearmWeapon[] = {};
    backpackItems[] = {
      LIST_10("rhs_VOG25"),
      LIST_5("rhs_GRD40_White")};
    secondaryWeapon[] = {};
};
class m : r
{
    displayName = "Medic";
    code = "_this setUnitTrait [""Medic"", true];";
    insignias[] = {"MedB"};
    backpack[] = {
        "UK3CB_KDF_B_B_Sidor_MD_OLI"
    };
    magazines[] = {
        LIST_10("rhs_30Rnd_545x39_AK_plum_green"),
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
    sidearmWeapon[] = {"rhs_weap_pya"};
    backpackItems[] +=
    {
        LIST_5("rhs_GRD40_Green"),
        LIST_5("rhs_GRD40_Red"),
        LIST_5("rhs_VG40OP_white")
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
    vest[] = {
        "rhs_6b3_off"
    };
    items[] += {"ACRE_PRC152"};
};
class ps : pl
{
    displayName = "Platoon Sergeant";
    vest[] = {
        "rhs_6b3_off"
    };
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
        "rhs_6b3_RPK"
    };
    primaryWeapon[] = {"UK3CB_RPK"};
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
class mat : r
{
    displayName = "MAT Gunner";
    secondaryWeapon[] = {"rhs_weap_rpg7"};
    secondaryAttachments[] = {};
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
    backpackItems[] =
    {
        LIST_4("rhs_rpg7_PG7VS_mag")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class matam : r
{
    displayName = "MAT Ammo Man";
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
    backpackItems[] =
    {
        LIST_4("ace_compat_rhs_afrf3_mag_9m1331")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class hatam : r
{
    displayName = "HAT Ammo Man";
    backpackItems[] =
    {
        LIST_4("ace_compat_rhs_afrf3_mag_9m1331")
    };
};
class mg : r
{
    displayName = "MMG Gunner";
    vest[] = {
        "rhs_6b3_RPK"
    };
    backpack[] = {
        "UK3CB_B_Largepack_Des"
    };
    primaryWeapon[] = {"rhs_weap_pkm"};
    attachment[] = {};
    bipod[] = {};
    magazines[] =
    {
        LIST_6("rhs_100Rnd_762x54mmR_green"),
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
    backpack[] = {
        "UK3CB_B_Largepack_Des"
    };
    backpackItems[] =
    {
        LIST_4("rhs_100Rnd_762x54mmR_green")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mgam : r
{
    displayName = "MMG Ammo Man";
    backpack[] = {
        "UK3CB_B_Largepack_Des"
    };
    backpackItems[] =
    {
        LIST_4("rhs_100Rnd_762x54mmR_green")
    };
};
class smg : r
{
    displayName = "SMG Base (Not for play)";
    vest[] = {
        "V_TacVest_oli"
    };
    primaryWeapon[] = {"CUP_smg_vityaz"};
    scope[] = {};
    attachment[] = {};
    bipod[] = {};
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
    linkedItems[] += {"rhssaf_zrak_rd7j", "ItemGPS"};
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
    linkedItems[] += {"rhssaf_zrak_rd7j", "ItemGPS"};
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
        LIST_10("ACE_fieldDressing"),
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
    headgear[] = {"UK3CB_TKA_O_H_zsh7a_Des_alt"};
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
        "evlt_medical_advancedAid",
        "hgun_Pistol_Signal_F",
        "ACE_HandFlare_Red",
        "rhs_mag_m18_red",
        "6Rnd_RedSignal_F"
    };
    linkedItems[] = {"ItemMap","ItemGPS","ItemCompass","ItemWatch","rhssaf_zrak_rd7j"};
};
