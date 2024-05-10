///////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////US Heli Factory 1//////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////

//Create Root Action
_action = ["Heli Factory","Heli Factory","",{},{true},{},[], [2.5,3,-4.5], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;


//Clear Pad Action
_clearAction = ["Clear Pad","Clear Pad","z\tca\addons\bft\UI\icons\off.paa",{{deleteVehicle _x} forEach nearestObjects [VS_US_Heli_Pad1, ["AllVehicles"], 25]},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory"], _clearAction] call ace_interact_menu_fnc_addActionToObject;

//Repair/Rearm/Refuel Vehicle Action
_repairAction = ["Repair/Rearm/Refuel","Repair/Rearm/Refuel","\a3\ui_f\data\IGUI\Cfg\Actions\repair_ca.paa",
    {
        {_x setDamage 0} forEach nearestObjects [VS_US_Heli_Pad1, ["AllVehicles"], 25];
        {_x setVehicleAmmo 1} forEach nearestObjects [VS_US_Heli_Pad1, ["AllVehicles"], 25];
        {_x setFuel 1} forEach nearestObjects [VS_US_Heli_Pad1, ["AllVehicles"], 25]
    },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory"], _repairAction] call ace_interact_menu_fnc_addActionToObject;

//Create Heli Branch
_action = ["Helicopters","Helicopters","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//AH-6M
_action = ["AH-6M","AH-6M","rhsusf\addons\rhsusf_melb\Data\ui\map_melb_ah_6m_l_ca.paa",{
    _pad1 = getPosATL VS_US_Heli_Pad1;
    _dir = getDir VS_US_Heli_Pad1;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 6];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "RHS_MELB_AH6M",
            _pad1,
            [],
            0,
            "NONE"
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
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Helicopters"], _action] call ace_interact_menu_fnc_addActionToObject;

//MH-6M
_action = ["MH-6M","MH-6M","rhsusf\addons\rhsusf_melb\Data\ui\map_melb_mh_6m_ca.paa",{
    _pad1 = getPosATL VS_US_Heli_Pad1;
    _dir = getDir VS_US_Heli_Pad1;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 6];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "RHS_MELB_MH6M",
            _pad1,
            [],
            0,
            "NONE"
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
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Helicopters"], _action] call ace_interact_menu_fnc_addActionToObject;

//UH-1H
_action = ["UH-1H","UH-1H","rhsgref\addons\rhsgref_air\uh1h\ui\icon_uh1h_ca.paa",{
    _pad1 = getPosATL VS_US_Heli_Pad1;
    _dir = getDir VS_US_Heli_Pad1;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 6];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "UK3CB_CW_US_B_LATE_UH1H_M240",
            _pad1,
            [],
            0,
            "NONE"
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
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Helicopters"], _action] call ace_interact_menu_fnc_addActionToObject;

//UH-60
_action = ["UH-60M","UH-60M","\rhsusf\addons\rhsusf_a2port_air\data\mapico\Icon_uh60m_CA.paa",{
    _pad1 = getPosATL VS_US_Heli_Pad1;
    _dir = getDir VS_US_Heli_Pad1;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 6];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "RHS_UH60M",
            _pad1,
            [],
            0,
            "NONE"
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
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Helicopters"], _action] call ace_interact_menu_fnc_addActionToObject;

//CH-47
_action = ["CH-47F","CH-47F","\rhsusf\addons\rhsusf_a2port_air\data\mapico\Icon_ch47f_CA.paa",{
    _pad1 = getPosATL VS_US_Heli_Pad1;
    _dir = getDir VS_US_Heli_Pad1;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 6];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "RHS_CH_47F",
            _pad1,
            [],
            0,
            "NONE"
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
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Helicopters"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Logistics Branch
_action = ["Logistics","Logistics","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//Vehicle Crate
_action = ["Vehicle Service Crate", "Vehicle Service Crate", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_VehicleServiceMedium_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_VehicleServiceMedium_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startDrag;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Medical Crate
_action = ["Medical Crate", "Medical Crate", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Medical_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Medical_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Fireteam Branch
_action = ["Ammo - Fireteam","Ammo - Fireteam","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//STANAG Crate
_action = ["Fireteam Crate (STANAG)", "Fireteam Crate (STANAG)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_STANAG_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_STANAG_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//Cold War M16 Crate
_action = ["Fireteam Crate (Cold War M16)", "Fireteam Crate (Cold War M16)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_M16_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_M16_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//Cold War M14 Crate
_action = ["Fireteam Crate (Cold War M14)", "Fireteam Crate (Cold War M14)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_M14_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_M14_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//SCAR-H Crate
_action = ["Fireteam Crate (SCAR-H)", "Fireteam Crate (SCAR-H)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_Rangers_SCAR_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_Rangers_SCAR_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//PMC ACR Crate
_action = ["Fireteam Crate (PMC ACR)", "Fireteam Crate (PMC ACR)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_PMC_ACR_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_PMC_ACR_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//AK-545 Crate
_action = ["Fireteam Crate (AK-545)", "Fireteam Crate (AK-545)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_AK74_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_AK74_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//AK-762 Crate
_action = ["Fireteam Crate (AK-762)", "Fireteam Crate (AK-762)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_AK762_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_AK762_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//AK-762/PK Crate
_action = ["Fireteam Crate (AK-762/PK)", "Fireteam Crate (AK-762/PK)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_FinlandArmy_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_FinlandArmy_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//FAL Crate
_action = ["Fireteam Crate (FAL)", "Fireteam Crate (FAL)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_FAL_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_FAL_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//vz-58 Crate
_action = ["Fireteam Crate (vz-58)", "Fireteam Crate (vz-58)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_CZ_VZ58_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_CZ_VZ58_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//G36 Crate
_action = ["Fireteam Crate (G36)", "Fireteam Crate (G36)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_GER_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_GER_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//M21 Crate
_action = ["Fireteam Crate (M21)", "Fireteam Crate (M21)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_Serbia_Modern_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_Serbia_Modern_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//M70 Crate
_action = ["Fireteam Crate (M70)", "Fireteam Crate (M70)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_Serboslavia_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_Serboslavia_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create MMG Branch
_action = ["Ammo - MMG","Ammo - MMG","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//M240/M60/Mk48 Crate
_action = ["Ammo Crate (M240/M60/Mk48)", "Ammo Crate (M240/M60/Mk48)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_MMG_M240_M60_Mk48_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_MMG_M240_M60_Mk48_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - MMG"], _action] call ace_interact_menu_fnc_addActionToObject;

//PKM/PKP Crate
_action = ["Ammo Crate (PKM/PKP)", "Ammo Crate (PKM/PKP)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_MMG_PK_RU_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_MMG_PK_RU_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - MMG"], _action] call ace_interact_menu_fnc_addActionToObject;

//MG3 Crate
_action = ["Ammo Crate (MG3)", "Ammo Crate (MG3)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_MMG_MG3_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_MMG_MG3_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - MMG"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create MAT Branch
_action = ["Ammo - MAT","Ammo - MAT","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//MAAWS Crate
_action = ["Ammo Crate (MAAWS)", "Ammo Crate (MAAWS)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_MAT_MAAWS_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_MAT_MAAWS_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - MAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//RPG-7 Crate
_action = ["Ammo Crate (RPG-7)", "Ammo Crate (RPG-7)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_MAT_RPG7_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_MAT_RPG7_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - MAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create HAT Branch
_action = ["Ammo - HAT","Ammo - HAT","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Javelin Crate
_action = ["Ammo Crate (Javelin)", "Ammo Crate (Javelin)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_HAT_FGM148_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_HAT_FGM148_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - HAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//TOW Crate
_action = ["Ammo Crate (TOW)", "Ammo Crate (TOW)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_HAT_TOW_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_HAT_TOW_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - HAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Kornet Crate
_action = ["Ammo Crate (Kornet)", "Ammo Crate (Kornet)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_HAT_9M133_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_HAT_9M133_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Ammo - HAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create LAT Branch
_action = ["Launchers - LAT","Launchers - LAT","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//M136 Crate
_action = ["Launcher Crate (M136 AT-4)", "Launcher Crate (M136 AT-4)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_RAT_M136_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_RAT_M136_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Launchers - LAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//M72 LAW Crate
_action = ["Launcher Crate (M72 LAW)", "Launcher Crate (M72 LAW)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_RAT_M72A7_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_RAT_M72A7_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Launchers - LAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//RPG-26 Crate
_action = ["Launcher Crate (RPG-26)", "Launcher Crate (RPG-26)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_RAT_RPG26_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_RAT_RPG26_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Launchers - LAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create AA Branch
_action = ["Launchers - AA","Launchers - AA","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Igla Crate
// Define the action for cargo loading
_action = ["Launcher Crate (Igla)", "Launcher Crate (Igla)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
//If vehicle is on the pad, crate is loaded directly, else it's given to the player
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_AAM_Igla_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_AAM_Igla_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
// Add the action to the spawner object
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Launchers - AA"], _action] call ace_interact_menu_fnc_addActionToObject;

//Stinger Crate
_action = ["Launcher Crate (Stinger)", "Launcher Crate (Stinger)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_AAM_Stinger_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_AAM_Stinger_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner1, 0, ["Heli Factory", "Logistics", "Launchers - AA"], _action] call ace_interact_menu_fnc_addActionToObject;


///////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////US Heli Factory 2//////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////

//Create Root Action
_action = ["Heli Factory","Heli Factory","",{},{true},{},[], [2.5,3,-4.5], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;


//Clear Pad Action
_clearAction = ["Clear Pad","Clear Pad","z\tca\addons\bft\UI\icons\off.paa",{{deleteVehicle _x} forEach nearestObjects [VS_US_Heli_Pad2, ["AllVehicles"], 25]},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory"], _clearAction] call ace_interact_menu_fnc_addActionToObject;

//Repair/Rearm/Refuel Vehicle Action
_repairAction = ["Repair/Rearm/Refuel","Repair/Rearm/Refuel","\a3\ui_f\data\IGUI\Cfg\Actions\repair_ca.paa",
    {
        {_x setDamage 0} forEach nearestObjects [VS_US_Heli_Pad2, ["AllVehicles"], 25];
        {_x setVehicleAmmo 1} forEach nearestObjects [VS_US_Heli_Pad2, ["AllVehicles"], 25];
        {_x setFuel 1} forEach nearestObjects [VS_US_Heli_Pad2, ["AllVehicles"], 25]
    },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory"], _repairAction] call ace_interact_menu_fnc_addActionToObject;

//Create Heli Branch
_action = ["Helicopters","Helicopters","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//AH-6M
_action = ["AH-6M","AH-6M","rhsusf\addons\rhsusf_melb\Data\ui\map_melb_ah_6m_l_ca.paa",{
    _pad1 = getPosATL VS_US_Heli_Pad2;
    _dir = getDir VS_US_Heli_Pad2;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 6];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "RHS_MELB_AH6M",
            _pad1,
            [],
            0,
            "NONE"
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
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Helicopters"], _action] call ace_interact_menu_fnc_addActionToObject;

//MH-6M
_action = ["MH-6M","MH-6M","rhsusf\addons\rhsusf_melb\Data\ui\map_melb_mh_6m_ca.paa",{
    _pad1 = getPosATL VS_US_Heli_Pad2;
    _dir = getDir VS_US_Heli_Pad2;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 6];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "RHS_MELB_MH6M",
            _pad1,
            [],
            0,
            "NONE"
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
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Helicopters"], _action] call ace_interact_menu_fnc_addActionToObject;

//UH-1H
_action = ["UH-1H","UH-1H","rhsgref\addons\rhsgref_air\uh1h\ui\icon_uh1h_ca.paa",{
    _pad1 = getPosATL VS_US_Heli_Pad2;
    _dir = getDir VS_US_Heli_Pad2;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 6];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "UK3CB_CW_US_B_LATE_UH1H_M240",
            _pad1,
            [],
            0,
            "NONE"
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
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Helicopters"], _action] call ace_interact_menu_fnc_addActionToObject;

//UH-60
_action = ["UH-60M","UH-60M","\rhsusf\addons\rhsusf_a2port_air\data\mapico\Icon_uh60m_CA.paa",{
    _pad1 = getPosATL VS_US_Heli_Pad2;
    _dir = getDir VS_US_Heli_Pad2;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 6];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "RHS_UH60M",
            _pad1,
            [],
            0,
            "NONE"
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
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Helicopters"], _action] call ace_interact_menu_fnc_addActionToObject;

//CH-47
_action = ["CH-47F","CH-47F","\rhsusf\addons\rhsusf_a2port_air\data\mapico\Icon_ch47f_CA.paa",{
    _pad1 = getPosATL VS_US_Heli_Pad2;
    _dir = getDir VS_US_Heli_Pad2;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 6];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "RHS_CH_47F",
            _pad1,
            [],
            0,
            "NONE"
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
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Helicopters"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Logistics Branch
_action = ["Logistics","Logistics","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//Vehicle Crate
_action = ["Vehicle Service Crate", "Vehicle Service Crate", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_VehicleServiceMedium_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_VehicleServiceMedium_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startDrag;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Medical Crate
_action = ["Medical Crate", "Medical Crate", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Medical_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Medical_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Fireteam Branch
_action = ["Ammo - Fireteam","Ammo - Fireteam","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//STANAG Crate
_action = ["Fireteam Crate (STANAG)", "Fireteam Crate (STANAG)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_STANAG_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_STANAG_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//Cold War M16 Crate
_action = ["Fireteam Crate (Cold War M16)", "Fireteam Crate (Cold War M16)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_M16_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_M16_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//Cold War M14 Crate
_action = ["Fireteam Crate (Cold War M14)", "Fireteam Crate (Cold War M14)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_M14_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_M14_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//SCAR-H Crate
_action = ["Fireteam Crate (SCAR-H)", "Fireteam Crate (SCAR-H)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_Rangers_SCAR_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_Rangers_SCAR_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//PMC ACR Crate
_action = ["Fireteam Crate (PMC ACR)", "Fireteam Crate (PMC ACR)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_PMC_ACR_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_PMC_ACR_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//AK-545 Crate
_action = ["Fireteam Crate (AK-545)", "Fireteam Crate (AK-545)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_AK74_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_AK74_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//AK-762 Crate
_action = ["Fireteam Crate (AK-762)", "Fireteam Crate (AK-762)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_AK762_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_AK762_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//AK-762/PK Crate
_action = ["Fireteam Crate (AK-762/PK)", "Fireteam Crate (AK-762/PK)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_FinlandArmy_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_FinlandArmy_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//FAL Crate
_action = ["Fireteam Crate (FAL)", "Fireteam Crate (FAL)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_FAL_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_FAL_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//vz-58 Crate
_action = ["Fireteam Crate (vz-58)", "Fireteam Crate (vz-58)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_CZ_VZ58_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_CZ_VZ58_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//G36 Crate
_action = ["Fireteam Crate (G36)", "Fireteam Crate (G36)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_GER_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_GER_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//M21 Crate
_action = ["Fireteam Crate (M21)", "Fireteam Crate (M21)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_Serbia_Modern_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_Serbia_Modern_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//M70 Crate
_action = ["Fireteam Crate (M70)", "Fireteam Crate (M70)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_Serboslavia_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_Serboslavia_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create MMG Branch
_action = ["Ammo - MMG","Ammo - MMG","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//M240/M60/Mk48 Crate
_action = ["Ammo Crate (M240/M60/Mk48)", "Ammo Crate (M240/M60/Mk48)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_MMG_M240_M60_Mk48_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_MMG_M240_M60_Mk48_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - MMG"], _action] call ace_interact_menu_fnc_addActionToObject;

//PKM/PKP Crate
_action = ["Ammo Crate (PKM/PKP)", "Ammo Crate (PKM/PKP)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_MMG_PK_RU_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_MMG_PK_RU_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - MMG"], _action] call ace_interact_menu_fnc_addActionToObject;

//MG3 Crate
_action = ["Ammo Crate (MG3)", "Ammo Crate (MG3)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_MMG_MG3_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_MMG_MG3_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - MMG"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create MAT Branch
_action = ["Ammo - MAT","Ammo - MAT","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//MAAWS Crate
_action = ["Ammo Crate (MAAWS)", "Ammo Crate (MAAWS)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_MAT_MAAWS_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_MAT_MAAWS_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - MAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//RPG-7 Crate
_action = ["Ammo Crate (RPG-7)", "Ammo Crate (RPG-7)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_MAT_RPG7_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_MAT_RPG7_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - MAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create HAT Branch
_action = ["Ammo - HAT","Ammo - HAT","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Javelin Crate
_action = ["Ammo Crate (Javelin)", "Ammo Crate (Javelin)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_HAT_FGM148_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_HAT_FGM148_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - HAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//TOW Crate
_action = ["Ammo Crate (TOW)", "Ammo Crate (TOW)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_HAT_TOW_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_HAT_TOW_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - HAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Kornet Crate
_action = ["Ammo Crate (Kornet)", "Ammo Crate (Kornet)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_HAT_9M133_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_HAT_9M133_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Ammo - HAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create LAT Branch
_action = ["Launchers - LAT","Launchers - LAT","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//M136 Crate
_action = ["Launcher Crate (M136 AT-4)", "Launcher Crate (M136 AT-4)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_RAT_M136_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_RAT_M136_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Launchers - LAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//M72 LAW Crate
_action = ["Launcher Crate (M72 LAW)", "Launcher Crate (M72 LAW)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_RAT_M72A7_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_RAT_M72A7_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Launchers - LAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//RPG-26 Crate
_action = ["Launcher Crate (RPG-26)", "Launcher Crate (RPG-26)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_RAT_RPG26_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_RAT_RPG26_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Launchers - LAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create AA Branch
_action = ["Launchers - AA","Launchers - AA","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Igla Crate
// Define the action for cargo loading
_action = ["Launcher Crate (Igla)", "Launcher Crate (Igla)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
//If vehicle is on the pad, crate is loaded directly, else it's given to the player
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_AAM_Igla_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_AAM_Igla_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
// Add the action to the spawner object
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Launchers - AA"], _action] call ace_interact_menu_fnc_addActionToObject;

//Stinger Crate
_action = ["Launcher Crate (Stinger)", "Launcher Crate (Stinger)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_AAM_Stinger_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_AAM_Stinger_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner2, 0, ["Heli Factory", "Logistics", "Launchers - AA"], _action] call ace_interact_menu_fnc_addActionToObject;


///////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////US Heli Factory 3//////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////

//Create Root Action
_action = ["Heli Factory","Heli Factory","",{},{true},{},[], [2.5,3,-4.5], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;


//Clear Pad Action
_clearAction = ["Clear Pad","Clear Pad","z\tca\addons\bft\UI\icons\off.paa",{{deleteVehicle _x} forEach nearestObjects [VS_US_Heli_Pad3, ["AllVehicles"], 25]},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory"], _clearAction] call ace_interact_menu_fnc_addActionToObject;

//Repair/Rearm/Refuel Vehicle Action
_repairAction = ["Repair/Rearm/Refuel","Repair/Rearm/Refuel","\a3\ui_f\data\IGUI\Cfg\Actions\repair_ca.paa",
    {
        {_x setDamage 0} forEach nearestObjects [VS_US_Heli_Pad3, ["AllVehicles"], 25];
        {_x setVehicleAmmo 1} forEach nearestObjects [VS_US_Heli_Pad3, ["AllVehicles"], 25];
        {_x setFuel 1} forEach nearestObjects [VS_US_Heli_Pad3, ["AllVehicles"], 25]
    },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory"], _repairAction] call ace_interact_menu_fnc_addActionToObject;

//Create Heli Branch
_action = ["Helicopters","Helicopters","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//AH-6M
_action = ["AH-6M","AH-6M","rhsusf\addons\rhsusf_melb\Data\ui\map_melb_ah_6m_l_ca.paa",{
    _pad1 = getPosATL VS_US_Heli_Pad3;
    _dir = getDir VS_US_Heli_Pad3;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 6];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "RHS_MELB_AH6M",
            _pad1,
            [],
            0,
            "NONE"
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
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Helicopters"], _action] call ace_interact_menu_fnc_addActionToObject;

//MH-6M
_action = ["MH-6M","MH-6M","rhsusf\addons\rhsusf_melb\Data\ui\map_melb_mh_6m_ca.paa",{
    _pad1 = getPosATL VS_US_Heli_Pad3;
    _dir = getDir VS_US_Heli_Pad3;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 6];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "RHS_MELB_MH6M",
            _pad1,
            [],
            0,
            "NONE"
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
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Helicopters"], _action] call ace_interact_menu_fnc_addActionToObject;

//UH-1H
_action = ["UH-1H","UH-1H","rhsgref\addons\rhsgref_air\uh1h\ui\icon_uh1h_ca.paa",{
    _pad1 = getPosATL VS_US_Heli_Pad3;
    _dir = getDir VS_US_Heli_Pad3;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 6];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "UK3CB_CW_US_B_LATE_UH1H_M240",
            _pad1,
            [],
            0,
            "NONE"
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
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Helicopters"], _action] call ace_interact_menu_fnc_addActionToObject;

//UH-60
_action = ["UH-60M","UH-60M","\rhsusf\addons\rhsusf_a2port_air\data\mapico\Icon_uh60m_CA.paa",{
    _pad1 = getPosATL VS_US_Heli_Pad3;
    _dir = getDir VS_US_Heli_Pad3;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 6];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "RHS_UH60M",
            _pad1,
            [],
            0,
            "NONE"
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
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Helicopters"], _action] call ace_interact_menu_fnc_addActionToObject;

//CH-47
_action = ["CH-47F","CH-47F","\rhsusf\addons\rhsusf_a2port_air\data\mapico\Icon_ch47f_CA.paa",{
    _pad1 = getPosATL VS_US_Heli_Pad3;
    _dir = getDir VS_US_Heli_Pad3;
    // Check if there's already a vehicle on the pad
    _vehiclesOnPad = nearestObjects [_pad1, ["AllVehicles"], 6];
    if (count _vehiclesOnPad == 0) then {
        // If no vehicles on the pad, spawn a new one
        _veh = createVehicle
        [
            "RHS_CH_47F",
            _pad1,
            [],
            0,
            "NONE"
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
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Helicopters"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Logistics Branch
_action = ["Logistics","Logistics","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//Vehicle Crate
_action = ["Vehicle Service Crate", "Vehicle Service Crate", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_VehicleServiceMedium_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_VehicleServiceMedium_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startDrag;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Medical Crate
_action = ["Medical Crate", "Medical Crate", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Medical_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Medical_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Fireteam Branch
_action = ["Ammo - Fireteam","Ammo - Fireteam","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//STANAG Crate
_action = ["Fireteam Crate (STANAG)", "Fireteam Crate (STANAG)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_STANAG_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_STANAG_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//Cold War M16 Crate
_action = ["Fireteam Crate (Cold War M16)", "Fireteam Crate (Cold War M16)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_M16_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_M16_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//Cold War M14 Crate
_action = ["Fireteam Crate (Cold War M14)", "Fireteam Crate (Cold War M14)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_M14_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_M14_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//SCAR-H Crate
_action = ["Fireteam Crate (SCAR-H)", "Fireteam Crate (SCAR-H)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_Rangers_SCAR_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_Rangers_SCAR_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//PMC ACR Crate
_action = ["Fireteam Crate (PMC ACR)", "Fireteam Crate (PMC ACR)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_PMC_ACR_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_PMC_ACR_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//AK-545 Crate
_action = ["Fireteam Crate (AK-545)", "Fireteam Crate (AK-545)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_AK74_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_AK74_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//AK-762 Crate
_action = ["Fireteam Crate (AK-762)", "Fireteam Crate (AK-762)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_AK762_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_AK762_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//AK-762/PK Crate
_action = ["Fireteam Crate (AK-762/PK)", "Fireteam Crate (AK-762/PK)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_FinlandArmy_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_FinlandArmy_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//FAL Crate
_action = ["Fireteam Crate (FAL)", "Fireteam Crate (FAL)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_FAL_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_FAL_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//vz-58 Crate
_action = ["Fireteam Crate (vz-58)", "Fireteam Crate (vz-58)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_CZ_VZ58_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_CZ_VZ58_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//G36 Crate
_action = ["Fireteam Crate (G36)", "Fireteam Crate (G36)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_GER_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_GER_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//M21 Crate
_action = ["Fireteam Crate (M21)", "Fireteam Crate (M21)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_Serbia_Modern_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_Serbia_Modern_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//M70 Crate
_action = ["Fireteam Crate (M70)", "Fireteam Crate (M70)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_Fireteam_Serboslavia_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_Fireteam_Serboslavia_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create MMG Branch
_action = ["Ammo - MMG","Ammo - MMG","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//M240/M60/Mk48 Crate
_action = ["Ammo Crate (M240/M60/Mk48)", "Ammo Crate (M240/M60/Mk48)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_MMG_M240_M60_Mk48_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_MMG_M240_M60_Mk48_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - MMG"], _action] call ace_interact_menu_fnc_addActionToObject;

//PKM/PKP Crate
_action = ["Ammo Crate (PKM/PKP)", "Ammo Crate (PKM/PKP)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_MMG_PK_RU_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_MMG_PK_RU_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - MMG"], _action] call ace_interact_menu_fnc_addActionToObject;

//MG3 Crate
_action = ["Ammo Crate (MG3)", "Ammo Crate (MG3)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_MMG_MG3_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_MMG_MG3_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - MMG"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create MAT Branch
_action = ["Ammo - MAT","Ammo - MAT","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//MAAWS Crate
_action = ["Ammo Crate (MAAWS)", "Ammo Crate (MAAWS)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_MAT_MAAWS_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_MAT_MAAWS_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - MAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//RPG-7 Crate
_action = ["Ammo Crate (RPG-7)", "Ammo Crate (RPG-7)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_MAT_RPG7_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_MAT_RPG7_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - MAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create HAT Branch
_action = ["Ammo - HAT","Ammo - HAT","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Javelin Crate
_action = ["Ammo Crate (Javelin)", "Ammo Crate (Javelin)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_HAT_FGM148_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_HAT_FGM148_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - HAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//TOW Crate
_action = ["Ammo Crate (TOW)", "Ammo Crate (TOW)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_HAT_TOW_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_HAT_TOW_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - HAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Kornet Crate
_action = ["Ammo Crate (Kornet)", "Ammo Crate (Kornet)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_HAT_9M133_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_HAT_9M133_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Ammo - HAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create LAT Branch
_action = ["Launchers - LAT","Launchers - LAT","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//M136 Crate
_action = ["Launcher Crate (M136 AT-4)", "Launcher Crate (M136 AT-4)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_RAT_M136_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_RAT_M136_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Launchers - LAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//M72 LAW Crate
_action = ["Launcher Crate (M72 LAW)", "Launcher Crate (M72 LAW)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_RAT_M72A7_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_RAT_M72A7_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Launchers - LAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//RPG-26 Crate
_action = ["Launcher Crate (RPG-26)", "Launcher Crate (RPG-26)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_RAT_RPG26_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_RAT_RPG26_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Launchers - LAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create AA Branch
_action = ["Launchers - AA","Launchers - AA","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Igla Crate
// Define the action for cargo loading
_action = ["Launcher Crate (Igla)", "Launcher Crate (Igla)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
//If vehicle is on the pad, crate is loaded directly, else it's given to the player
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_AAM_Igla_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_AAM_Igla_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
// Add the action to the spawner object
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Launchers - AA"], _action] call ace_interact_menu_fnc_addActionToObject;

//Stinger Crate
_action = ["Launcher Crate (Stinger)", "Launcher Crate (Stinger)", "", {
    _vehArray = nearestObjects [VS_US_Heli_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
    if (count _vehArray > 0) then {
        _veh = _vehArray select 0;
        ["EVLT_AAM_Stinger_crate", _veh] call ace_cargo_fnc_loadItem;
        hintSilent "Cargo loaded";
    } else {
        _player = player;
        _crate = createVehicle ["EVLT_AAM_Stinger_crate", getPosATL _player, [], 0, "CAN_COLLIDE"];
        _crate allowDamage false;

        [_player, _crate] spawn {
            params ["_player", "_crate"];
            waitUntil {!isNull _crate};
            [_player, _crate] call ace_dragging_fnc_startCarry;
        };
    }
}, {true}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Heli_Spawner3, 0, ["Heli Factory", "Logistics", "Launchers - AA"], _action] call ace_interact_menu_fnc_addActionToObject;


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
