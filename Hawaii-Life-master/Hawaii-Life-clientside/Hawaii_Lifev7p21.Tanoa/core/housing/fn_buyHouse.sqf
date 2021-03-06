#include "..\..\script_macros.hpp"
/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Buys the house?
*/
private["_house","_uid","_action","_houseCfg","_house_limit","_housePos"];
_house = param [0,ObjNull,[ObjNull]];
_uid = steamid;


if(isNull _house) exitWith {};
if(!(_house isKindOf "House_F")) exitWith {};
if((_house GVAR ["house_owned",false])) exitWith {hint "This house is already owned even though you shouldn't be seeing this hint..."};
if(!isNil {(_house GVAR "house_sold")}) exitWith {hint localize "STR_House_Sell_Process"};
if(!license_civ_home) exitWith {hint localize "STR_House_License"};

switch (true) do {
	case (life_EXPLevel < 2): {_house_limit = 0};
	case (life_EXPLevel < 10): {_house_limit = 1};
	case (life_EXPLevel < 18): {_house_limit = 2};
	case (life_EXPLevel < 25): {_house_limit = 3};
	case (life_EXPLevel >= 25): {_house_limit = 4};
};

if(count life_houses >= _house_limit) exitWith {hint format[localize "STR_House_Max_House",_house_limit]};
closeDialog 0;

_houseCfg = [(typeOf _house)] call life_fnc_houseConfig;
if(EQUAL(count _houseCfg,0)) exitWith {};

_action = [
	format[localize "STR_House_BuyMSG",
	[(_houseCfg select 0)] call life_fnc_numberText,
	(_houseCfg select 1)],localize "STR_House_Purchase",localize "STR_Global_Buy",localize "STR_Global_Cancel"
] call BIS_fnc_guiMessage;

if(_action) then {
	if(BANK < (_houseCfg select 0)) exitWith {hint format [localize "STR_House_NotEnough"]};
	SUB(BANK,(SEL(_houseCfg,0)));
	[6] call SOCK_fnc_updatePartial;
	_housePos = getPosATL _house;
	if (life_HC_isActive) then {
		[_uid,_housePos] remoteExec ["HC_fnc_addHouse",HC_Life];
	} else {
		[_uid,_housePos] remoteExec ["TON_fnc_addHouse",RSERV];
	};
	_house SVAR ["house_owner",[_uid,profileName],true];
	_house SVAR ["locked",true,true];
	_house SVAR ["containers",[],true];
	_house SVAR ["house_security",0,true];
	_house SVAR ["uid",floor(random 99999),true];

	life_vehicles pushBack _house;
	life_houses pushBack [str(getPosATL _house),[]];
	_marker = createMarkerLocal [format["house_%1",(_house GVAR "uid")],getPosATL _house];
	_houseName = FETCH_CONFIG2(getText,CONFIG_VEHICLES,(typeOf _house), "displayName");
	_marker setMarkerTextLocal _houseName;
	_marker setMarkerColorLocal "ColorBlue";
	_marker setMarkerTypeLocal "loc_Lighthouse";
	_numOfDoors = FETCH_CONFIG2(getNumber,CONFIG_VEHICLES,(typeOf _house),"numberOfDoors");
	for "_i" from 1 to _numOfDoors do {
		_house SVAR [format["bis_disabled_Door_%1",_i],1,true];
	};
};
