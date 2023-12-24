
// Check environment and display conditions
//if (isDedicated) exitWith {};
//if !(hasInterface) exitWith {};

// Open ACE Arsenal for the player
//[player, player, true] call ace_arsenal_fnc_openBox;

//Above works correctly to simply open the ACE arsenal, just no whitelist
////////////////////////////////////////////

// Check environment and display conditions
if (isDedicated) exitWith {};
if !(hasInterface) exitWith {};

[player, true, false] call ace_arsenal_fnc_removeVirtualItems;

[player, player, true] call ace_arsenal_fnc_openBox;

[player, ["G_Aviator","rhs_googles_black","rhs_googles_clear","rhs_ess_black",
    "dvk_tacg_shem_altcsat","G_Blindfold_01_black_F","G_Combat",
    "CUP_G_ESS_BLK_Dark","CUP_G_TK_RoundGlasses_blk","rhsusf_shemagh2_tan",
    "rhsusf_shemagh2_od","rhsusf_shemagh2_grn","rhsusf_oakley_goggles_blk",
    "G_Spectacles","dvk_tacg_altcsat","G_Spectacles_Tinted","rhs_googles_orange",
    "rhs_googles_yellow","dvk_tacg_o_shem_altcsat","rhsusf_shemagh2_gogg_grn",
    "rhsusf_shemagh2_gogg_od","rhsusf_shemagh2_gogg_tan","rhsusf_oakley_goggles_ylw",
    "rhsusf_oakley_goggles_clr","G_Squares","G_Squares_Tinted","rhs_facewear_6m2_1",
    "rhs_facewear_6m2","CUP_optic_1p63","rhs_acc_1p63","CUP_optic_1P87_RIS",
    "rhs_acc_1p87","CUP_optic_1P87_RIS_desert","CUP_optic_1P87_RIS_woodland",
    "CUP_optic_MicroT1","CUP_optic_MicroT1_coyote","CUP_optic_MicroT1_low",
    "CUP_optic_MicroT1_low_coyote","CUP_optic_MicroT1_low_OD","CUP_optic_MicroT1_OD",
    "CUP_optic_AC11704_Black","CUP_optic_AC11704_Coyote","CUP_optic_AC11704_Jungle",
    "CUP_optic_AC11704_OD","CUP_optic_AC11704_Tan","CUP_optic_HoloBlack",
    "CUP_optic_HoloDesert","CUP_optic_HoloWdl","SMA_eotech552","SMA_eotech552_kf",
    "CUP_optic_Eotech553_Black","CUP_optic_Eotech553_Coyote","CUP_optic_Eotech533Grey",
    "CUP_optic_Eotech553_OD","CUP_optic_Eotech533","SMA_eotech","SMA_eotech_G",
    "SMA_eotech_T","CUP_optic_Kobra","rhsusf_acc_eotech_552","rhsusf_acc_eotech_552_d",
    "rhsusf_acc_eotech_552_wd","CUP_optic_CompM2_Black","CUP_optic_CompM2_Coyote",
    "CUP_optic_CompM2_Desert","CUP_optic_CompM2_OD","CUP_optic_CompM2_Woodland2",
    "CUP_optic_CompM2_Woodland","SMA_MICRO_T2","SMA_MICRO_T2_LM","rhsusf_acc_mrds",
    "rhsusf_acc_mrds_fwd","rhs_acc_okp7_dovetail","rhs_acc_pkas","SMA_BARSKA",
    "SMA_AIMPOINT","SMA_CMORE","rhsusf_acc_T1_low_fwd","rhsusf_acc_T1_high",
    "sma_spitfire_01_black","rhsusf_acc_eotech_xps3","rhsusf_acc_compm4",
    "rhsusf_acc_grip2","rhsusf_acc_grip2_tan","rhsusf_acc_grip2_wd",
    "rhsusf_acc_rvg_blk","rhsusf_acc_kac_grip","rhsusf_acc_harris_bipod",
    "rhsusf_acc_kac_grip_saw_bipod","rhsusf_acc_grip4_bipod","bipod_01_F_blk"], true] call ace_arsenal_fnc_addVirtualItems;

