_this spawn {
  params [
    ["_group", objNull],
    ["_side", sideEmpty],
    ["_enemy", sideEnemy]
  ];

  if (side _group == civilian) then {
    _group setBehaviour "SAFE";
  };

  waitUntil {
    scopeName "wait";
    behaviour leader _group == "COMBAT" || {
    {
      {
        if !(leader _group getHideFrom _x isEqualTo [0,0,0]) then {
          true breakOut "wait";
        };
      } forEach units _x;
    } forEach (allGroups select {side _x == _enemy})};
  };

  if (side _group != _side) then {
    private _newGroup = createGroup [_side, true];
    (units _group) join _newGroup;
    _newGroup setBehaviour "AWARE";
  };
};
