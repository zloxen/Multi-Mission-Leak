private ['_Art','_uXkX','_PdK','_xWnn','_NNz','_Tuaj','_FmDy','_nFc','_wYLQ'];disableSerialization;_Art = param[0,controlNull,[controlNull]];_uXkX = param[3,0,[0]];_PdK = param[4,[],[[]]];_PdK = _PdK select 0;_xWnn = toLower(_PdK select 2);_NNz = toLower(_Art lbData 0);if(_xWnn isEqualTo "") exitWith {};if(ctrlIDC _Art == 1508 && _uXkX != 1509 || ctrlIDC _Art == 1509 && _uXkX != 1508) exitWith {hint "Das passt hier nicht"};_Tuaj = (backpackItems player);if(!isNull (backpackContainer player)) then { _nFc = (getBackpackCargo(backpackContainer player)) select 0; _wYLQ = (getBackpackCargo(backpackContainer player)) select 1; { for "_i" from 1 to (_wYLQ select _forEachIndex) do { _Tuaj pushBack _x; }; } forEach _nFc;};if(_uXkX isEqualTo 1508) then {  lbClear _Art; _Art lbAdd format [" %1",getText (configFile >> "CfgVehicles" >> _xWnn >> "displayName")]; _Art lbSetTooltip [lbSize(_Art) - 1, getText (configFile >> "CfgVehicles" >> _xWnn >> "displayName")]; _Art lbSetPicture [lbSize(_Art) - 1, getText (configFile >> "CfgVehicles" >> _xWnn >> "picture")]; _Art lbSetValue [lbSize(_Art) - 1, 1]; _Art lbSetData [lbSize(_Art) - 1, _xWnn]; [toLower(_xWnn),-1] call zero_fnc_ludDvGtx; if(!(_NNz isEqualTo "")) then { [toLower(_NNz),1] call zero_fnc_ludDvGtx; }; if(_xWnn != (backpack player)) then { removeBackpack player; player addBackpack _xWnn; clearAllItemsFromBackpack player; if(!(_Tuaj isEqualTo [])) then { { _FmDy = if(typeName _x == "ARRAY") then {toLower(_x select 0)}else{toLower(_x)}; if(_FmDy != "") then { if(player canAddItemToBackpack _FmDy) then { player addItemToBackpack _FmDy; }else{ [toLower(_FmDy),1] call zero_fnc_ludDvGtx; }; }; } forEach _Tuaj; }; };}else{ _uXkX = ((findDisplay 1000) displayCtrl _uXkX); lbClear _uXkX; _uXkX lbAdd ""; _uXkX lbSetPicture [lbSize(_uXkX) - 1, "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_backpack_gs.paa"]; [toLower(_xWnn),1] call zero_fnc_ludDvGtx; removeBackpack player; if(!(_Tuaj isEqualTo [])) then { { _FmDy = if(typeName _x == "ARRAY") then {toLower(_x select 0)}else{toLower(_x)}; if(_FmDy != "") then { [toLower(_FmDy),1] call zero_fnc_ludDvGtx; }; } forEach _Tuaj; };};[] call zero_fnc_gWt;_Art lbSetCurSel -1;