///////////////////////////////////

addMissionEventHandler ["EntityKilled", {
params ["_killed", "_killer", "_instigator"];
if ((_killed isKindOf "Man") and (!isPlayer _killed)) then {
_killed removeWeapon (primaryWeapon _killed);
removeAllItems _killed;
removeAllAssignedItems _killed;
removeHeadgear _killed;
deleteVehicle (nearestObject [_killed, "WeaponHolderSimulated"]);
};
}];

///////////////////////////////////
