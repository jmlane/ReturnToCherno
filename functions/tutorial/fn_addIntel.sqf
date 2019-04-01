params ["_target"];

_target addAction [
  "Gather Intel",
  {
    params ["_target", "_caller", "_actionId", "_arguments"];

    ["taskTutorialIntel", "SUCCEEDED"] call BIS_fnc_taskSetState;

    remoteExecCall ["SHF_fnc_setIntelMarkers", _caller ];

    _target removeAction _actionId;
  },
  nil,
  6,
  true,
  true,
  "",
  "_this distance _target < 3",
  50,
  false,
  "",
  ""
];
