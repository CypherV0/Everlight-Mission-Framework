///////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////US Boat Factory 1//////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////

//Create Root Action
_action = ["Boat Factory","Boat Factory","",{},{true},{},[], [1,2,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner1, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;


//Clear Pad Action
_clearAction = ["Clear Pad","Clear Pad","z\tca\addons\bft\UI\icons\off.paa",{{deleteVehicle _x} forEach nearestObjects [VS_Boat_Pad1, ["AllVehicles"], 25]},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner1, 0, ["Boat Factory"], _clearAction] call ace_interact_menu_fnc_addActionToObject;

//Repair/Rearm/Refuel Vehicle Action
_repairAction = ["Repair/Rearm/Refuel","Repair/Rearm/Refuel","\a3\ui_f\data\IGUI\Cfg\Actions\repair_ca.paa",
    {
        {_x setDamage 0} forEach nearestObjects [VS_Boat_Pad1, ["AllVehicles"], 25];
        {_x setVehicleAmmo 1} forEach nearestObjects [VS_Boat_Pad1, ["AllVehicles"], 25];
        {_x setFuel 1} forEach nearestObjects [VS_Boat_Pad1, ["AllVehicles"], 25]
    },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner1, 0, ["Boat Factory"], _repairAction] call ace_interact_menu_fnc_addActionToObject;

//Create Boats Branch
_action = ["Boats","Boats","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner1, 0, ["Boat Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//Assault Boat
_action = ["Assault Boat","Assault Boat","\A3\boat_F\Boat_Transport_01\data\UI\map_Boat_Transport_01_CA.paa",{
    _pad1 = getPosATL VS_Boat_Pad1;
    _dir = getDir VS_Boat_Pad1;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 10];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "B_T_Boat_Transport_01_F",
            _pad1,
            [],
            0,
            "CAN_COLLIDE"
        ];
        _veh setDir _dir;
        clearWeaponCargoGlobal _veh;
        clearMagazineCargoGlobal _veh;
        clearItemCargoGlobal _veh;
    } else {
        // If there's a vehicle on the pad, display a hint
        hintSilent "Pad is blocked. Cannot spawn vehicle.";
    }
}, {true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner1, 0, ["Boat Factory", "Boats"], _action] call ace_interact_menu_fnc_addActionToObject;

//RHIB (Unarmed)
_action = ["RHIB (Unarmed)","RHIB (Unarmed)","\A3\Boat_F_Exp\Boat_Transport_02\Data\UI\Map_Boat_Transport_02_CA.paa",{
    _pad1 = getPosATL VS_Boat_Pad1;
    _dir = getDir VS_Boat_Pad1;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 10];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "rhsgref_hidf_rhib",
            _pad1,
            [],
            0,
            "CAN_COLLIDE"
        ];
        _veh setDir _dir;
        clearWeaponCargoGlobal _veh;
        clearMagazineCargoGlobal _veh;
        clearItemCargoGlobal _veh;
    } else {
        // If there's a vehicle on the pad, display a hint
        hintSilent "Pad is blocked. Cannot spawn vehicle.";
    }
}, {true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner1, 0, ["Boat Factory", "Boats"], _action] call ace_interact_menu_fnc_addActionToObject;

//RHIB (M2)
_action = ["RHIB (M2)","RHIB (M2)","\UK3CB_Factions\addons\UK3CB_Factions_Vehicles\water\UK3CB_Factions_Vehicles_rhib\data\UI\icomap_rhib_ca.paa",{
    _pad1 = getPosATL VS_Boat_Pad1;
    _dir = getDir VS_Boat_Pad1;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 10];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "UK3CB_MDF_B_RHIB",
            _pad1,
            [],
            0,
            "CAN_COLLIDE"
        ];
        _veh setDir _dir;
        clearWeaponCargoGlobal _veh;
        clearMagazineCargoGlobal _veh;
        clearItemCargoGlobal _veh;
    } else {
        // If there's a vehicle on the pad, display a hint
        hintSilent "Pad is blocked. Cannot spawn vehicle.";
    }
}, {true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner1, 0, ["Boat Factory", "Boats"], _action] call ace_interact_menu_fnc_addActionToObject;

//RHIB Gunboat (M2/Mk19)
_action = ["RHIB Gunboat (M2/Mk19)","RHIB Gunboat (M2/Mk19)","\UK3CB_Factions\addons\UK3CB_Factions_Vehicles\water\UK3CB_Factions_Vehicles_rhib\data\ui\icomap_gunboat_ca.paa",{
    _pad1 = getPosATL VS_Boat_Pad1;
    _dir = getDir VS_Boat_Pad1;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 10];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "UK3CB_MDF_B_RHIB_Gunboat",
            _pad1,
            [],
            0,
            "CAN_COLLIDE"
        ];
        _veh setDir _dir;
        clearWeaponCargoGlobal _veh;
        clearMagazineCargoGlobal _veh;
        clearItemCargoGlobal _veh;
    } else {
        // If there's a vehicle on the pad, display a hint
        hintSilent "Pad is blocked. Cannot spawn vehicle.";
    }
}, {true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner1, 0, ["Boat Factory", "Boats"], _action] call ace_interact_menu_fnc_addActionToObject;

