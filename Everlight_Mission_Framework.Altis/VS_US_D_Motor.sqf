///////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////US Vehicle Factory 1//////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////

//Clear Pad Action
_clearAction = ["Clear Pad","Clear Pad","z\tca\addons\bft\UI\icons\off.paa",{{deleteVehicle _x} forEach nearestObjects [VS_US_Motor_Pad1, ["AllVehicles"], 25]},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory"], _clearAction] call ace_interact_menu_fnc_addActionToObject;

//Create Root Action
_action = ["Vehicle Factory","Vehicle Factory","",{},{true},{},[], [0,0,2], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Light Branch
_action = ["Light","Light","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (Unarmed)
_action = ["HMMWV (Unarmed)","HMMWV (Unarmed)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025.paa",{
 _pad1 = getPosATL VS_US_Motor_Pad1;
     _dir = getDir VS_US_Motor_Pad1;
        _veh = createVehicle
         [
             "rhsusf_m1025_d",
             _pad1,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Light"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (M2)
_action = ["HMMWV (M2)","HMMWV (M2)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025_m2.paa",{
 _pad1 = getPosATL VS_US_Motor_Pad1;
     _dir = getDir VS_US_Motor_Pad1;
        _veh = createVehicle
         [
             "rhsusf_m1025_d_m2",
             _pad1,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Light"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (Mk19)
_action = ["HMMWV (Mk19)","HMMWV (Mk19)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025_mk19.paa",{
 _pad1 = getPosATL VS_US_Motor_Pad1;
     _dir = getDir VS_US_Motor_Pad1;
        _veh = createVehicle
         [
             "rhsusf_m1025_d_mk19",
             _pad1,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Light"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (2D/Open)
_action = ["HMMWV (2D/Open)","HMMWV (2D/Open)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m998_2dr_open.paa",{
 _pad1 = getPosATL VS_US_Motor_Pad1;
     _dir = getDir VS_US_Motor_Pad1;
        _veh = createVehicle
         [
             "rhsusf_m998_d_2dr",
             _pad1,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Light"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (4D/Open)
_action = ["HMMWV (4D/Open)","HMMWV (4D/Open)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m998_4dr_open.paa",{
 _pad1 = getPosATL VS_US_Motor_Pad1;
     _dir = getDir VS_US_Motor_Pad1;
        _veh = createVehicle
         [
             "rhsusf_m998_d_4dr",
             _pad1,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Light"], _action] call ace_interact_menu_fnc_addActionToObject;

//MTV
_action = ["MTV","MTV","\rhsusf\addons\rhsusf_c_fmtv\data\ico\ico_m1083.paa",{
 _pad1 = getPosATL VS_US_Motor_Pad1;
     _dir = getDir VS_US_Motor_Pad1;
        _veh = createVehicle
         [
             "rhsusf_M1083A1P2_D_fmtv_usarmy",
             _pad1,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Light"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Medium Branch
_action = ["Medium","Medium","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (UA/Unarmed)
_action = ["HMMWV (UA/Unarmed)","HMMWV (UA/Unarmed)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025.paa",{
_pad1 = getPosATL VS_US_Motor_Pad1;
     _dir = getDir VS_US_Motor_Pad1;
        _veh = createVehicle
         [
             "rhsusf_m1151_usmc_d",
             _pad1,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory","Medium"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (UA/M240)
_action = ["HMMWV (UA/M240)","HMMWV (UA/M240)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025_m2.paa",{
_pad1 = getPosATL VS_US_Motor_Pad1;
     _dir = getDir VS_US_Motor_Pad1;
        _veh = createVehicle
         [
             "rhsusf_m1151_m240_v3_usmc_d",
             _pad1,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory","Medium"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (UA/M2)
_action = ["HMMWV (UA/M2)","HMMWV (UA/M2)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025_m2.paa",{
_pad1 = getPosATL VS_US_Motor_Pad1;
     _dir = getDir VS_US_Motor_Pad1;
        _veh = createVehicle
         [
             "rhsusf_m1151_m2_v3_usmc_d",
             _pad1,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory","Medium"], _action] call ace_interact_menu_fnc_addActionToObject;

//MTV (UA)
_action = ["MTV (UA)","MTV (UA)","\rhsusf\addons\rhsusf_c_fmtv\data\ico\ico_m1083.paa",{
_pad1 = getPosATL VS_US_Motor_Pad1;
     _dir = getDir VS_US_Motor_Pad1;
        _veh = createVehicle
         [
             "rhsusf_M1083A1P2_B_D_fmtv_usarmy",
             _pad1,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory","Medium"], _action] call ace_interact_menu_fnc_addActionToObject;

//MTV (UA/M2)
_action = ["MTV (UA/M2)","MTV (UA/M2)","\rhsusf\addons\rhsusf_c_fmtv\data\ico\ico_m1083_m2.paa",{
_pad1 = getPosATL VS_US_Motor_Pad1;
     _dir = getDir VS_US_Motor_Pad1;
        _veh = createVehicle
         [
             "rhsusf_M1083A1P2_B_M2_D_fmtv_usarmy",
             _pad1,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory","Medium"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Heavy Branch
_action = ["Heavy","Heavy","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//MRAP (Unarmed)
_action = ["MRAP (Unarmed)","MRAP (Unarmed)","\a3\soft_f_beta\Truck_01\Data\UI\map_truck_01_CA.paa",{
_pad1 = getPosATL VS_US_Motor_Pad1;
     _dir = getDir VS_US_Motor_Pad1;
        _veh = createVehicle
         [
             "rhsusf_M1232_usarmy_d",
             _pad1,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Heavy"], _action] call ace_interact_menu_fnc_addActionToObject;

//MRAP (UA/M2)
_action = ["MRAP (UA/M2)","MRAP (UA/M2)","\a3\soft_f_beta\Truck_01\Data\UI\map_truck_01_CA.paa",{
_pad1 = getPosATL VS_US_Motor_Pad1;
     _dir = getDir VS_US_Motor_Pad1;
        _veh = createVehicle
         [
             "rhsusf_M1237_M2_usarmy_d",
             _pad1,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Heavy"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Weapon Carrier Branch
_action = ["Weapon Carriers","Weapon Carriers","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV Avenger
_action = ["HMMWV Avenger","HMMWV Avenger","\CUP\WheeledVehicles\CUP_WheeledVehicles_NewHMMWV\data\ui\icomap_nM1025_CA.paa",{
_pad1 = getPosATL VS_US_Motor_Pad1;
     _dir = getDir VS_US_Motor_Pad1;
        _veh = createVehicle
         [
             "CUP_B_nM1097_AVENGER_USMC_DES",
             _pad1,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Weapon Carriers"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (TOW)
_action = ["HMMWV (TOW)","HMMWV (TOW)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025_m2.paa",{
_pad1 = getPosATL VS_US_Motor_Pad1;
     _dir = getDir VS_US_Motor_Pad1;
        _veh = createVehicle
         [
             "UK3CB_KRG_B_M1025_TOW",
             _pad1,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Weapon Carriers"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Logistics Branch
_action = ["Logistics","Logistics","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//Supply Truck
_action = ["Supply Truck","Supply Truck","\a3\soft_f_beta\Truck_01\Data\UI\map_truck_01_CA.paa",{
_pad1 = getPosATL VS_US_Motor_Pad1;
     _dir = getDir VS_US_Motor_Pad1;
        _veh = createVehicle
         [
             "rhsusf_M977A4_REPAIR_usarmy_d",
             _pad1,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Vehicle Crate
_action = ["Vehicle Service Crate", "Vehicle Service Crate", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Medical Crate
_action = ["Medical Crate", "Medical Crate", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Fireteam Branch
_action = ["Ammo - Fireteam","Ammo - Fireteam","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//STANAG Crate
_action = ["Fireteam Crate (STANAG)", "Fireteam Crate (STANAG)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//Cold War M16 Crate
_action = ["Fireteam Crate (Cold War M16)", "Fireteam Crate (Cold War M16)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//Cold War M14 Crate
_action = ["Fireteam Crate (Cold War M14)", "Fireteam Crate (Cold War M14)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//SCAR-H Crate
_action = ["Fireteam Crate (SCAR-H)", "Fireteam Crate (SCAR-H)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//PMC ACR Crate
_action = ["Fireteam Crate (PMC ACR)", "Fireteam Crate (PMC ACR)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//AK-545 Crate
_action = ["Fireteam Crate (AK-545)", "Fireteam Crate (AK-545)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//AK-762 Crate
_action = ["Fireteam Crate (AK-762)", "Fireteam Crate (AK-762)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//FAL Crate
_action = ["Fireteam Crate (FAL)", "Fireteam Crate (FAL)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//vz-58 Crate
_action = ["Fireteam Crate (vz-58)", "Fireteam Crate (vz-58)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//G36 Crate
_action = ["Fireteam Crate (G36)", "Fireteam Crate (G36)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//M21 Crate
_action = ["Fireteam Crate (M21)", "Fireteam Crate (M21)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//M70 Crate
_action = ["Fireteam Crate (M70)", "Fireteam Crate (M70)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create MMG Branch
_action = ["Ammo - MMG","Ammo - MMG","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//M240/M60/Mk48 Crate
_action = ["Ammo Crate (M240/M60/Mk48)", "Ammo Crate (M240/M60/Mk48)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - MMG"], _action] call ace_interact_menu_fnc_addActionToObject;

//PKM/PKP Crate
_action = ["Ammo Crate (PKM/PKP)", "Ammo Crate (PKM/PKP)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - MMG"], _action] call ace_interact_menu_fnc_addActionToObject;

//MG3 Crate
_action = ["Ammo Crate (MG3)", "Ammo Crate (MG3)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - MMG"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create MAT Branch
_action = ["Ammo - MAT","Ammo - MAT","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//MAAWS Crate
_action = ["Ammo Crate (MAAWS)", "Ammo Crate (MAAWS)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - MAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//RPG-7 Crate
_action = ["Ammo Crate (RPG-7)", "Ammo Crate (RPG-7)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - MAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create HAT Branch
_action = ["Ammo - HAT","Ammo - HAT","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Javelin Crate
_action = ["Ammo Crate (Javelin)", "Ammo Crate (Javelin)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - HAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//TOW Crate
_action = ["Ammo Crate (TOW)", "Ammo Crate (TOW)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - HAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Kornet Crate
_action = ["Ammo Crate (Kornet)", "Ammo Crate (Kornet)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Ammo - HAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create LAT Branch
_action = ["Launchers - LAT","Launchers - LAT","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//M136 Crate
_action = ["Launcher Crate (M136 AT-4)", "Launcher Crate (M136 AT-4)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Launchers - LAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//M72 LAW Crate
_action = ["Launcher Crate (M72 LAW)", "Launcher Crate (M72 LAW)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Launchers - LAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//RPG-26 Crate
_action = ["Launcher Crate (RPG-26)", "Launcher Crate (RPG-26)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Launchers - LAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create AA Branch
_action = ["Launchers - AA","Launchers - AA","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Igla Crate
// Define the action for cargo loading
_action = ["Launcher Crate (Igla)", "Launcher Crate (Igla)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Launchers - AA"], _action] call ace_interact_menu_fnc_addActionToObject;

//Stinger Crate
_action = ["Launcher Crate (Stinger)", "Launcher Crate (Stinger)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad1, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner1, 0, ["Vehicle Factory", "Logistics", "Launchers - AA"], _action] call ace_interact_menu_fnc_addActionToObject;


///////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////US Vehicle Factory 2//////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////

//Clear Pad Action
_clearAction = ["Clear Pad","Clear Pad","z\tca\addons\bft\UI\icons\off.paa",{{deleteVehicle _x} forEach nearestObjects [VS_US_Motor_Pad2, ["AllVehicles"], 25]},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory"], _clearAction] call ace_interact_menu_fnc_addActionToObject;

//Create Root Action
_action = ["Vehicle Factory","Vehicle Factory","",{},{true},{},[], [0,0,2], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Light Branch
_action = ["Light","Light","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (Unarmed)
_action = ["HMMWV (Unarmed)","HMMWV (Unarmed)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025.paa",{
 _Pad2 = getPosATL VS_US_Motor_Pad2;
     _dir = getDir VS_US_Motor_Pad2;
        _veh = createVehicle
         [
             "rhsusf_m1025_d",
             _Pad2,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Light"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (M2)
_action = ["HMMWV (M2)","HMMWV (M2)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025_m2.paa",{
 _Pad2 = getPosATL VS_US_Motor_Pad2;
     _dir = getDir VS_US_Motor_Pad2;
        _veh = createVehicle
         [
             "rhsusf_m1025_d_m2",
             _Pad2,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Light"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (Mk19)
_action = ["HMMWV (Mk19)","HMMWV (Mk19)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025_mk19.paa",{
 _Pad2 = getPosATL VS_US_Motor_Pad2;
     _dir = getDir VS_US_Motor_Pad2;
        _veh = createVehicle
         [
             "rhsusf_m1025_d_mk19",
             _Pad2,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Light"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (2D/Open)
_action = ["HMMWV (2D/Open)","HMMWV (2D/Open)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m998_2dr_open.paa",{
 _Pad2 = getPosATL VS_US_Motor_Pad2;
     _dir = getDir VS_US_Motor_Pad2;
        _veh = createVehicle
         [
             "rhsusf_m998_d_2dr",
             _Pad2,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Light"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (4D/Open)
_action = ["HMMWV (4D/Open)","HMMWV (4D/Open)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m998_4dr_open.paa",{
 _Pad2 = getPosATL VS_US_Motor_Pad2;
     _dir = getDir VS_US_Motor_Pad2;
        _veh = createVehicle
         [
             "rhsusf_m998_d_4dr",
             _Pad2,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Light"], _action] call ace_interact_menu_fnc_addActionToObject;

//MTV
_action = ["MTV","MTV","\rhsusf\addons\rhsusf_c_fmtv\data\ico\ico_m1083.paa",{
 _Pad2 = getPosATL VS_US_Motor_Pad2;
     _dir = getDir VS_US_Motor_Pad2;
        _veh = createVehicle
         [
             "rhsusf_M1083A1P2_D_fmtv_usarmy",
             _Pad2,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Light"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Medium Branch
_action = ["Medium","Medium","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (UA/Unarmed)
_action = ["HMMWV (UA/Unarmed)","HMMWV (UA/Unarmed)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025.paa",{
_Pad2 = getPosATL VS_US_Motor_Pad2;
     _dir = getDir VS_US_Motor_Pad2;
        _veh = createVehicle
         [
             "rhsusf_m1151_usmc_d",
             _Pad2,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory","Medium"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (UA/M240)
_action = ["HMMWV (UA/M240)","HMMWV (UA/M240)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025_m2.paa",{
_Pad2 = getPosATL VS_US_Motor_Pad2;
     _dir = getDir VS_US_Motor_Pad2;
        _veh = createVehicle
         [
             "rhsusf_m1151_m240_v3_usmc_d",
             _Pad2,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory","Medium"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (UA/M2)
_action = ["HMMWV (UA/M2)","HMMWV (UA/M2)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025_m2.paa",{
_Pad2 = getPosATL VS_US_Motor_Pad2;
     _dir = getDir VS_US_Motor_Pad2;
        _veh = createVehicle
         [
             "rhsusf_m1151_m2_v3_usmc_d",
             _Pad2,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory","Medium"], _action] call ace_interact_menu_fnc_addActionToObject;

//MTV (UA)
_action = ["MTV (UA)","MTV (UA)","\rhsusf\addons\rhsusf_c_fmtv\data\ico\ico_m1083.paa",{
_Pad2 = getPosATL VS_US_Motor_Pad2;
     _dir = getDir VS_US_Motor_Pad2;
        _veh = createVehicle
         [
             "rhsusf_M1083A1P2_B_D_fmtv_usarmy",
             _Pad2,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory","Medium"], _action] call ace_interact_menu_fnc_addActionToObject;

//MTV (UA/M2)
_action = ["MTV (UA/M2)","MTV (UA/M2)","\rhsusf\addons\rhsusf_c_fmtv\data\ico\ico_m1083_m2.paa",{
_Pad2 = getPosATL VS_US_Motor_Pad2;
     _dir = getDir VS_US_Motor_Pad2;
        _veh = createVehicle
         [
             "rhsusf_M1083A1P2_B_M2_D_fmtv_usarmy",
             _Pad2,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory","Medium"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Heavy Branch
_action = ["Heavy","Heavy","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//MRAP (Unarmed)
_action = ["MRAP (Unarmed)","MRAP (Unarmed)","\a3\soft_f_beta\Truck_01\Data\UI\map_truck_01_CA.paa",{
_Pad2 = getPosATL VS_US_Motor_Pad2;
     _dir = getDir VS_US_Motor_Pad2;
        _veh = createVehicle
         [
             "rhsusf_M1232_usarmy_d",
             _Pad2,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Heavy"], _action] call ace_interact_menu_fnc_addActionToObject;

//MRAP (UA/M2)
_action = ["MRAP (UA/M2)","MRAP (UA/M2)","\a3\soft_f_beta\Truck_01\Data\UI\map_truck_01_CA.paa",{
_Pad2 = getPosATL VS_US_Motor_Pad2;
     _dir = getDir VS_US_Motor_Pad2;
        _veh = createVehicle
         [
             "rhsusf_M1237_M2_usarmy_d",
             _Pad2,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Heavy"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Weapon Carrier Branch
_action = ["Weapon Carriers","Weapon Carriers","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV Avenger
_action = ["HMMWV Avenger","HMMWV Avenger","\CUP\WheeledVehicles\CUP_WheeledVehicles_NewHMMWV\data\ui\icomap_nM1025_CA.paa",{
_Pad2 = getPosATL VS_US_Motor_Pad2;
     _dir = getDir VS_US_Motor_Pad2;
        _veh = createVehicle
         [
             "CUP_B_nM1097_AVENGER_USMC_DES",
             _Pad2,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Weapon Carriers"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (TOW)
_action = ["HMMWV (TOW)","HMMWV (TOW)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025_m2.paa",{
_Pad2 = getPosATL VS_US_Motor_Pad2;
     _dir = getDir VS_US_Motor_Pad2;
        _veh = createVehicle
         [
             "UK3CB_KRG_B_M1025_TOW",
             _Pad2,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Weapon Carriers"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Logistics Branch
_action = ["Logistics","Logistics","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//Supply Truck
_action = ["Supply Truck","Supply Truck","\a3\soft_f_beta\Truck_01\Data\UI\map_truck_01_CA.paa",{
_Pad2 = getPosATL VS_US_Motor_Pad2;
     _dir = getDir VS_US_Motor_Pad2;
        _veh = createVehicle
         [
             "rhsusf_M977A4_REPAIR_usarmy_d",
             _Pad2,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Vehicle Crate
_action = ["Vehicle Service Crate", "Vehicle Service Crate", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Medical Crate
_action = ["Medical Crate", "Medical Crate", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Fireteam Branch
_action = ["Ammo - Fireteam","Ammo - Fireteam","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//STANAG Crate
_action = ["Fireteam Crate (STANAG)", "Fireteam Crate (STANAG)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//Cold War M16 Crate
_action = ["Fireteam Crate (Cold War M16)", "Fireteam Crate (Cold War M16)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//Cold War M14 Crate
_action = ["Fireteam Crate (Cold War M14)", "Fireteam Crate (Cold War M14)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//SCAR-H Crate
_action = ["Fireteam Crate (SCAR-H)", "Fireteam Crate (SCAR-H)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//PMC ACR Crate
_action = ["Fireteam Crate (PMC ACR)", "Fireteam Crate (PMC ACR)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//AK-545 Crate
_action = ["Fireteam Crate (AK-545)", "Fireteam Crate (AK-545)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//AK-762 Crate
_action = ["Fireteam Crate (AK-762)", "Fireteam Crate (AK-762)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//FAL Crate
_action = ["Fireteam Crate (FAL)", "Fireteam Crate (FAL)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//vz-58 Crate
_action = ["Fireteam Crate (vz-58)", "Fireteam Crate (vz-58)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//G36 Crate
_action = ["Fireteam Crate (G36)", "Fireteam Crate (G36)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//M21 Crate
_action = ["Fireteam Crate (M21)", "Fireteam Crate (M21)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//M70 Crate
_action = ["Fireteam Crate (M70)", "Fireteam Crate (M70)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create MMG Branch
_action = ["Ammo - MMG","Ammo - MMG","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//M240/M60/Mk48 Crate
_action = ["Ammo Crate (M240/M60/Mk48)", "Ammo Crate (M240/M60/Mk48)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - MMG"], _action] call ace_interact_menu_fnc_addActionToObject;

//PKM/PKP Crate
_action = ["Ammo Crate (PKM/PKP)", "Ammo Crate (PKM/PKP)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - MMG"], _action] call ace_interact_menu_fnc_addActionToObject;

//MG3 Crate
_action = ["Ammo Crate (MG3)", "Ammo Crate (MG3)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - MMG"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create MAT Branch
_action = ["Ammo - MAT","Ammo - MAT","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//MAAWS Crate
_action = ["Ammo Crate (MAAWS)", "Ammo Crate (MAAWS)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - MAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//RPG-7 Crate
_action = ["Ammo Crate (RPG-7)", "Ammo Crate (RPG-7)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - MAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create HAT Branch
_action = ["Ammo - HAT","Ammo - HAT","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Javelin Crate
_action = ["Ammo Crate (Javelin)", "Ammo Crate (Javelin)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - HAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//TOW Crate
_action = ["Ammo Crate (TOW)", "Ammo Crate (TOW)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - HAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Kornet Crate
_action = ["Ammo Crate (Kornet)", "Ammo Crate (Kornet)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Ammo - HAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create LAT Branch
_action = ["Launchers - LAT","Launchers - LAT","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//M136 Crate
_action = ["Launcher Crate (M136 AT-4)", "Launcher Crate (M136 AT-4)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Launchers - LAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//M72 LAW Crate
_action = ["Launcher Crate (M72 LAW)", "Launcher Crate (M72 LAW)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Launchers - LAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//RPG-26 Crate
_action = ["Launcher Crate (RPG-26)", "Launcher Crate (RPG-26)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Launchers - LAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create AA Branch
_action = ["Launchers - AA","Launchers - AA","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Igla Crate
// Define the action for cargo loading
_action = ["Launcher Crate (Igla)", "Launcher Crate (Igla)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Launchers - AA"], _action] call ace_interact_menu_fnc_addActionToObject;

//Stinger Crate
_action = ["Launcher Crate (Stinger)", "Launcher Crate (Stinger)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad2, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner2, 0, ["Vehicle Factory", "Logistics", "Launchers - AA"], _action] call ace_interact_menu_fnc_addActionToObject;


///////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////US Vehicle Factory 3//////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////

//Clear Pad Action
_clearAction = ["Clear Pad","Clear Pad","z\tca\addons\bft\UI\icons\off.paa",{{deleteVehicle _x} forEach nearestObjects [VS_US_Motor_Pad3, ["AllVehicles"], 25]},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory"], _clearAction] call ace_interact_menu_fnc_addActionToObject;

//Create Root Action
_action = ["Vehicle Factory","Vehicle Factory","",{},{true},{},[], [0,0,2], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Light Branch
_action = ["Light","Light","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (Unarmed)
_action = ["HMMWV (Unarmed)","HMMWV (Unarmed)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025.paa",{
 _Pad3 = getPosATL VS_US_Motor_Pad3;
     _dir = getDir VS_US_Motor_Pad3;
        _veh = createVehicle
         [
             "rhsusf_m1025_d",
             _Pad3,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Light"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (M2)
_action = ["HMMWV (M2)","HMMWV (M2)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025_m2.paa",{
 _Pad3 = getPosATL VS_US_Motor_Pad3;
     _dir = getDir VS_US_Motor_Pad3;
        _veh = createVehicle
         [
             "rhsusf_m1025_d_m2",
             _Pad3,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Light"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (Mk19)
_action = ["HMMWV (Mk19)","HMMWV (Mk19)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025_mk19.paa",{
 _Pad3 = getPosATL VS_US_Motor_Pad3;
     _dir = getDir VS_US_Motor_Pad3;
        _veh = createVehicle
         [
             "rhsusf_m1025_d_mk19",
             _Pad3,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Light"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (2D/Open)
_action = ["HMMWV (2D/Open)","HMMWV (2D/Open)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m998_2dr_open.paa",{
 _Pad3 = getPosATL VS_US_Motor_Pad3;
     _dir = getDir VS_US_Motor_Pad3;
        _veh = createVehicle
         [
             "rhsusf_m998_d_2dr",
             _Pad3,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Light"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (4D/Open)
_action = ["HMMWV (4D/Open)","HMMWV (4D/Open)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m998_4dr_open.paa",{
 _Pad3 = getPosATL VS_US_Motor_Pad3;
     _dir = getDir VS_US_Motor_Pad3;
        _veh = createVehicle
         [
             "rhsusf_m998_d_4dr",
             _Pad3,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Light"], _action] call ace_interact_menu_fnc_addActionToObject;

//MTV
_action = ["MTV","MTV","\rhsusf\addons\rhsusf_c_fmtv\data\ico\ico_m1083.paa",{
 _Pad3 = getPosATL VS_US_Motor_Pad3;
     _dir = getDir VS_US_Motor_Pad3;
        _veh = createVehicle
         [
             "rhsusf_M1083A1P2_D_fmtv_usarmy",
             _Pad3,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Light"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Medium Branch
_action = ["Medium","Medium","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (UA/Unarmed)
_action = ["HMMWV (UA/Unarmed)","HMMWV (UA/Unarmed)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025.paa",{
_Pad3 = getPosATL VS_US_Motor_Pad3;
     _dir = getDir VS_US_Motor_Pad3;
        _veh = createVehicle
         [
             "rhsusf_m1151_usmc_d",
             _Pad3,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory","Medium"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (UA/M240)
_action = ["HMMWV (UA/M240)","HMMWV (UA/M240)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025_m2.paa",{
_Pad3 = getPosATL VS_US_Motor_Pad3;
     _dir = getDir VS_US_Motor_Pad3;
        _veh = createVehicle
         [
             "rhsusf_m1151_m240_v3_usmc_d",
             _Pad3,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory","Medium"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (UA/M2)
_action = ["HMMWV (UA/M2)","HMMWV (UA/M2)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025_m2.paa",{
_Pad3 = getPosATL VS_US_Motor_Pad3;
     _dir = getDir VS_US_Motor_Pad3;
        _veh = createVehicle
         [
             "rhsusf_m1151_m2_v3_usmc_d",
             _Pad3,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory","Medium"], _action] call ace_interact_menu_fnc_addActionToObject;

//MTV (UA)
_action = ["MTV (UA)","MTV (UA)","\rhsusf\addons\rhsusf_c_fmtv\data\ico\ico_m1083.paa",{
_Pad3 = getPosATL VS_US_Motor_Pad3;
     _dir = getDir VS_US_Motor_Pad3;
        _veh = createVehicle
         [
             "rhsusf_M1083A1P2_B_D_fmtv_usarmy",
             _Pad3,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory","Medium"], _action] call ace_interact_menu_fnc_addActionToObject;

//MTV (UA/M2)
_action = ["MTV (UA/M2)","MTV (UA/M2)","\rhsusf\addons\rhsusf_c_fmtv\data\ico\ico_m1083_m2.paa",{
_Pad3 = getPosATL VS_US_Motor_Pad3;
     _dir = getDir VS_US_Motor_Pad3;
        _veh = createVehicle
         [
             "rhsusf_M1083A1P2_B_M2_D_fmtv_usarmy",
             _Pad3,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory","Medium"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Heavy Branch
_action = ["Heavy","Heavy","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//MRAP (Unarmed)
_action = ["MRAP (Unarmed)","MRAP (Unarmed)","\a3\soft_f_beta\Truck_01\Data\UI\map_truck_01_CA.paa",{
_Pad3 = getPosATL VS_US_Motor_Pad3;
     _dir = getDir VS_US_Motor_Pad3;
        _veh = createVehicle
         [
             "rhsusf_M1232_usarmy_d",
             _Pad3,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Heavy"], _action] call ace_interact_menu_fnc_addActionToObject;

//MRAP (UA/M2)
_action = ["MRAP (UA/M2)","MRAP (UA/M2)","\a3\soft_f_beta\Truck_01\Data\UI\map_truck_01_CA.paa",{
_Pad3 = getPosATL VS_US_Motor_Pad3;
     _dir = getDir VS_US_Motor_Pad3;
        _veh = createVehicle
         [
             "rhsusf_M1237_M2_usarmy_d",
             _Pad3,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Heavy"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Weapon Carrier Branch
_action = ["Weapon Carriers","Weapon Carriers","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV Avenger
_action = ["HMMWV Avenger","HMMWV Avenger","\CUP\WheeledVehicles\CUP_WheeledVehicles_NewHMMWV\data\ui\icomap_nM1025_CA.paa",{
_Pad3 = getPosATL VS_US_Motor_Pad3;
     _dir = getDir VS_US_Motor_Pad3;
        _veh = createVehicle
         [
             "CUP_B_nM1097_AVENGER_USMC_DES",
             _Pad3,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Weapon Carriers"], _action] call ace_interact_menu_fnc_addActionToObject;

//HMMWV (TOW)
_action = ["HMMWV (TOW)","HMMWV (TOW)","\rhsusf\addons\rhsusf_hmmwv\icons\ico_m1025_m2.paa",{
_Pad3 = getPosATL VS_US_Motor_Pad3;
     _dir = getDir VS_US_Motor_Pad3;
        _veh = createVehicle
         [
             "UK3CB_KRG_B_M1025_TOW",
             _Pad3,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Weapon Carriers"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Logistics Branch
_action = ["Logistics","Logistics","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory"], _action] call ace_interact_menu_fnc_addActionToObject;

//Supply Truck
_action = ["Supply Truck","Supply Truck","\a3\soft_f_beta\Truck_01\Data\UI\map_truck_01_CA.paa",{
_Pad3 = getPosATL VS_US_Motor_Pad3;
     _dir = getDir VS_US_Motor_Pad3;
        _veh = createVehicle
         [
             "rhsusf_M977A4_REPAIR_usarmy_d",
             _Pad3,
             [],
             0,
             "NONE"
         ];
        _veh setDir _dir;
  },{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Vehicle Crate
_action = ["Vehicle Service Crate", "Vehicle Service Crate", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Medical Crate
_action = ["Medical Crate", "Medical Crate", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create Fireteam Branch
_action = ["Ammo - Fireteam","Ammo - Fireteam","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//STANAG Crate
_action = ["Fireteam Crate (STANAG)", "Fireteam Crate (STANAG)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//Cold War M16 Crate
_action = ["Fireteam Crate (Cold War M16)", "Fireteam Crate (Cold War M16)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//Cold War M14 Crate
_action = ["Fireteam Crate (Cold War M14)", "Fireteam Crate (Cold War M14)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//SCAR-H Crate
_action = ["Fireteam Crate (SCAR-H)", "Fireteam Crate (SCAR-H)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//PMC ACR Crate
_action = ["Fireteam Crate (PMC ACR)", "Fireteam Crate (PMC ACR)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//AK-545 Crate
_action = ["Fireteam Crate (AK-545)", "Fireteam Crate (AK-545)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//AK-762 Crate
_action = ["Fireteam Crate (AK-762)", "Fireteam Crate (AK-762)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//FAL Crate
_action = ["Fireteam Crate (FAL)", "Fireteam Crate (FAL)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//vz-58 Crate
_action = ["Fireteam Crate (vz-58)", "Fireteam Crate (vz-58)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//G36 Crate
_action = ["Fireteam Crate (G36)", "Fireteam Crate (G36)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//M21 Crate
_action = ["Fireteam Crate (M21)", "Fireteam Crate (M21)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//M70 Crate
_action = ["Fireteam Crate (M70)", "Fireteam Crate (M70)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - Fireteam"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create MMG Branch
_action = ["Ammo - MMG","Ammo - MMG","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//M240/M60/Mk48 Crate
_action = ["Ammo Crate (M240/M60/Mk48)", "Ammo Crate (M240/M60/Mk48)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - MMG"], _action] call ace_interact_menu_fnc_addActionToObject;

//PKM/PKP Crate
_action = ["Ammo Crate (PKM/PKP)", "Ammo Crate (PKM/PKP)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - MMG"], _action] call ace_interact_menu_fnc_addActionToObject;

//MG3 Crate
_action = ["Ammo Crate (MG3)", "Ammo Crate (MG3)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - MMG"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create MAT Branch
_action = ["Ammo - MAT","Ammo - MAT","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//MAAWS Crate
_action = ["Ammo Crate (MAAWS)", "Ammo Crate (MAAWS)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - MAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//RPG-7 Crate
_action = ["Ammo Crate (RPG-7)", "Ammo Crate (RPG-7)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - MAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create HAT Branch
_action = ["Ammo - HAT","Ammo - HAT","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Javelin Crate
_action = ["Ammo Crate (Javelin)", "Ammo Crate (Javelin)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - HAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//TOW Crate
_action = ["Ammo Crate (TOW)", "Ammo Crate (TOW)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - HAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Kornet Crate
_action = ["Ammo Crate (Kornet)", "Ammo Crate (Kornet)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Ammo - HAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create LAT Branch
_action = ["Launchers - LAT","Launchers - LAT","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//M136 Crate
_action = ["Launcher Crate (M136 AT-4)", "Launcher Crate (M136 AT-4)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Launchers - LAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//M72 LAW Crate
_action = ["Launcher Crate (M72 LAW)", "Launcher Crate (M72 LAW)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Launchers - LAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//RPG-26 Crate
_action = ["Launcher Crate (RPG-26)", "Launcher Crate (RPG-26)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Launchers - LAT"], _action] call ace_interact_menu_fnc_addActionToObject;

//Create AA Branch
_action = ["Launchers - AA","Launchers - AA","",{},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics"], _action] call ace_interact_menu_fnc_addActionToObject;

//Igla Crate
// Define the action for cargo loading
_action = ["Launcher Crate (Igla)", "Launcher Crate (Igla)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Launchers - AA"], _action] call ace_interact_menu_fnc_addActionToObject;

//Stinger Crate
_action = ["Launcher Crate (Stinger)", "Launcher Crate (Stinger)", "", {
    _vehArray = nearestObjects [VS_US_Motor_Pad3, ["Car", "Helicopter", "Motorcycle", "Plane", "Ship", "TrackedAPC", "Tank", "WheeledAPC"], 15];
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
[VS_US_Motor_Spawner3, 0, ["Vehicle Factory", "Logistics", "Launchers - AA"], _action] call ace_interact_menu_fnc_addActionToObject;


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
