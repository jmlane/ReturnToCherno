params ["_group", "_target"];

private _startPos = waypointPosition [_group, 0];

_group setBehaviour "COMBAT";
_group setCombatMode "RED";
//vehicle leader _group flyInHeight 10;
//vehicle leader _group flyInHeightASL [10, 10, 10];

private _move = _group addWaypoint [getPos _target, 0];
_move setWaypointType "MOVE";

private _sad = _group addWaypoint [getPos _target, 0];
_sad setWaypointType "SAD";
_sad setWaypointStatements ["true", "hint ""SAD complete"";"];

private _rtb = _group addWaypoint [_startPos, 0];
_rtb setWaypointType "SCRIPTED";
_rtb setWaypointScript "A3\functions_f\waypoints\fn_wpLand.sqf"; 
_rtb setWaypointStatements ["true", "vehicle this engineOn false;"];
