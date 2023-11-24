//Compatible with ACE Advanced Medical

tooltip = "Chedaki by Cypher and Ferdilanz";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {"UK3CB_CHD_O_U_CombatUniform_02", "UK3CB_CHD_O_U_CombatUniform_03", "UK3CB_CHD_O_U_CombatUniform_01", "UK3CB_CHD_O_U_CombatUniform_07", "UK3CB_CHD_O_U_H_Pilot_Uniform_03"};
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
    backpack[] = {"B_FieldPack_khk"};
    headgear[] = {
        "H_Booniehat_oli",
        "UK3CB_H_Woolhat_KHK",
        "UK3CB_H_Woolhat_GRN",
        "rhsgref_hat_m1941cap"
    };
    vest[] = {
        "rhs_chicom_khk"
    };
    primaryWeapon[] = {
        "rhs_weap_ak74n"
    };
    secondaryWeapon[] = {};
    bipod[] = {};
    scope[] = {};
    silencer[] = {};
    attachment[] = {};
    sidearmWeapon[] = {};
    magazines[] = {
        LIST_7("rhs_30Rnd_545x39_7N10_plum_AK"),
        LIST_3("rhs_30Rnd_545x39_AK_plum_green"),
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
        LIST_5("rhs_30Rnd_545x39_7N10_plum_AK")
    };
};
class rat : r
{
    displayName = "Rifleman AT";
    backpackItems[] =
    {
        LIST_5("rhs_30Rnd_545x39_7N10_plum_AK")
    };
    secondaryWeapon[] = {"rhs_weap_rpg26"};
    secondaryAttachments[] = {};
};
class mark : r
{
    displayName = "Platoon Marksman";
    primaryWeapon[] = {
        "rhs_weap_m76"
    };
    scope[] = {"hlc_optic_pso1"};
    sidearmWeapon[] = {"rhs_weap_pya"};
    magazines[] = {
        LIST_10("rhssaf_10Rnd_792x57_m76_tracer"),
        LIST_5("rhs_mag_9x19_17"),
        LIST_2("rhs_mag_rgo"),
        LIST_2("rhs_mag_rdg2_white")
    };
};
class g : r
{
    displayName = "Grenadier";
    primaryWeapon[] = {
        "rhs_weap_ak74n_gp25"
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
    vest[] = {
        "rhs_6b2_chicom"
    };
    backpack[] = {
        "UK3CB_KDF_B_B_Sidor_MD_OLI"
    };
    magazines[] = {
        LIST_7("rhs_30Rnd_545x39_7N10_plum_AK"),
        LIST_3("rhs_30Rnd_545x39_AK_plum_green"),
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
    magazines[] +=
    {
        LIST_2("rhs_mag_9x19_17")
    };
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
    headgear[] = {
        "UK3CB_H_Civ_Beret"
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
    displayName = "Automatic Rifleman (RPK)";
    primaryWeapon[] = {"rhs_weap_rpk74m"};
    bipod[] = {};
    magazines[] =
    {
        LIST_3("rhs_60Rnd_545X39_AK_Green"),
        LIST_2("rhs_mag_9x19_17"),
        LIST_2("rhs_mag_rgo"),
        LIST_2("rhs_mag_rdg2_white")
    };
    backpackItems[] =
    {
        LIST_7("rhs_60Rnd_545X39_AK_Green")
    };
    sidearmWeapon[] = {"rhs_weap_pya"};
    sidearmAttachments[] = {};
};
class aar : r
{
    displayName = "Asst. Automatic Rifleman (RPK)";
    backpackItems[] =
    {
        LIST_8("rhs_60Rnd_545X39_AK_Green")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mat : r
{
    displayName = "MAT Gunner";
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
    backpack[] = {
        "B_Carryall_oli"
    };
    backpackItems[] =
    {
        LIST_4("ace_compat_rhs_afrf3_mag_9m1331")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class hatam : r
{
    displayName = "HAT Ammo Man";
    backpack[] = {
        "B_Carryall_oli"
    };
    backpackItems[] =
    {
        LIST_4("ace_compat_rhs_afrf3_mag_9m1331")
    };
};
class mg : r
{
    displayName = "MMG Gunner";
    backpack[] = {
        "B_Carryall_oli"
    };
    primaryWeapon[] = {"rhs_weap_pkm"};
    attachment[] = {};
    bipod[] = {};
    magazines[] =
    {
        LIST_2("rhs_100Rnd_762x54mmR_green"),
        LIST_2("rhs_mag_9x19_17"),
        "rhs_mag_rgo",
        "rhs_mag_rdg2_white"
    };
    backpackItems[] =
    {
        LIST_4("rhs_100Rnd_762x54mmR_green")
    };
    items[] += {"ACRE_PRC152"};
    sidearmWeapon[] = {"rhs_weap_pya"};
    sidearmAttachments[] = {};
};
class mga : r
{
    displayName = "MMG Assistant";
    backpack[] = {
        "B_Carryall_oli"
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
        "B_Carryall_oli"
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
    primaryWeapon[] = {"rhs_weap_aks74u"};
    scope[] = {};
    attachment[] = {};
    bipod[] = {};
    backpackItems[] = {};
    sidearmWeapon[] = {"hgun_Pistol_Signal_F"};
    magazines[] =
    {
        LIST_3("rhs_30Rnd_545x39_7N10_plum_AK"),
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
