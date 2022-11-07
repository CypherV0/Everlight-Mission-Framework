//selfTeleport.sqf
//Created by Cypher
//Allows any group leader to teleport just themselves upon a click of the map, during SafeStart only.

/*IMPORTANT! Place inside the init of all leaders, UNDER any existing code:

this addAction
[
  "<t color='#0096FF'>Deploy Self</t>",
  { execVM "selfTeleport.sqf"; },
  nil,
  25,
  false,
  true,
  "",
  "true",
  1,
  false
];

*/

params ["_leader", "_caller", "_id", "_args"]; //don't know what to do with these params other than _leader


// do nothing if teleport is not allowed
if !(call TMF_safestart_fnc_isActive) exitWith {};


openMap [true,false];

onMapSingleClick "player setPos _pos;
    openMap [false, false];
    onMapSingleClick '';
";

// to clear the map click event handler if user closes the map some other way
waitUntil {sleep 1;!visibleMap};
onMapSingleClick '';
