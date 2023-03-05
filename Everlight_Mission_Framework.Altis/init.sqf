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

["ace_medical_treatment_medicationLocal", {
    params ["_unit", "", "_classname"];
    if (_classname == "Epinephrine") then {
        // this guy dead or bleeding
        if (!alive _unit) exitWith {};

        private _heartRate = _unit getVariable ["ace_medical_heartRate", 80];
        private _blood = _unit getVariable ["ace_medical_bloodVolume", 6.0];
        private _bloodPressure = [_unit] call ace_medical_status_fnc_getBloodPressure;
        _bloodPressure params ["_bloodPressureL", "_bloodPressureH"];

        if (_heartRate < 40) then {
            _unit setVariable ["ace_medical_heartRate", 40, true];
            [{
                ["ace_medical_CPRSucceeded", _this] call CBA_fnc_localEvent;
            }, [_unit], 0.25] call CBA_fnc_waitAndExecute
        };
        if (_heartRate > 220) then {
            _unit setVariable ["ace_medical_heartRate", 80, true];
        };
        if (_bloodPressureH < 50) then {
            _bloodPressureH = 50;
        };
        if (_bloodPressureL < 40) then {
            _bloodPressureL = 40;
        };
        if (_bloodPressureL >= 190) then {
            _bloodPressureL = 180;
        };
        if (_blood <= 6.0) then {
            _blood = 6.0;
            _unit setVariable ["ace_medical_bloodVolume", _blood, true];
        };

        _bloodPressure = [_bloodPressureL, _bloodPressureH];
        _unit setVariable ["ace_medical_bloodPressure", _bloodPressure, true];
    };
}] call CBA_fnc_addEventHandler;
