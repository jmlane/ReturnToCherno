params ["_player", "_didJIP"];
call ASG_fnc_initEarPro;

if (player getVariable ["isSneaky",false]) then {
    [player] execVM "INC_undercover\Scripts\initUCR.sqf";
};
