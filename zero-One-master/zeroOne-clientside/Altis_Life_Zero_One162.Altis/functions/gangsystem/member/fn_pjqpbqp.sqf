private['_Pgg','_qZe','_QjS','_kTg','_IxF','_ZiL','_Lojp','_ddP','_UyDG','_GGwj','_dmJ'];_Pgg = (group player) getVariable ["HNCqyH",[]];if(_Pgg isEqualTo []) exitWith {hint "Du bist in keiner Gang"};disableSerialization;createDialog "TWXCflNw";_qZe = findDisplay 3300;if (isNull _qZe) exitWith {};_QjS = _qZe displayCtrl 3301;_kTg = _qZe displayCtrl 3302;_IxF = _qZe displayCtrl 3303;_IxF ctrlSetText "Kicken";_IxF buttonSetAction "[] spawn zero_fnc_QnemjYFe";_Lojp = _qZe displayCtrl 3304;_Lojp ctrlShow false;_QjS ctrlSetStructuredText parseText format["<t align='center' size='1.3'>Liste aller Member die offline sind:</t>"];lbClear _kTg;_GGwj = false;_ddP = _Pgg select 3;_dmJ = units (group player);{ _UyDG = _x select 0; { if(_UyDG == getPlayerUID _x) exitWith {_GGwj = true;}; } forEach _dmJ; if(!_GGwj) then { if(count _x != 3) then { _kTg lbAdd format["%1 [%2]",_x select 0,_x select 1]; }else{ _kTg lbAdd format["%1 [%2] - %3",_x select 2,_x select 1,_x select 0]; }; _kTg lbSetData [(lbSize _kTg)-1,str(_x)]; }; _GGwj = false;} forEach _ddP;if((lbSize _kTg)-1 isEqualTo -1) then { _kTg lbAdd "Niemand ist offline"; _kTg lbSetData [(lbSize _kTg)-1,""];};