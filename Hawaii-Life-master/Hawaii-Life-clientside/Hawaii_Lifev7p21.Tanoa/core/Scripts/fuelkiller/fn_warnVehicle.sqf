/*
	File: warnVehicles.sqf
	Author: © 2014 nano2K - written for we-are-friendly.de
*/
private["_index","_vehicle"];
disableSerialization;
if(!isNull (findDisplay 3494)) then {
	if(nn_warnInUse) exitWith { hint "Das EMP warnt grade schon ein Fahrzeug"; };
	nn_warnInUse = true;
	_index = lbCurSel (2902);
	_vehicle = nn_last_vehicles select _index;
	if(isNull _vehicle) exitWith {};
	[_vehicle] remoteExecCall ["life_fnc_vehicleWarned",crew _vehicle];
	sleep 10;
	nn_warnInUse = false;
};