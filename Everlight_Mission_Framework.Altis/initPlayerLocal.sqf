[] execVM "QS_icons.sqf";

////////////////////////////////////////////////////

addMissionEventHandler ["MapSingleClick", {
  params ["_units", "_pos", "_alt", "_shift"];
    if !(["pilot", typeOf player, false] call BIS_fnc_inString) then {
      onMapSingleClick {_shift};
    };
}];

////////////////////////////////////////////////////
