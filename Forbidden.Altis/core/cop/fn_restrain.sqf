
#include <macro.h>
 private["_cop","_bxdzvtbvsomavghcqeyuqmbyztdtemcxsqzmtazszezjeajlxkafhfxuexxokdzttxprg","_vhwouvrjltgmveoellxelztpqmozshexjgbihdqjtiwvaaxpvlrodravnsvddkauy","_bphjqewvedvapioibkicnlktqxadjetctdsczixbvpqtnwrmqobdxnwrydqffoh","_vbpiqzipqzvykjzrsrhungkvizzpmnejmvjgnzwswttndxngzqgmxbbebotzfnybzaup","_cell"]; _cop = [_this,0,Objnull,[Objnull]] call BIS_fnc_param; _vhwouvrjltgmveoellxelztpqmozshexjgbihdqjtiwvaaxpvlrodravnsvddkauy = [_this,1,false,[false]] call BIS_fnc_param; _vbpiqzipqzvykjzrsrhungkvizzpmnejmvjgnzwswttndxngzqgmxbbebotzfnybzaup = [_this,2,false,[false]] call BIS_fnc_param; _bxdzvtbvsomavghcqeyuqmbyztdtemcxsqzmtazszezjeajlxkafhfxuexxokdzttxprg = player; if(isNull _cop) exitWith {}; if(isNil "life_is_arrested") then {life_is_arrested = 0;}; if(_vhwouvrjltgmveoellxelztpqmozshexjgbihdqjtiwvaaxpvlrodravnsvddkauy) then { 	sleep 2; 	player setVariable ["restrained",true,true]; };   if(_cop != Player && !_vbpiqzipqzvykjzrsrhungkvizzpmnejmvjgnzwswttndxngzqgmxbbebotzfnybzaup) then { 	titleText[format[localize "STR_Cop_Retrained",_cop GVAR ["realname",name _cop]],"PLAIN"]; };  if(life_is_arrested != 0) then { 	[] spawn { 		private ["_cell"]; 		while {(player GVAR  "restrained") OR (player GVAR  "adminRestrained")} do { 			jail_in_yard = (getPos player) inArea "prison_yard"; 			jail_in_isolation = (getPos player) inArea "prison_isolation"; 			if(jail_in_yard) then {prison_cellOpen = false;}; 			if(!jail_in_yard && !jail_in_isolation && ([] call life_fnc_zuqcigvfkbumkiazexofcmbaeutcfqjrdgsahetedfwyajdwbdqvtihdit) != -1) then { 				_cell = [] call life_fnc_zuqcigvfkbumkiazexofcmbaeutcfqjrdgsahetedfwyajdwbdqvtihdit; 				prison_cell = _cell; 				prison_cellpos = [_cell] call life_fnc_eamlnhwzqysnwhotiykaghimzvbiuvvknmmfzzikiicaqpoygjp; 				prison_cellOpen = prison getVariable [format["cell_%1_boltcutted",_cell],false]; 				if(_cell == 21 && (prison getVariable [format["cell_%1_boltcutted",7],false])) then {prison_cellOpen = true;}; 				if(_cell == 20 && (prison getVariable [format["cell_%1_boltcutted",6],false])) then {prison_cellOpen = true;}; 				if(_cell == 18 && (prison getVariable [format["cell_%1_boltcutted",5],false])) then {prison_cellOpen = true;}; 			}; 			 			sleep 1; 		}; 	}; };  while {(player GVAR  "restrained") OR (player GVAR  "adminRestrained")} do { 	if(vehicle player == player) then { 		player playMove "AmovPercMstpSnonWnonDnon_Ease"; 	}; 	 	_state = vehicle player; 	waitUntil {animationState player != "AmovPercMstpSnonWnonDnon_Ease" || !((player GVAR "restrained") OR (player GVAR "adminRestrained")) || vehicle player != _state}; 			 	if(!alive player) exitWith { 		player SVAR ["restrained",false,true]; 		player SVAR ["Escorting",false,true]; 		player SVAR ["transporting",false,true]; 		player SVAR ["tied",false,true]; 		player SVAR ["stretched",false,true]; 		player SVAR ["adminRestrained",false,true]; 		detach _bxdzvtbvsomavghcqeyuqmbyztdtemcxsqzmtazszezjeajlxkafhfxuexxokdzttxprg; 	}; 	 	if(vehicle player != player) then { 		 		if(driver (vehicle player) == player) then {moveOut player}; 	}; };    if(alive player) then { 	if(!_vbpiqzipqzvykjzrsrhungkvizzpmnejmvjgnzwswttndxngzqgmxbbebotzfnybzaup && life_is_arrested != 0) then { 	}; 	 	 	 	player switchMove "AmovPercMstpSlowWrflDnon_SaluteIn"; 	player SVAR ["Escorting",false,true]; 	player SVAR ["transporting",false,true]; 	detach player; }; 