//Landing Craft
_action = ["Landing Craft","Landing Craft","\cup\watervehicles\cup_watervehicles_lcvp\data\ui\map_lcvp_ca.paa",{
    _pad1 = getPosATL VS_Boat_Pad1;
    _dir = getDir VS_Boat_Pad1;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 10];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "CUP_I_LCVP_RACS",
            _pad1,
            [],
            0,
            "CAN_COLLIDE"
        ];
        _veh setDir _dir;
        clearWeaponCargoGlobal _veh;
        clearMagazineCargoGlobal _veh;
        clearItemCargoGlobal _veh;
    } else {
        // If there's a vehicle on the pad, display a hint
        hintSilent "Pad is blocked. Cannot spawn vehicle.";
    }
}, {true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner1, 0, ["Boat Factory", "Boats"], _action] call ace_interact_menu_fnc_addActionToObject;

///////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////US Boat Factory 2//////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////

//Create Root Action
_action = ["Boat Factory","Boat Factory","",{},{true},{},[], [1,2,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner2, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;


//Clear Pad Action
_clearAction = ["Clear Pad","Clear Pad","z\tca\addons\bft\UI\icons\off.paa",{{deleteVehicle _x} forEach nearestObjects [VS_Boat_Pad2, ["AllVehicles"], 25]},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner2, 0, ["Boat Factory"], _clearAction] call ace_interact_menu_fnc_addActionToObject;

//Repair/Rearm/Refuel Vehicle Action
_repairAction = ["Repair/Rearm/Refuel","Repair/Rearm/Refuel","\a3\ui_f\data\IGUI\Cfg\Actions\repair_ca.paa",
    {
        {_x setDamage 0} forEach nearestObjects [VS_Boat_Pad2, ["AllVehicles"], 25];
        {_x setVehicleAmmo 1} forEach nearestObjects [VS_Boat_Pad2, ["AllVehicles"], 25];
        {_x setFuel 1} forEach nearestObjects [VS_Boat_Pad2, ["AllVehicles"], 25]
    },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner2, 0, ["Boat Factory"], _repairAction] call ace_interact_menu_fnc_addActionToObject;

//Create Boats Branch
_action = ["Boats","Boats","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner2, 0, ["Boat Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//Assault Boat
_action = ["Assault Boat","Assault Boat","\A3\boat_F\Boat_Transport_01\data\UI\map_Boat_Transport_01_CA.paa",{
    _pad1 = getPosATL VS_Boat_Pad2;
    _dir = getDir VS_Boat_Pad2;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 10];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "B_T_Boat_Transport_01_F",
            _pad1,
            [],
            0,
            "CAN_COLLIDE"
        ];
        _veh setDir _dir;
        clearWeaponCargoGlobal _veh;
        clearMagazineCargoGlobal _veh;
        clearItemCargoGlobal _veh;
    } else {
        // If there's a vehicle on the pad, display a hint
        hintSilent "Pad is blocked. Cannot spawn vehicle.";
    }
}, {true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner2, 0, ["Boat Factory", "Boats"], _action] call ace_interact_menu_fnc_addActionToObject;

//RHIB (Unarmed)
_action = ["RHIB (Unarmed)","RHIB (Unarmed)","\A3\Boat_F_Exp\Boat_Transport_02\Data\UI\Map_Boat_Transport_02_CA.paa",{
    _pad1 = getPosATL VS_Boat_Pad2;
    _dir = getDir VS_Boat_Pad2;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 10];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "rhsgref_hidf_rhib",
            _pad1,
            [],
            0,
            "CAN_COLLIDE"
        ];
        _veh setDir _dir;
        clearWeaponCargoGlobal _veh;
        clearMagazineCargoGlobal _veh;
        clearItemCargoGlobal _veh;
    } else {
        // If there's a vehicle on the pad, display a hint
        hintSilent "Pad is blocked. Cannot spawn vehicle.";
    }
}, {true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner2, 0, ["Boat Factory", "Boats"], _action] call ace_interact_menu_fnc_addActionToObject;

