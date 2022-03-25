//markerPulse by Cypher, 2-9-2022
//DO NOT CHANGE ANY VALUES THAT ARE NOT LISTED IN THE INSTRUCTIONS!
//
//NOTE: When I say "label" something, I'm referring to the Variable Name
//
//INSTRUCTIONS: 1- In the editor, place a crate, vehicle, or other object and label it pulseObject_1
//              2- Then, place an AREA Marker with these attributes (Size: 0 and 0, Shape: Ellipse, Brush: Border, Color: Blufor) and label it pulse_1
/*              3- Add this code to the init of the object:

this addAction
  [
    "<t color= '#FF0000'>Disable Beacon</t>",
    { deleteMarker "pulse_1"; [_this select 0,_this select 2] remoteExec ["removeAction", 0, true]; },
    nil,
    1.5,
    false,
    true,
    "",
    "true",
    1,
    false
  ];

//              4- If you want to mark multiple objects, repeat all of the above steps with pulse_2 and pulseObject_2, and so on.
//              5- Then, remove the // in front of each of the corresponding lines below.
*/


while {true} do {
    sleep 2;
    "pulse_1" setMarkerPos position pulseObject_1;
    //"pulse_2" setMarkerPos position pulseObject_2;
    //"pulse_3" setMarkerPos position pulseObject_3;
    sleep 2;
    "pulse_1" setMarkerAlpha 1;
    //"pulse_2" setMarkerAlpha 1;
    //"pulse_3" setMarkerAlpha 1;
    sleep 2;
    ["pulse_1",[100,100],3] spawn BIS_fnc_resizeMarker;
    //["pulse_2",[100,100],3] spawn BIS_fnc_resizeMarker;
    //["pulse_3",[100,100],3] spawn BIS_fnc_resizeMarker;
    sleep 2;
    ["pulse_1",2] spawn BIS_fnc_hideMarker;
    //["pulse_2",2] spawn BIS_fnc_hideMarker;
    //["pulse_3",2] spawn BIS_fnc_hideMarker;
    sleep 3;
    ["pulse_1",[0,0],0.0001] spawn BIS_fnc_resizeMarker;
    //["pulse_2",[0,0],0.0001] spawn BIS_fnc_resizeMarker;
    //["pulse_3",[0,0],0.0001] spawn BIS_fnc_resizeMarker;
  };
