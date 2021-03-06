
/*
    File : fn_placestorage.sqf
    Author: NiiRoZz
    Description:
    PLace container were player select with preview
*/
private["_container","_isFloating"];

if (!lhm_container_active) exitWith {};
if (lhm_container_activeObj == ObjNull) exitWith {};
if (!((typeOf lhm_container_activeObj) in ["B_supplyCrate_F","Box_IND_Grenades_F"])) exitWith {};

_container = lhm_container_activeObj;
_isFloating = if (((getPos _container) select 2) < 0.1) then {false} else {true};
detach _container;
//[_container,true] remoteExecCall ["lhm_fnc_simDisable",RANY];
[[_container,true],"lhm_fnc_simDisable",true,false,true] call LHM_fnc_MP;
//_container setPosATL [getPosATL _container select 0, getPosATL _container select 1, (getPosATL _container select 2) + 0.7];
_container setPosATL [getPosATL _container select 0, getPosATL _container select 1, (getPosATL _container select 2)];
_container allowDamage false;

if ((typeOf _container) == "B_supplyCrate_F") then {
    [false,"storagebig",1] call lhm_fnc_handleInv;
} else {
    [false,"storagesmall",1] call lhm_fnc_handleInv;
};

[_container, _isFloating] call lhm_fnc_placeContainer;
lhm_container_active = false;
lhm_container_activeObj = ObjNull;