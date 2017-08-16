/*
	File: fn_robAction.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Starts the robbing process?
*/
private["_target"];
_target = cursorObject;

//lhm_fnc_mp checks
if(isNull _target) exitWith {};
if(!isPlayer _target) exitWith {};

if(_target getVariable["robbed",false]) exitWith {};
[[player],"lhm_fnc_robPerson",_target,false] call lhm_fnc_mp;
[[_target,"ragdoll"],"lhm_fnc_say3d",nil,false] call lhm_fnc_mp; // LHM
_target setVariable["robbed",TRUE,TRUE];