/*----------------------------------------------------------
Author: Shawn "Huntah" Macgillivray
	
Description:
Removes Human Remains (Medic Mission)
-----------------------------------------------------------*/
private ["_vehicle","_true","_tempNum"];
if(playerside != west)exitwith{};

_vehicle = (nearestobjects [getpos player, ["Land_HumanSkeleton_F"],  3] select 0);
if(isNull _vehicle)exitwith{};
if(player distance _vehicle < 3)then
	{
	DS_doingStuff = true;
	player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
	sleep 3;
	detach _vehicle;
	deletevehicle _vehicle;
	waitUntil {(isNull _vehicle)};
	if((DS_infoArray select 21) > 13)then
		{
		systemchat "$10k has been paid into your bank for removing these remains";
		[10000,true,true] spawn DS_fnc_handleMoney;
		}
		else
		{
		systemchat "$5k has been paid into your bank for removing these remains";
		[5000,true,true] spawn DS_fnc_handleMoney;
		};
	[5,true] spawn DS_fnc_moralAlter;
	DS_doingStuff = false;	
	};
if((DS_infoArray select 21) == 13)then
	{
	_tempNum = (DS_infoArray select 22);
	_tempNum = _tempNum + 1;
	DS_infoArray set [22,_tempNum];
	if((DS_infoArray select 22) > 9)then
		{
		[3] call DS_fnc_questCompleted;
		};
	};