
#include <macro.h>

#define INUSE(ENTITY) ENTITY SVAR ["inUse",false,true]
 private ["_brdmccewgdsoikzptaazajihiijkmsprnvrpookqanbnzphwohluhhbgpzqben","_rdbcyeydzhsuejshdzuizeooypfhnajxwrcajxarstfjxquydxtnzkjucppz","_illegal","_tvmvdtkrsiljumikuafzplieaxtuhylkcajglvbhioytmhqlluuafhwoldsfqlbq"]; if((time - life_action_delay) < 2) exitWith {hint "You can't rapidly use action keys!"; INUSE(_this);}; if(isNull _this OR {player distance _this > 3}) exitWith {INUSE(_this);};  _brdmccewgdsoikzptaazajihiijkmsprnvrpookqanbnzphwohluhhbgpzqben = _this GVAR ["item",[]]; if(EQUAL(count _brdmccewgdsoikzptaazajihiijkmsprnvrpookqanbnzphwohluhhbgpzqben,0)) exitWith {deleteVehicle _this;}; _rdbcyeydzhsuejshdzuizeooypfhnajxwrcajxarstfjxquydxtnzkjucppz = ITEM_NAME(SEL(_brdmccewgdsoikzptaazajihiijkmsprnvrpookqanbnzphwohluhhbgpzqben,0)); _illegal = ITEM_ILLEGAL(SEL(_brdmccewgdsoikzptaazajihiijkmsprnvrpookqanbnzphwohluhhbgpzqben,0));  if(playerSide == west && (EQUAL(_illegal,1))) exitWith { 	titleText[format[localize "STR_NOTF_PickedEvidence",_rdbcyeydzhsuejshdzuizeooypfhnajxwrcajxarstfjxquydxtnzkjucppz,[round(ITEM_SELLPRICE(SEL(_brdmccewgdsoikzptaazajihiijkmsprnvrpookqanbnzphwohluhhbgpzqben,0)) / 2)] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq],"PLAIN"]; 	ADD(BANK,round(ITEM_SELLPRICE(SEL(_brdmccewgdsoikzptaazajihiijkmsprnvrpookqanbnzphwohluhhbgpzqben,0)) / 2)); 	deleteVehicle _this; 	life_action_delay = time; };  life_action_delay = time; _tvmvdtkrsiljumikuafzplieaxtuhylkcajglvbhioytmhqlluuafhwoldsfqlbq = [SEL(_brdmccewgdsoikzptaazajihiijkmsprnvrpookqanbnzphwohluhhbgpzqben,0),SEL(_brdmccewgdsoikzptaazajihiijkmsprnvrpookqanbnzphwohluhhbgpzqben,1),life_carryWeight,life_maxWeight] call life_fnc_wvdznvaqxsfdfvikfnyhkpoigxucyfqjhqtuchxgawxyvlxhru; if(_tvmvdtkrsiljumikuafzplieaxtuhylkcajglvbhioytmhqlluuafhwoldsfqlbq <= 0) exitWith {hint localize "STR_NOTF_InvFull"; INUSE(_this);};  if(!(EQUAL(_tvmvdtkrsiljumikuafzplieaxtuhylkcajglvbhioytmhqlluuafhwoldsfqlbq,SEL(_brdmccewgdsoikzptaazajihiijkmsprnvrpookqanbnzphwohluhhbgpzqben,1)))) then { 	if(([true,SEL(_brdmccewgdsoikzptaazajihiijkmsprnvrpookqanbnzphwohluhhbgpzqben,0),_tvmvdtkrsiljumikuafzplieaxtuhylkcajglvbhioytmhqlluuafhwoldsfqlbq] call life_fnc_obfjrnynfhghcglhujcjbgakxemxpjvrqczgxoeickhzvgovmtdbvr)) then { 		player playMove "AinvPknlMstpSlayWrflDnon"; 		 		_this SVAR ["item",[SEL(_brdmccewgdsoikzptaazajihiijkmsprnvrpookqanbnzphwohluhhbgpzqben,0),(SEL(_brdmccewgdsoikzptaazajihiijkmsprnvrpookqanbnzphwohluhhbgpzqben,1)) - _tvmvdtkrsiljumikuafzplieaxtuhylkcajglvbhioytmhqlluuafhwoldsfqlbq],true]; 		titleText[format[localize "STR_NOTF_Picked",_tvmvdtkrsiljumikuafzplieaxtuhylkcajglvbhioytmhqlluuafhwoldsfqlbq,localize _rdbcyeydzhsuejshdzuizeooypfhnajxwrcajxarstfjxquydxtnzkjucppz],"PLAIN"]; 		INUSE(_this); 	} else { 		INUSE(_this); 	}; } else { 	if(([true,SEL(_brdmccewgdsoikzptaazajihiijkmsprnvrpookqanbnzphwohluhhbgpzqben,0),SEL(_brdmccewgdsoikzptaazajihiijkmsprnvrpookqanbnzphwohluhhbgpzqben,1)] call life_fnc_obfjrnynfhghcglhujcjbgakxemxpjvrqczgxoeickhzvgovmtdbvr)) then { 		deleteVehicle _this; 		 		player playMove "AinvPknlMstpSlayWrflDnon"; 		 		titleText[format[localize "STR_NOTF_Picked",_tvmvdtkrsiljumikuafzplieaxtuhylkcajglvbhioytmhqlluuafhwoldsfqlbq,localize _rdbcyeydzhsuejshdzuizeooypfhnajxwrcajxarstfjxquydxtnzkjucppz],"PLAIN"]; 	} else { 		INUSE(_this); 	}; }; 