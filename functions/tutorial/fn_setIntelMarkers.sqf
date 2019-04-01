// colorIndependent
systemChat "Areas Of Interest marked on your map.";

private _markerIntelRadio = createMarkerLocal ["_USER_DEFINED tutorialIntelRadio", getMarkerPos "markerTutorialIntelRadio"];
_markerIntelRadio setMarkerShapeLocal "ICON";
_markerIntelRadio setMarkerTypeLocal "hd_warning";
_markerIntelRadio setMarkerColorLocal "colorOPFOR";
deleteMarker "markerTutorialIntelRadio";

private _markerIntelCabin = createMarkerLocal ["_USER_DEFINED tutorialIntelCabin", getMarkerPos "markerTutorialIntelCabin"];
_markerIntelCabin setMarkerShapeLocal "ICON";
_markerIntelCabin setMarkerTypeLocal "hd_unknown";
_markerIntelCabin setMarkerColorLocal "colorUNKNOWN";
deleteMarker "markerTutorialIntelCabin";

private _markerIntelKamyshovo = createMarkerLocal ["_USER_DEFINED tutorialIntelKamyshovo", getMarkerPos "markerTutorialIntelKamyshovo"];
_markerIntelKamyshovo setMarkerShapeLocal "ICON";
_markerIntelKamyshovo setMarkerTypeLocal "hd_warning";
_markerIntelKamyshovo setMarkerColorLocal "colorOPFOR";
deleteMarker "markerTutorialIntelKamyshovo";
