/*
	File: fn_tazed.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the tazed animation and broadcasts out what it needs to.
*/
private["_unit","_shooter","_curWep","_curMags","_attach"];
_unit = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_shooter = [_this,1,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _unit OR isNull _shooter) exitWith {life_istazed = false;};

if(_shooter isKindOf "Man" && alive player) then
{
	if(!life_istazed) then
	{
		life_istazed = true;
		_curWep = currentWeapon player;
		_curMags = magazines player;
		_attach = if(primaryWeapon player != "") then {primaryWeaponItems _unit} else {[]};
		{player removeMagazine _x} foreach _curMags;
		player removeWeapon _curWep;
		player addWeapon _curWep;
		if(count _attach != 0 && primaryWeapon _unit != "") then
		{
			{
				_unit addPrimaryWeaponItem _x;
			} foreach _attach;
		};
		if(count _curMags != 0) then
		{
			{player addMagazine _x;} foreach _curMags;
		};
		
		[_unit] remoteExec ["tanoarpg_fnc_tazeSound", -2, false];
		_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL _unit);
		_obj setPosATL (getPosATL _unit);
		[player,"AinjPfalMstpSnonWnonDf_carried_fallwc"] remoteExec ["tanoarpg_fnc_animSync", -2, false];
		[0,"STR_NOTF_Tazed",true,[profileName, _shooter getVariable["realname",name _shooter]]] remoteExec ["tanoarpg_fnc_broadcast", -2, false];
		_unit attachTo [_obj,[0,0,0]];
		disableUserInput true;
		sleep 15;
		[player,"amovppnemstpsraswrfldnon"] remoteExec ["tanoarpg_fnc_animSync", -2, false];
		if(!(player getVariable["Escorting",false])) then {
			detach player;
		};
		life_istazed = false;
		disableUserInput false;
	};
}
	else
{
	life_iztazed = false;
};