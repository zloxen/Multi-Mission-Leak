#include "..\..\macros.hpp"
/*
    File: fn_weaponShopMenu.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Something
*/

private _shopTitle = M_CONFIG(getText,"WeaponShops",(_this select 3),"name");
private _shopSide = M_CONFIG(getText,"WeaponShops",(_this select 3),"side");
private _conditions = M_CONFIG(getText,"WeaponShops",(_this select 3),"conditions");

private _exit = false;
if !(_shopSide isEqualTo "") then {
    private _flag = switch (playerSide) do {case west: {"cop"}; case independent: {"med"}; case civilian: {"civ"}; case east: {"WSC"}; default {"civ"};};
    if !(_flag isEqualTo _shopSide) then {_exit = true;};
};

if (_exit) exitWith {};

_exit = [_conditions] call DWEV_fnc_levelCheck;
if !(_exit) exitWith {hint "Du bist nicht befugt, dieses Geschäft zu benutzen!";};

uiNamespace setVariable ["Weapon_Shop",(_this select 3)];
uiNamespace setVariable ["Weapon_Magazine",0];
uiNamespace setVariable ["Weapon_Accessories",0];
uiNamespace setVariable ["Magazine_Array",[]];
uiNamespace setVariable ["Accessories_Array",[]];

if !(createDialog "DWEV_weapon_shop") exitWith {};
if (!isClass(missionConfigFile >> "WeaponShops" >> (_this select 3))) exitWith {}; //Bad config entry.

disableSerialization;

ctrlSetText[38401,_shopTitle];

private _filters = ((findDisplay 38400) displayCtrl 38402);
lbClear _filters;

ctrlShow [38406,true];
ctrlEnable [38406,false];
ctrlShow [38407,true];
ctrlEnable [38407,false];

_filters lbAdd "Geschäftsinventar";
_filters lbAdd "Dein Inventar";

_filters lbSetCurSel 0;