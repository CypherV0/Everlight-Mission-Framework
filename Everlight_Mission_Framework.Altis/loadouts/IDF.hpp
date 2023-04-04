//Compatible with ACE Advanced Medical

tooltip = "Israeli Defense Force by Cypher";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {"MNP_CombatUniform_ISR"};
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
    faces[] = {};
};
class r : baseMan
{
    displayName = "Rifleman";
    backpack[] = {"B_Kitbag_rgr"};
    headgear[] = {
        "usm_helmet_pasgt_ceswd_odg",
        "usm_helmet_pasgt_ce_odg"

    };
    vest[] = {
        "MNP_Vest_ISRKahki_2",
        "MNP_Vest_ISRKahki_1"
    };
    primaryWeapon[] = {
        "SMA_TavorBLK_F",
    };
    secondaryWeapon[] = {};
    bipod[] = {
        "rhsusf_acc_kac_grip",
    };
    scope[] = {"sma_eotech552", "sma_eotech", "rhsusf_acc_compm4" };
    silencer[] = {};
    attachment[] = {
        "everlight_x2000_point"
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
        "evlt_medical_advancedAid",
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
class rat : r
{
    displayName = "Rifleman AT";
    backpackItems[] =
    {
        LIST_5("rhs_mag_30Rnd_556x45_M855A1_Stanag")
    };
    secondaryWeapon[] = {"rhs_weap_M136"};
    secondaryAttachments[] = {"rhs_acc_at4_handler"};
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
    code = "_this setUnitTrait [""Medic"", true]; onMapSingleClick {_shift};";
    insignias[] = {"MedB"};
    magazines[] = {
        LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
        LIST_3("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
        LIST_2("SmokeShell")
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
    sidearmWeapon[] = {"rhs_weap_M320"};
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
    primaryWeapon[] = {"rhs_weap_m249_pip_S_para"};
    bipod[] = {"rhsusf_acc_grip4_bipod"};
    magazines[] =
    {
        LIST_3("rhsusf_200rnd_556x45_mixed_box"),
        LIST_2("hlc_12Rnd_357SIG_B_P226"),
        LIST_2("rhs_mag_m67"),
        LIST_2("SmokeShell")
    };
    backpackItems[] =
    {
        LIST_2("rhsusf_200rnd_556x45_mixed_box")
    };
    sidearmWeapon[] = {"hlc_pistol_P226R_357Combat"};
    sidearmAttachments[] = {"hlc_optic_siglite"};
};
class aar : r
{
    displayName = "Asst. Automatic Rifleman";
    backpackItems[] =
    {
        LIST_5("rhsusf_200rnd_556x45_mixed_box")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class hat : r
{
    displayName = "HAT Gunner";
    secondaryWeapon[] = {"rhs_weap_fgm148"};
    magazines[] += {"rhs_fgm148_magazine_AT"};
    items[] += {"ACRE_PRC152"};
};
class hata : r
{
    displayName = "HAT Assistant";
    backpack[] = {"B_Carryall_oli"};
    backpackItems[] =
    {
        "rhs_fgm148_magazine_AT"
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class hatam : r
{
    displayName = "HAT Ammo Man";
    backpack[] = {"B_Carryall_oli"};
    backpackItems[] =
    {
        "rhs_fgm148_magazine_AT"
    };
};
class mg : r
{
    displayName = "MMG Gunner";
    primaryWeapon[] = {"rhs_weap_m240B"};
    attachment[] = {"everlight_x2000_point"};
    bipod[] = {};
    magazines[] =
    {
        LIST_4("rhsusf_100Rnd_762x51_m62_tracer"),
        LIST_2("hlc_12Rnd_357SIG_B_P226"),
        LIST_2("rhs_mag_m67"),
        LIST_2("SmokeShell")
    };
    items[] += {"ACRE_PRC152"};
    sidearmWeapon[] = {"hlc_pistol_P226R_357Combat"};
    sidearmAttachments[] = {"hlc_optic_siglite"};
};
class mga : r
{
    displayName = "MMG Assistant";
    backpackItems[] =
    {
        LIST_7("rhsusf_100Rnd_762x51_m62_tracer")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class mgam : r
{
    displayName = "MMG Ammo Man";
    backpackItems[] =
    {
        LIST_7("rhsusf_100Rnd_762x51_m62_tracer")
    };
};
class mat : r
{
    displayName = "MAT Gunner";
    secondaryWeapon[] = {"launch_MRAWS_green_rail_F"};
    secondaryAttachments[] = {};
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
        "evlt_medical_advancedAid",
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
        "evlt_medical_advancedAid",
        "hgun_Pistol_Signal_F",
        "ACE_HandFlare_Red",
        "rhs_mag_m18_red",
        "6Rnd_RedSignal_F"
    };
    linkedItems[] = {"ItemMap","ItemGPS","ItemCompass","ItemWatch","rhssaf_zrak_rd7j"};
};