//RHIB (M2)
_action = ["RHIB (M2)","RHIB (M2)","\UK3CB_Factions\addons\UK3CB_Factions_Vehicles\water\UK3CB_Factions_Vehicles_rhib\data\UI\icomap_rhib_ca.paa",{
    _pad1 = getPosATL VS_Boat_Pad2;
    _dir = getDir VS_Boat_Pad2;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 10];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "UK3CB_MDF_B_RHIB",
            _pad1,
            [],
            0,
            "CAN_COLLIDE"
        ];
        _veh setDir _dir;
        clearWeaponCargoGlobal _veh;
        clearMagazineCargoGlobal _veh;
        clearItemCargoGlobal _veh;
    } else {
        // If there's a vehicle on the pad, display a hint
        hintSilent "Pad is blocked. Cannot spawn vehicle.";
    }
}, {true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner2, 0, ["Boat Factory", "Boats"], _action] call ace_interact_menu_fnc_addActionToObject;

//RHIB Gunboat (M2/Mk19)
_action = ["RHIB Gunboat (M2/Mk19)","RHIB Gunboat (M2/Mk19)","\UK3CB_Factions\addons\UK3CB_Factions_Vehicles\water\UK3CB_Factions_Vehicles_rhib\data\ui\icomap_gunboat_ca.paa",{
    _pad1 = getPosATL VS_Boat_Pad2;
    _dir = getDir VS_Boat_Pad2;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 10];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "UK3CB_MDF_B_RHIB_Gunboat",
            _pad1,
            [],
            0,
            "CAN_COLLIDE"
        ];
        _veh setDir _dir;
        clearWeaponCargoGlobal _veh;
        clearMagazineCargoGlobal _veh;
        clearItemCargoGlobal _veh;
    } else {
        // If there's a vehicle on the pad, display a hint
        hintSilent "Pad is blocked. Cannot spawn vehicle.";
    }
}, {true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner2, 0, ["Boat Factory", "Boats"], _action] call ace_interact_menu_fnc_addActionToObject;

//Landing Craft
_action = ["Landing Craft","Landing Craft","\cup\watervehicles\cup_watervehicles_lcvp\data\ui\map_lcvp_ca.paa",{
    _pad1 = getPosATL VS_Boat_Pad2;
    _dir = getDir VS_Boat_Pad2;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 10];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "CUP_I_LCVP_RACS",
            _pad1,
            [],
            0,
            "CAN_COLLIDE"
        ];
        _veh setDir _dir;
        clearWeaponCargoGlobal _veh;
        clearMagazineCargoGlobal _veh;
        clearItemCargoGlobal _veh;
    } else {
        // If there's a vehicle on the pad, display a hint
        hintSilent "Pad is blocked. Cannot spawn vehicle.";
    }
}, {true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner2, 0, ["Boat Factory", "Boats"], _action] call ace_interact_menu_fnc_addActionToObject;

///////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////US Boat Factory 3//////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////

//Create Root Action
_action = ["Boat Factory","Boat Factory","",{},{true},{},[], [1,2,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner3, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;


//Clear Pad Action
_clearAction = ["Clear Pad","Clear Pad","z\tca\addons\bft\UI\icons\off.paa",{{deleteVehicle _x} forEach nearestObjects [VS_Boat_Pad3, ["AllVehicles"], 25]},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner3, 0, ["Boat Factory"], _clearAction] call ace_interact_menu_fnc_addActionToObject;

//Repair/Rearm/Refuel Vehicle Action
_repairAction = ["Repair/Rearm/Refuel","Repair/Rearm/Refuel","\a3\ui_f\data\IGUI\Cfg\Actions\repair_ca.paa",
    {
        {_x setDamage 0} forEach nearestObjects [VS_Boat_Pad3, ["AllVehicles"], 25];
        {_x setVehicleAmmo 1} forEach nearestObjects [VS_Boat_Pad3, ["AllVehicles"], 25];
        {_x setFuel 1} forEach nearestObjects [VS_Boat_Pad3, ["AllVehicles"], 25]
    },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner3, 0, ["Boat Factory"], _repairAction] call ace_interact_menu_fnc_addActionToObject;

//Create Boats Branch
_action = ["Boats","Boats","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner3, 0, ["Boat Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//Assault Boat
_action = ["Assault Boat","Assault Boat","\A3\boat_F\Boat_Transport_01\data\UI\map_Boat_Transport_01_CA.paa",{
    _pad1 = getPosATL VS_Boat_Pad3;
    _dir = getDir VS_Boat_Pad3;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 10];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "B_T_Boat_Transport_01_F",
            _pad1,
            [],
            0,
            "CAN_COLLIDE"
        ];
        _veh setDir _dir;
        clearWeaponCargoGlobal _veh;
        clearMagazineCargoGlobal _veh;
        clearItemCargoGlobal _veh;
    } else {
        // If there's a vehicle on the pad, display a hint
        hintSilent "Pad is blocked. Cannot spawn vehicle.";
    }
}, {true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner3, 0, ["Boat Factory", "Boats"], _action] call ace_interact_menu_fnc_addActionToObject;

//RHIB (Unarmed)
_action = ["RHIB (Unarmed)","RHIB (Unarmed)","\A3\Boat_F_Exp\Boat_Transport_02\Data\UI\Map_Boat_Transport_02_CA.paa",{
    _pad1 = getPosATL VS_Boat_Pad3;
    _dir = getDir VS_Boat_Pad3;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 10];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "rhsgref_hidf_rhib",
            _pad1,
            [],
            0,
            "CAN_COLLIDE"
        ];
        _veh setDir _dir;
        clearWeaponCargoGlobal _veh;
        clearMagazineCargoGlobal _veh;
        clearItemCargoGlobal _veh;
    } else {
        // If there's a vehicle on the pad, display a hint
        hintSilent "Pad is blocked. Cannot spawn vehicle.";
    }
}, {true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner3, 0, ["Boat Factory", "Boats"], _action] call ace_interact_menu_fnc_addActionToObject;

