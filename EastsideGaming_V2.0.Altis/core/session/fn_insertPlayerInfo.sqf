#include "..\..\script_macros.hpp"
/*
    File: fn_insertPlayerInfo.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Upon first join inital player data is sent to the server and added to the database.
    Setup data gets sent to life_server\Functions\MySQL\fn_insertRequest.sqf
*/
if (life_session_completed) exitWith {}; //Why did this get executed when the client already initialized? Fucking arma...
cutText[localize "STR_Session_QueryFail","BLACK FADED"];
0 cutFadeOut 9999999;
private ["_bank"];
_bank = 0;
switch (playerSide) do {
    case west: {
        _bank = 200000;
    };
    case civilian: {
        _bank = 150000;
    };
    case independent: {
        _bank = 200000;
    };
};

[getPlayerUID player,profileName,CASH,_bank,player] remoteExecCall ["DB_fnc_insertRequest",RSERV];

ESG_Neu = true;