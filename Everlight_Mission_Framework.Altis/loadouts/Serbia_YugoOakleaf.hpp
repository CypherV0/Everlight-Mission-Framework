//Compatible with ACE Advanced Medical

tooltip = "Serbian Yugoslavia by Ferdilanz";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {"rhssaf_uniform_m93_oakleaf", "rhssaf_uniform_m93_oakleaf_summer"};
    vest[] = {};
    headgear[] = {};
    backpack[] = {};
    goggles[] = {"G_Lowprofile", "rhsusf_oakley_goggles_blk", "rhsusf_shemagh_gogg_grn", "rhsusf_shemagh2_gogg_grn", "rhsusf_shemagh2_grn"};
    hmd[] =
    {
        // "UK3CB_ANPVS7"
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
    backpack[] = {"rhssaf_kitbag_md2camo"};
    headgear[] = {
        "rhssaf_helmet_m97_oakleaf",
        "rhssaf_helmet_m97_oakleaf_black_ess",
        "rhssaf_helmet_m97_oakleaf_black_ess_bare"
    };
    vest[] = {
        "UK3CB_TKA_B_V_GA_LITE_WDL"
    };
    primaryWeapon[] = {
        "rhs_weap_m70b3n"
    };
    secondaryWeapon[] = {};
    bipod[] = {};
    scope[] = {};
    silencer[] = {"rhsusf_acc_sfmb556"};
    attachment[] = {};
    sidearmWeapon[] = {};
    magazines[] = {
        LIST_7("rhssaf_30Rnd_762x39mm_M67"),
        LIST_3("rhssaf_30Rnd_762x39mm_M78_tracer"),
        LIST_2("rhssaf_mag_brd_m83_white"),
        LIST_2("rhssaf_mag_br_m75")
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
        LIST_5("rhssaf_30Rnd_762x39mm_M67")
    };
};
class rat : r
{
    displayName = "Rifleman AT";
    backpackItems[] +=
    {
        LIST_5("rhssaf_30Rnd_762x39mm_M67")
    };
    secondaryWeapon[] = {"rhs_weap_m80"};
    
};
class g : r
{
    displayName = "Grenadier";
    primaryWeapon[] = {
        "rhs_weap_m70b3n_pbg40"
    };
    backpackItems[] += {
      LIST_10("rhs_VOG25"),
      LIST_5("rhs_GRD40_White")};
};
class m : r
{
    displayName = "Medic";
    code = "_this setUnitTrait [""Medic"", true];";
    insignias[] = {"MedB"};
    backpack[] = {"rhssaf_kitbag_md2camo"};
    magazines[] += {};
    backpackItems[] += {
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
    vest[] = {
        "UK3CB_TKA_B_V_GA_HEAVY_WDL"
    };
    magazines[] += {"rhs_mag_762x25_8"};
    backpackItems[] +=
    {
        LIST_5("rhs_GRD40_Green"),
        LIST_5("rhs_GRD40_Red")
    };
    linkedItems[] =
    {
        "ItemMap",
        "ItemCompass",
        "ItemWatch",
        "rhssaf_zrak_rd7j"
    };
    sidearmWeapon[] = {"rhs_weap_tt33"};
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
    headgear[] = {"rhssaf_beret_green"};
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
    backpack[] = {
        "UK3CB_GAF_B_B_ENG_DIGI"
    };
    vest[] = {
        "UK3CB_TKA_B_V_GA_HEAVY_WDL"
    };
    primaryWeapon[] = {"CUP_arifle_RPK74"};
    attachment[] = {"everlight_x2000_point"};
    silencer[] = {};
    bipod[] = {};
    magazines[] =
    {
        LIST_3("rhs_mag_762x25_8"),
        "rhs_75Rnd_762x39mm_tracer",
        "rhssaf_mag_br_m75",
        "rhssaf_mag_brd_m83_white"
    };
    backpackItems[] =
    {
        LIST_8("rhs_75Rnd_762x39mm_tracer")
    };
    sidearmWeapon[] = {"rhs_weap_tt33"};
    sidearmAttachments[] = {};
};
class aar : r
{
    displayName = "Asst. Automatic Rifleman";
    backpack[] = {
        "UK3CB_GAF_B_B_ENG_DIGI"
    };
    primaryWeapon[] = {"rhs_weap_m70b3n"};
    backpackItems[] =
    {
        LIST_8("rhs_75Rnd_762x39mm_tracer")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mark : r
{
    displayName = "Platoon Marksman";
    vest[] = {"UK3CB_TKA_B_V_GA_HEAVY_WDL"};
    primaryWeapon[] = {
        "rhs_weap_m76"
    };
    scope[] = {"rhs_acc_pso1m2"};
    sidearmWeapon[] = {"rhs_weap_tt33"};
    magazines[] = {
        LIST_10("rhsgref_10Rnd_792x57_m76"),
        LIST_5("rhs_mag_762x25_8"),
        LIST_2("rhssaf_mag_brd_m83_white"),
        LIST_2("rhssaf_mag_br_m75")
    };
};
class mg : r
{
    displayName = "MMG Gunner";
    backpack[] = {
        "UK3CB_GAF_B_B_ENG_DIGI"
    };
    primaryWeapon[] = {"rhs_weap_mg42"};
    scope[] = {"sma_eotech552"};
    vest[] = {
        "UK3CB_TKA_B_V_GA_HEAVY_WDL"
    };
    bipod[] = {};
    magazines[] =
    {
        LIST_2("rhs_mag_762x25_8"),
        "rhssaf_mag_brd_m83_white",
        "rhssaf_mag_br_m75",
        "rhsgref_296Rnd_792x57_SmK_alltracers_belt"
    };
    items[] += {"ACRE_PRC152"};
    sidearmWeapon[] = {"rhs_weap_tt33"};
    sidearmAttachments[] = {};
    backpackItems[] = {
        LIST_2("rhsgref_296Rnd_792x57_SmK_alltracers_belt")
    };
};
class mga : r
{
    displayName = "MMG Assistant";
    backpack[] = {
        "UK3CB_GAF_B_B_ENG_DIGI"
    };
    primaryWeapon[] = {"rhs_weap_m92"};
    backpackItems[] =
    {
        LIST_2("rhsgref_296Rnd_792x57_SmK_alltracers_belt")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mgam : r
{
    displayName = "MMG Ammo Man";
    backpack[] = {
        "UK3CB_GAF_B_B_ENG_DIGI"
    };
    primaryWeapon[] = {"rhs_weap_m92"};
    backpackItems[] =
    {
        LIST_2("rhsgref_296Rnd_792x57_SmK_alltracers_belt")
    };
};
class mat : r
{
    displayName = "MAT Gunner";
    primaryWeapon[] = {"rhs_weap_m92"};
    secondaryWeapon[] = {"rhs_weap_maaws"};
    secondaryAttachments[] = {};
    backpack[] = {
        "UK3CB_GAF_B_B_ENG_DIGI"
    };
    magazines[] += {"rhs_mag_maaws_HEAT"};
    items[] += {"ACRE_PRC152"};
    backpackItems[] = 
    {
        LIST_2("rhs_mag_maaws_HEDP"),
        "rhs_mag_maaws_HEAT"
    };
};
class mata : r
{
    displayName = "MAT Assistant";
    primaryWeapon[] = {"rhs_weap_m92"};
    backpack[] = {
        "UK3CB_GAF_B_B_ENG_DIGI"
    };
    backpackItems[] =
    {
        LIST_2("rhs_mag_maaws_HEAT"),
        "rhs_mag_maaws_HEDP"
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class matam : r
{
    displayName = "MAT Ammo Man";
    primaryWeapon[] = {"rhs_weap_m92"};
    backpack[] = {
        "UK3CB_GAF_B_B_ENG_DIGI"
    };
    backpackItems[] =
    {
        LIST_2("rhs_mag_maaws_HEAT"),
        "rhs_mag_maaws_HEDP"
    };
};
class hat : r
{
    displayName = "HAT Gunner";
    backpack[] = {};
    primaryWeapon[] = {"rhs_weap_m92"};
    magazines[] = {
        LIST_4("rhssaf_30Rnd_762x39mm_M67"),
        LIST_3("rhssaf_30Rnd_762x39mm_M78_tracer"),
        "rhssaf_mag_brd_m83_white",
        "rhssaf_mag_br_m75"
    };
    secondaryWeapon[] = {"ace_compat_rhs_afrf3_kornet_carry"};
    items[] += {"ACRE_PRC152"};
};
class hata : r
{
    displayName = "HAT Assistant";
    backpack[] = {
        "UK3CB_GAF_B_B_ENG_DIGI"
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
        "UK3CB_GAF_B_B_ENG_DIGI"
    };
    backpackItems[] =
    {
        LIST_4("ace_compat_rhs_afrf3_mag_9m1331")
    };
};
class smg : r
{
    displayName = "SMG Base (Not for play)";
    vest[] = {
        "V_TacVest_oli"
    };
    primaryWeapon[] = {"rhs_weap_m92"};
    scope[] = {};
    attachment[] = {};
    bipod[] = {};
    backpackItems[] = {};
    sidearmWeapon[] = {"hgun_Pistol_Signal_F"};
    magazines[] =
    {
        LIST_3("rhssaf_30Rnd_762x39mm_M67"),
        "6Rnd_RedSignal_F",
        "rhssaf_mag_brd_m83_red",
        "ACE_HandFlare_Red",
        LIST_2("rhssaf_mag_brd_m83_white")
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
        "ACRE_PRC152"
    };
    backpackItems[] = {"ToolKit"};
    linkedItems[] += {"rhssaf_zrak_rd7j","ItemGPS"};
};
class vcrewco : smg
{
    displayName = "Vehicle Commander";
    headgear[] = {
        "rhs_tsh4_bala", "rhs_tsh4_ess", "rhs_tsh4_ess_bala"
    };
    items[] += {
        LIST_2("ACRE_PRC152")
    };
    backpackItems[] = {"ToolKit"};
    linkedItems[] += {"rhssaf_zrak_rd7j","ItemGPS"};
};
class hp : smg
{
    displayName = "Helicopter Pilot";
    uniform[] = {"rhssaf_uniform_heli_pilot"};
    headgear[] = {
        "rhsusf_hgu56p",
        "rhsusf_hgu56p_visor"
    };
    hmd[] = {"ACE_NVG_Wide_Black"};
    goggles[] = {"default"};
    items[] += {
        LIST_2("ACRE_PRC152")
    };
    backpackItems[] = {"ToolKit"};
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
        "evlt_medical_advancedAid"
    };
    backpackItems[] = {"ToolKit"};
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class jp : baseMan
{
    displayName = "Fixed-Wing Pilot";
    uniform[] = {"rhssaf_uniform_mig29_pilot"};
    vest[] = {"V_Rangemaster_belt"};
    backpack[] = {"B_Parachute"};
    headgear[] = {"H_PilotHelmetFighter_I"};
    goggles[] = {"default"};
    sidearmWeapon[] = {"rhs_weap_tt33"};
    magazines[] =
    {
        LIST_2("rhs_mag_762x25_8")
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
        "rhssaf_mag_brd_m83_red",
        "6Rnd_RedSignal_F"
    };
    linkedItems[] = {"ItemMap","ItemGPS","ItemCompass","ItemWatch","rhssaf_zrak_rd7j"};
};
