//groupTeleport.sqf
//Created by Ferdilanz and Cypher with help from Arma community members: pierremgi, mrcurry, and artemoz
//teleports the group with the leader upon a click of the map, during SafeStart only.

/*IMPORTANT! Place inside the init of all leaders:

this addAction
[
  "<t color='#0096FF'>Deploy Group</t>",
  { execVM "groupTeleport.sqf"; },
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

onMapSingleClick "
    params ['_pos','_units','_shift','_alt','_dir','_leader','_dist'];
    _units = units player;
    _leader = leader group player;
    _teleport = _units apply {[_x, _pos getpos [_leader distance _x,_leader getDir _x]]};
    {
        [_x#0, _x#1] remoteExec ['setPos', _x#0];
    } forEach _teleport;
    openMap [false, false];
    onMapSingleClick '';
";

// to clear the map click event handler if user closes the map some other way
waitUntil {sleep 1;!visibleMap};
onMapSingleClick '';
