#include "..\..\script_macros.hpp"
/*
	File: fn_serviceChopper.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Main functionality for the chopper service paid, to be replaced in later version.
*/
private ["_serviceCost"];
disableSerialization;
private["_search","_ui","_progress","_cP","_pgText"];
if(life_action_inUse) exitWith {hint  "Du führst bereits eine Aktion aus. Bitte warte, bis diese beendet ist."};

_serviceCost = LIFE_SETTINGS(getNumber,"service_chopper");
_search = nearestObjects[getPos air_sp, ["Air"],10];

if(EQUAL(count _search,0)) exitWith {hint  "Es ist kein Helikopter auf dem Landeplatz "};
if(CASH < _serviceCost) exitWith {hint  "Du benötigst $1,000, um deinen Helikopter zu warten"};

life_action_inUse = true;
5 cutRsc ["life_progress","PLAIN"];
_ui = GVAR_UINS "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format[ "Helikopter wird gewartet [%1]...","waiting..."];
_progress progressSetPosition 0.01;
_cP = 0.01;

while {true} do {
	sleep  0.2;
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format[ "Helikopter wird gewartet [%1]...",round(_cP * 100)];
	if(_cP >= 1) exitWith {};
};

if(!alive SEL(_search,0) || SEL(_search,0) distance air_sp > 15) exitWith {life_action_inUse = false; hint  "Das Fahrzeug wurde zerstört oder befindest sich nicht mehr auf dem Helikopterlandeplatz!"};

SUB(CASH,_serviceCost);
if(!local SEL(_search,0)) then {
	[SEL(_search,0),1] remoteExecCall ["life_fnc_setFuel",SEL(_search,0)];
} else {
	SEL(_search,0) setFuel 1;
};

SEL(_search,0) setDamage 0;

5 cutText ["","PLAIN"];
titleText [ "Der Helicopter ist nun repariert und aufgetankt.","PLAIN"];
life_action_inUse = false;