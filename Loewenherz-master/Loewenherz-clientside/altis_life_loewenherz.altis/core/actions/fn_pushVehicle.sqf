/*
	Does it matter? Needs to be replaced.
	Built for Feint's Push functionality
*/
private["_target","_caller","_posCaller","_dir"];
_target = cursorObject;
_caller = player;
_posCaller = getPos _caller;
_dir = getDir _caller;

if(isNull _target) exitWith {};
if(_caller distance _target > 5) exitWith {};

if(local _target) then
{
	[_caller,_target,_posCaller,_dir] spawn lhm_fnc_pushFunction;
}
	else
{
	[[_caller,_target,_posCaller,_dir],"lhm_fnc_pushFunction",_target,false] call lhm_fnc_mp;
};