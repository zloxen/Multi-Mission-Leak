#include "..\..\script_macros.hpp"
/*
	File: fn_p_openMenu.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Opens the players virtual inventory menu
*/
if(!alive player || dialog) exitWith {}; //Prevent them from opening this for exploits while dead.
createDialog "playerSettings";
disableSerialization;

switch(playerSide) do {
	case west:	{
		ctrlShow[2011,false]; // Meine Gang
		ctrlShow[20111,false]; // Meine Gang Icon	
		ctrlShow[2025,false];
		ctrlShow[20251,false];
	};

	case civilian: {
		ctrlShow[2012,false];
	};

	case independent: {
		ctrlShow[2012,false];
		ctrlShow[2011,false];
	};
};

if(FETCH_CONST(life_adminlevel) < 1) then {
	ctrlShow[2020,false]; // Admin
	ctrlShow[2021,false]; // Admin
	ctrlShow[20211,false]; // Admin ICON
};

[] call life_fnc_p_updateMenu;