/*
	File: scanVehicles.sqf
	Author: © 2014 nano2K - written for we-are-friendly.de
*/
private["_display","_list","_objects"];
disableSerialization;
if(!isNull (findDisplay 3494)) then {
	_display = findDisplay 3494;
	_list = _display displayCtrl 2902;
	lbClear _list;
	nn_last_vehicles = [];
	//_objects = nearestObjects [player, ["Air"], 150];
	_objects = nearestObjects [player, ["Air","landVehicle","Ship"], 150];
	{
		if(vehicle player != _x) then {
			_color = [(typeOf _x),(_x getVariable "lhm_VEH_color")] call lhm_fnc_vehicleColorStr;
			_text = format["(%1)",_color];
			_list lbAdd format ["%1 - %2 (%3m)", getText(configFile >> "cfgVehicles" >> typeOf _x >> "DisplayName"), _text, round(player distance _x)];
			nn_last_vehicles set [count nn_last_vehicles, _x];
		};
	} foreach _objects;
};