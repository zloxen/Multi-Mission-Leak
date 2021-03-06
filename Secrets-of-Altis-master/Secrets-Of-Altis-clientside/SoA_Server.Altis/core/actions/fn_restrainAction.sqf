/*
File: fn_restrainAction.sqf
Author: Bryan "Tonic" Boardwine

Description:
Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((player distance _unit > 4)) exitWith {};
if((_unit getVariable "restrained")) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};

[player,"handschellen"] remoteExecCall ["say3D",0];
_unit setVariable["restrained",true,true];
[player] remoteExec ["life_fnc_restrain",_unit];
[0,format[localize "STR_NOTF_Restrained",_unit getVariable["realname", name _unit], profileName]] remoteExecCall ["life_fnc_broadcast",west];