//RHIB (M2)
_action = ["RHIB (M2)","RHIB (M2)","\UK3CB_Factions\addons\UK3CB_Factions_Vehicles\water\UK3CB_Factions_Vehicles_rhib\data\UI\icomap_rhib_ca.paa",{
    _pad1 = getPosATL VS_Boat_Pad3;
    _dir = getDir VS_Boat_Pad3;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 10];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "UK3CB_MDF_B_RHIB",
            _pad1,
            [],
            0,
            "CAN_COLLIDE"
        ];
        _veh setDir _dir;
        clearWeaponCargoGlobal _veh;
        clearMagazineCargoGlobal _veh;
        clearItemCargoGlobal _veh;
    } else {
        // If there's a vehicle on the pad, display a hint
        hintSilent "Pad is blocked. Cannot spawn vehicle.";
    }
}, {true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner3, 0, ["Boat Factory", "Boats"], _action] call ace_interact_menu_fnc_addActionToObject;

//RHIB Gunboat (M2/Mk19)
_action = ["RHIB Gunboat (M2/Mk19)","RHIB Gunboat (M2/Mk19)","\UK3CB_Factions\addons\UK3CB_Factions_Vehicles\water\UK3CB_Factions_Vehicles_rhib\data\ui\icomap_gunboat_ca.paa",{
    _pad1 = getPosATL VS_Boat_Pad3;
    _dir = getDir VS_Boat_Pad3;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 10];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "UK3CB_MDF_B_RHIB_Gunboat",
            _pad1,
            [],
            0,
            "CAN_COLLIDE"
        ];
        _veh setDir _dir;
        clearWeaponCargoGlobal _veh;
        clearMagazineCargoGlobal _veh;
        clearItemCargoGlobal _veh;
    } else {
        // If there's a vehicle on the pad, display a hint
        hintSilent "Pad is blocked. Cannot spawn vehicle.";
    }
}, {true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner3, 0, ["Boat Factory", "Boats"], _action] call ace_interact_menu_fnc_addActionToObject;

//Landing Craft
_action = ["Landing Craft","Landing Craft","\cup\watervehicles\cup_watervehicles_lcvp\data\ui\map_lcvp_ca.paa",{
    _pad1 = getPosATL VS_Boat_Pad3;
    _dir = getDir VS_Boat_Pad3;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 10];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "CUP_I_LCVP_RACS",
            _pad1,
            [],
            0,
            "CAN_COLLIDE"
        ];
        _veh setDir _dir;
        clearWeaponCargoGlobal _veh;
        clearMagazineCargoGlobal _veh;
        clearItemCargoGlobal _veh;
    } else {
        // If there's a vehicle on the pad, display a hint
        hintSilent "Pad is blocked. Cannot spawn vehicle.";
    }
}, {true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_Boat_Spawner3, 0, ["Boat Factory", "Boats"], _action] call ace_interact_menu_fnc_addActionToObject;


/*
 * Argument:
 * 0: Action name <STRING>
 * 1: Name of the action shown in the menu <STRING>
 * 2: Icon <STRING>
 * 3: Statement <CODE>
 * 4: Condition <CODE>
 * 5: Insert children code <CODE> (Optional)
 * 6: Action parameters <ANY> (Optional)
 * 7: Position (Position array, Position code or Selection Name) <ARRAY>, <CODE> or <STRING> (Optional)
 * 8: Distance <NUMBER> (Optional)
 * 9: Other parameters [showDisabled,enableInside,canCollapse,runOnHover,doNotCheckLOS] <ARRAY> (Optional)
 * 10: Modifier function <CODE> (Optional)
 */


/*
 * Argument:
 * 0: Object the action should be assigned to <OBJECT>
 * 1: Type of action, 0 for actions, 1 for self-actions <NUMBER>
 * 2: Parent path of the new action <ARRAY> (Example: `["ACE_SelfActions", "ACE_Equipment"]`)
 * 3: Action <ARRAY>
 */
