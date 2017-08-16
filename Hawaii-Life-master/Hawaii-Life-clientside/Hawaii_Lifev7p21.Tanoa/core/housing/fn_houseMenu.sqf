#include "..\..\script_macros.hpp"
/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Building interaction menu
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Title 37401

private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8"];
disableSerialization;
_curTarget = param [0,ObjNull,[ObjNull]];
if(isNull _curTarget) exitWith {}; //Bad target
_houseCfg = [(typeOf _curTarget)] call life_fnc_houseConfig;
if(EQUAL(count _houseCfg,0) && playerSide isEqualTo civilian) exitWith {};


if(!dialog) then {
	createDialog "pInteraction_Menu";
};

_Btn1 = CONTROL(37400,Btn1);
_Btn2 = CONTROL(37400,Btn2);
_Btn3 = CONTROL(37400,Btn3);
_Btn4 = CONTROL(37400,Btn4);
_Btn5 = CONTROL(37400,Btn5);
_Btn6 = CONTROL(37400,Btn6);
_Btn7 = CONTROL(37400,Btn7);
_Btn8 = CONTROL(37400,Btn8);
{_x ctrlShow false;} foreach [_Btn1,_Btn2,_Btn3,_Btn4,_Btn5,_Btn6,_Btn7,_Btn8];

life_pInact_curTarget = _curTarget;
if(playerSide isEqualTo west) then {
	if(_curTarget isKindOf "House_F") exitWith {
		if(!isNil {_curTarget getVariable "house_owner"}) then {
			_Btn1 ctrlSetText localize "STR_House_Raid_Owner";
			_Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_copHouseOwner;";
			_Btn1 ctrlShow true;
			
			_Btn2 ctrlSetText localize "STR_pInAct_BreakDown";
			_Btn2 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_copBreakDoor; closeDialog 0;";
			_Btn2 ctrlShow true;
			
			_Btn3 ctrlSetText localize "STR_pInAct_SearchHouse";
			_Btn3 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_raidHouse; closeDialog 0;";
			_Btn3 ctrlShow true;
			
			if(player distance _curTarget > 3.6) then {
				_Btn3 ctrlEnable false;
			};
			
			_Btn4 ctrlSetText localize "STR_pInAct_LockHouse";
			_Btn4 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_lockupHouse; closeDialog 0;";
			_Btn4 ctrlShow true;
			
			if(_curTarget GVAR ["locked",false]) then {
				_Btn5 ctrlSetText localize "STR_pInAct_UnlockStorage";
			} else {
				_Btn5 ctrlSetText localize "STR_pInAct_LockStorage";
			};
			_Btn5 buttonSetAction "[life_pInact_curTarget] call life_fnc_lockHouse; closeDialog 0;";
			_Btn5 ctrlShow true;
		} else {
			closeDialog 0;
		};
	};
};

if(playerSide isEqualTo civilian) then {
	if(!(_curTarget in life_vehicles) OR isNil {_curTarget GVAR "house_owner"}) then {
		if(_curTarget in life_vehicles) then {SUB(life_vehicles,[_curTarget]);};
		_Btn1 ctrlSetText localize "STR_pInAct_BuyHouse";
		_Btn1 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_buyHouse;";
		_Btn1 ctrlShow true;

		if(!isNil {_curTarget GVAR "house_owner"}) then {
			_Btn1 ctrlEnable false;
		};
	} else {
		if((typeOf _curTarget) isEqualTo "Land_House_Big_03_F") then {
			_Btn1 ctrlSetText localize "STR_pInAct_SellHouse";
			_Btn1 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_sellHouse; closeDialog 0;";
			_Btn1 ctrlShow true;
				
			_Btn6 ctrlSetText "Security++";
			_Btn6 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_secureHouse; closeDialog 0;";
			_Btn6 ctrlShow true;
				
			if(((_curTarget GVAR "house_owner") select 0) != (getPlayerUID player)) then {
				_Btn1 ctrlEnable false;
				_Btn6 ctrlEnable false;
			};
				
			if(_curTarget GVAR ["locked",false]) then {
				_Btn2 ctrlSetText localize "STR_pInAct_UnlockStorage";
			} else {
				_Btn2 ctrlSetText localize "STR_pInAct_LockStorage";
			};
			_Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_lockHouse; closeDialog 0;";
			_Btn2 ctrlShow true;
			
			if(isNull (_curTarget GVAR ["lightSource",ObjNull])) then {
				_Btn3 ctrlSetText localize "STR_pInAct_LightsOn";
			} else {
				_Btn3 ctrlSetText localize "STR_pInAct_LightsOff";
			};
			_Btn3 buttonSetAction "[life_pInact_curTarget] call life_fnc_lightHouseAction; closeDialog 0;";
			_Btn3 ctrlShow true;

			_Btn4 ctrlSetText localize "STR_pInAct_AccessGarage";
			_Btn4 buttonSetAction "[life_pInact_curTarget,""Car""] spawn life_fnc_vehicleGarage; closeDialog 0;";
			_Btn4 ctrlShow true;

			_Btn5 ctrlSetText localize "STR_pInAct_StoreVeh";
			_Btn5 buttonSetAction "[life_pInact_curTarget,player] spawn life_fnc_storeVehicle; closeDialog 0;";
			_Btn5 ctrlShow true;
		} else {
			_Btn1 ctrlSetText localize "STR_pInAct_SellHouse";
			_Btn1 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_sellHouse; closeDialog 0;";
			_Btn1 ctrlShow true;
				
			_Btn6 ctrlSetText "Security++";
			_Btn6 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_secureHouse; closeDialog 0;";
			_Btn6 ctrlShow true;
				
			if(((_curTarget GVAR "house_owner") select 0) != (getPlayerUID player)) then {
				_Btn1 ctrlEnable false;
				_Btn6 ctrlEnable false;
			};
				
			if(_curTarget GVAR ["locked",false]) then {
				_Btn2 ctrlSetText localize "STR_pInAct_UnlockStorage";
			} else {
				_Btn2 ctrlSetText localize "STR_pInAct_LockStorage";
			};
			_Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_lockHouse; closeDialog 0;";
			_Btn2 ctrlShow true;
			
			if(isNull (_curTarget GVAR ["lightSource",ObjNull])) then {
				_Btn3 ctrlSetText localize "STR_pInAct_LightsOn";
			} else {
				_Btn3 ctrlSetText localize "STR_pInAct_LightsOff";
			};
			_Btn3 buttonSetAction "[life_pInact_curTarget] call life_fnc_lightHouseAction; closeDialog 0;";
			_Btn3 ctrlShow true;
		};
	};
};