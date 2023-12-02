///////////////////////////////////

addMissionEventHandler ["EntityKilled", {
params ["_killed", "_killer", "_instigator"];
if ((_killed isKindOf "Man") and (!isPlayer _killed)) then {
//_killed removeWeapon (primaryWeapon _killed);
removeAllPrimaryWeaponItems _killed;
removeAllItems _killed;
removeAllAssignedItems _killed;
removeHeadgear _killed;
deleteVehicle (nearestObject [_killed, "WeaponHolderSimulated"]);
};
}];

///////////////////////////////////

//Choose one
//US Armor Spawners
//[] execVM "VS_US_Armor.sqf";
//US Desert Armor Spawners
//[] execVM "VS_US_D_Armor.sqf";

//Choose one
//US Motorized Spawners
//[] execVM "VS_US_Motor.sqf";
//US Desert Motorized Spawners
//[] execVM "VS_US_D_Motor.sqf";

//Choose either, both, or neither
//US Heli Spawners
//[] execVM "VS_US_Heli.sqf";
//All Faction Boat Spawners
//[] execVM "VS_Boat.sqf";

