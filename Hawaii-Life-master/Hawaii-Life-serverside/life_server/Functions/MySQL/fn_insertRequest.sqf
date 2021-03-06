#include "\life_server\script_macros.hpp" 
/* 
 File: fn_insertRequest.sqf 
 Author: Bryan "Tonic" Boardwine 
 
 Description: 
 Does something with inserting... Don't have time for 
 descriptions... Need to write it... 
*/ 
private["_handler","_thread","_queryResult","_query","_alias","_expLevel","_expCount","_expKills","_expDeaths","_civTime"]; 
params [ 
 "_uid", 
 "_name", 
 ["_money",0], 
 ["_bank",2500], 
 ["_returnToSender",objNull,[objNull]], 
 ["_expLevel",0], 
 ["_expCount",0], 
 ["_expKills",0], 
 ["_expDeaths",0], 
 ["_civTime",0] 
]; 
 
//Error checks 
if((_uid isEqualTo "") OR {(_name isEqualTo "")}) exitWith {systemChat "Bad UID or name";}; //Let the client be 'lost' in 'transaction' 
if(isNull _returnToSender) exitWith {systemChat "ReturnToSender is Null!";}; //No one to send this to! 
 
_query = format["SELECT playerid, name FROM players WHERE playerid='%1'",_uid]; 
 
 
_tickTime = diag_tickTime; 
_queryResult = [_query,2] call DB_fnc_asyncCall; 
 
//Double check to make sure the client isn't in the database... 
if(typeName _queryResult isEqualTo "STRING") exitWith {[] remoteExecCall ["SOCK_fnc_dataQuery",(owner _returnToSender)];}; //There was an entry! 
if !(count _queryResult isEqualTo 0) exitWith {[] remoteExecCall ["SOCK_fnc_dataQuery",(owner _returnToSender)];}; 
 
//Clense and prepare some information. 
_name = [_name] call DB_fnc_mresString; //Clense the name of bad chars. 
_alias = [[_name]] call DB_fnc_mresArray; 
_money = [_money] call DB_fnc_numberSafe; 
_bank = [_bank] call DB_fnc_numberSafe; 
_expLevel = [_expLevel] call DB_fnc_numberSafe; 
_expCount = [_expCount] call DB_fnc_numberSafe; 
_expKills = [_expKills] call DB_fnc_numberSafe; 
_expDeaths = [_expDeaths] call DB_fnc_numberSafe; 
_civTime = [_civTime] call DB_fnc_numberSafe; 
 
//Prepare the query statement.. 
_query = format["INSERT INTO players (playerid, name, cash, bankacc, aliases, level, expcount, kills, deaths, civTime, cop_licenses, med_licenses, civ_licenses, civ_gear, cop_gear, med_gear) VALUES('%1', '%2', '%3', '%4', '%5','%6','%7','%8','%9','%10','""[]""','""[]""','""[]""','""[]""','""[]""','""[]""')", 
 _uid, 
 _name, 
 _money, 
 _bank, 
 _alias, 
 _expLevel, 
 _expCount, 
 _expKills, 
 _expDeaths, 
 _civTime 
]; 
 
[_query,1] call DB_fnc_asyncCall; 
[] remoteExecCall ["SOCK_fnc_dataQuery",(owner _returnToSender)]; 
