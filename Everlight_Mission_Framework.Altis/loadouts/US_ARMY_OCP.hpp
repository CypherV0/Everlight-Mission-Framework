//Compatible with ACE Advanced Medical

tooltip = "US ARMY OCP by Cypher";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {"rhs_uniform_cu_ocp"};
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
    backpack[] = {"rhsusf_assault_eagleaiii_ocp"};
    headgear[] = {
        "rhsusf_ach_helmet_ocp",
        "rhsusf_ach_helmet_ocp_alt",
        "rhsusf_ach_helmet_ESS_ocp",
        "rhsusf_ach_helmet_ESS_ocp_alt",
        "rhsusf_ach_helmet_headset_ocp",
        "rhsusf_ach_helmet_headset_ocp_alt",
        "rhsusf_ach_helmet_headset_ess_ocp",
        "rhsusf_ach_helmet_headset_ess_ocp_alt"

    };
    vest[] = {
        "rhsusf_iotv_ocp_Rifleman"
    };
    primaryWeapon[] = {
        "rhs_weap_m4a1_carryhandle",
    };
    secondaryWeapon[] = {};
    bipod[] = {"rhsusf_acc_kac_grip"};
    scope[] = {"rhsusf_acc_compm4"};
    silencer[] = {};
    attachment[] = {"acc_flashlight"};
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
        "ACE_epinephrine",
        "ACE_personalAidKit",
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
    vest[] = {
        "rhsusf_iotv_ocp_Grenadier"
    };
    primaryWeapon[] = {
        "rhs_weap_m4a1_carryhandle_m203S",
    };
    bipod[] = {};
    scope[] = {"rhsusf_acc_compm4"};
    silencer[] = {};
    attachment[] = {"acc_flashlight"};
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
        LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
        LIST_3("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
        LIST_2("SmokeShell")
    };
    backpackItems[] = {
      LIST_20("ACE_fieldDressing"),
      LIST_20("ACE_fieldDressing"),
      LIST_20("ACE_fieldDressing"),
      LIST_10("ACE_personalAidKit"),
      LIST_10("ACE_morphine"),
      LIST_20("ACE_epinephrine"),
      LIST_20("ACE_tourniquet")
    };
    backpack[] = {"rhsusf_assault_eagleaiii_ocp"};
};
class ftl : g
{
    displayName = "Fireteam Leader";
    vest[] = {
        "rhsusf_iotv_ocp_Grenadier"
    };
    magazines[] +=
    {
        LIST_2("hlc_12Rnd_357SIG_B_P226")
    };
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
    sidearmWeapon[] = {"hlc_pistol_P226R_357Combat"};
    sidearmAttachments[] = {"hlc_optic_siglite"};
};
class sl : ftl
{
    displayName = "Squad Leader";
    vest[] = {
        "rhsusf_iotv_ocp_Squadleader"
    };
    items[] += {"ACRE_PRC152"};
};
class pl : sl
{
    displayName = "Platoon Commander";
    vest[] = {
        "rhsusf_iotv_ocp_Teamleader"
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
    vest[] = {
        "rhsusf_iotv_ocp_SAW"
    };
    primaryWeapon[] = {"rhs_weap_m249_pip_ris"};
    bipod[] = {};
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
        LIST_4("rhsusf_200rnd_556x45_mixed_box")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class hat : r
{
    displayName = "HAT Gunner";
    vest[] = {
        "rhsusf_iotv_ocp_Teamleader"
    };
    backpack[] = {"B_Carryall_cbr"};
    secondaryWeapon[] = {"rhs_weap_fgm148"};
    magazines[] += {"rhs_fgm148_magazine_AT"};
    items[] += {"ACRE_PRC152"};
};
class hata : r
{
    displayName = "HAT Assistant";
    secondaryWeapon[] = {};
    backpack[] = {"B_Carryall_cbr"};
    backpackItems[] =
    {
        "rhs_fgm148_magazine_AT"
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class hatam : r
{
    displayName = "HAT Ammo Man";
    backpack[] = {"B_Carryall_cbr"};
    backpackItems[] =
    {
        "rhs_fgm148_magazine_AT"
    };
};
class mat : r
{
    displayName = "MAT Gunner";
    vest[] = {
        "rhsusf_iotv_ocp_Teamleader"
    };
    secondaryWeapon[] = {"launch_MRAWS_olive_rail_F"};
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
class mg : r
{
    displayName = "MMG Gunner";
    vest[] = {
        "rhsusf_iotv_ocp_Teamleader"
    };
    primaryWeapon[] = {"rhs_weap_m240B"};
    attachment[] = {"acc_flashlight"};
    bipod[] = {};
    magazines[] =
    {
        LIST_4("rhsusf_100Rnd_762x51_m62_tracer"),
        LIST_2("hlc_12Rnd_357SIG_B_P226")
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
