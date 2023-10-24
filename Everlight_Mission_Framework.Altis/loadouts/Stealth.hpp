//Compatible with ACE Advanced Medical

tooltip = "Stealth by Cypher";

class baseMan {// Weaponless baseclass
    displayName = "Unarmed";
    // All randomized.
    uniform[] = {"UK3CB_MEE_O_U_07_C"};
    vest[] = {};
    headgear[] = {};
    backpack[] = {};
    goggles[] = {"default"};
    hmd[] =
    {
        "UK3CB_ANPVS7"
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
    backpack[] = {"B_AssaultPack_blk"};
    headgear[] = {
        "rhsusf_protech_helmet_rhino"
    };
    vest[] = {
        "CUP_V_PMC_IOTV_Black_Patrol"
    };
    primaryWeapon[] = {
        "hlc_smg_mp5N_tac"
    };
    secondaryWeapon[] = {};
    bipod[] = {};
    scope[] = {"cup_optic_ac11704_black"};
    silencer[] = {"hlc_muzzle_agendasix"};
    attachment[] = {
        "acc_pointer_ir"
    };
    sidearmWeapon[] = {};
    magazines[] = {
        LIST_10("hlc_30Rnd_9x19_SD_MP5"),
        LIST_2("rhs_mag_m67"),
        LIST_2("SmokeShell")
    };
    items[] = {
        LIST_10("ACE_fieldDressing"),
        LIST_2("ACE_morphine"),
        LIST_2("ACE_tourniquet"),
        "evlt_medical_advancedAid",
        "ACE_Flashlight_XL50",
        "ACRE_PRC343"
    };
};
class rm : r
{
    displayName = "Rifleman (Extra Ammo)";
    magazines[] += {
        LIST_5("hlc_30Rnd_9x19_SD_MP5")
    };
};
class m : r
{
    displayName = "Medic";
    code = "_this setUnitTrait [""Medic"", true];";
    insignias[] = {"MedB"};
    backpack[] = {"CUP_B_USPack_Black"};
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
class ftl : r
{
    displayName = "Fireteam Leader";
    vest[] = {
        "CUP_V_PMC_IOTV_Black_TL"
    };
    magazines[] += {LIST_3("hlc_15Rnd_9x19_SD_P226")};
    linkedItems[] =
    {
        "ItemMap",
        "ItemCompass",
        "ItemWatch",
        "rhssaf_zrak_rd7j",
    };
    sidearmWeapon[] = {"hlc_pistol_P226R_Combat"};
    sidearmAttachments[] = {"hlc_optic_hp", "hlc_acc_dbalpl", "hlc_muzzle_tirant9s"};

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
    primaryWeapon[] = {"rhs_weap_m4a1_blockII_KAC_bk"};
    bipod[] = {"rhsusf_acc_grip1"};
    silencer[] = {"rhsusf_acc_nt4_black"};
    magazines[] =
    {
        LIST_3("rhs_mag_100Rnd_556x45_Mk262_cmag"),
        LIST_2("hlc_15Rnd_9x19_SD_P226"),
        LIST_2("rhs_mag_m67"),
        LIST_2("SmokeShell")
    };
    backpackItems[] =
    {
        LIST_4("rhs_mag_100Rnd_556x45_Mk262_cmag")
    };
    sidearmWeapon[] = {"hlc_pistol_P226R_Combat"};
    sidearmAttachments[] = {"hlc_optic_hp", "hlc_acc_dbalpl", "hlc_muzzle_tirant9s"};
};
class aar : r
{
    displayName = "Asst. Automatic Rifleman";
    backpackItems[] =
    {
        LIST_4("rhs_mag_100Rnd_556x45_Mk262_cmag")
    };
    linkedItems[] += {"rhssaf_zrak_rd7j"};
};
class smg : r
{
    displayName = "SMG Base (Not for play)";
    vest[] = {
        "UK3CB_V_Pilot_Vest_Black"
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
    uniform[] = {"U_B_PilotCoveralls"};
    vest[] = {"V_Rangemaster_belt"};
    backpack[] = {"B_Parachute"};
    headgear[] = {"H_PilotHelmetFighter_B"};
    goggles[] = {"default"};
    sidearmWeapon[] = {"hlc_pistol_P226R_Combat"};
    sidearmAttachments[] = {"hlc_optic_hp", "hlc_acc_dbalpl", "hlc_muzzle_octane9"};
    magazines[] =
    {
        LIST_2("hlc_15Rnd_9x19_SD_P226")
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
