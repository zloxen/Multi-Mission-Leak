 private["_house","_door","_ucitpoqmuebnaxuneiwzowrxdfreqhdzjuepqekklrtbfpzrcspfkxgpykdhh","_ucitpoqmuebnaxuneiwzowrxdfreqhdzjuepqekklrtbfpzrcspfkxgpykdhhText","_fackcihmwtthcajznpsnxwevrbrfyukmlregggcjapadpmeziuuaaxcfxiykzwvg","_amctfejcrmtmadpccrxrzamnvtrgfppbrqafwrosauylyekgpucoyfhvgcvyarhlteeu","_sygpzdnyxmmcgnspbcrprtpgxezdplmetwgqjiaoxjhoovgiymffsgextzpyyzool","_dkrkdddddjbmjgagtijkvzrinbpqjocvouewmpwsfhzejziflipjnnbfmcmdhvv"]; _house = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; if(isNull _house OR !(_house isKindOf "House_F")) exitWith {}; if(isNil {(_house getVariable "house_owner")}) exitWith {hint localize "STR_House_Raid_NoOwner"};  _dkrkdddddjbmjgagtijkvzrinbpqjocvouewmpwsfhzejziflipjnnbfmcmdhvv = (_house getVariable "house_owner") select 0; if(!([_dkrkdddddjbmjgagtijkvzrinbpqjocvouewmpwsfhzejziflipjnnbfmcmdhvv] call life_fnc_vnndfuwrvksurjesevqgzoozxmoimrreiofsswlylxxbopletubpkqrxfzw)) exitWith {hint localize "STR_House_Raid_OwnerOff"};  _door = [_house] call life_fnc_jkvvmuvnfrypchjwooxahzhfxbygdozoybzteujqgkxtgenmih; if(_door == 0) exitWith {hint localize "STR_Cop_NotaDoor"}; if((_house getVariable[format["bis_disabled_Door_%1",_door],0]) == 0) exitWith {hint localize "STR_House_Raid_DoorUnlocked"};  life_action_inUse = true;   disableSerialization; _ucitpoqmuebnaxuneiwzowrxdfreqhdzjuepqekklrtbfpzrcspfkxgpykdhh = localize "STR_House_Raid_Progress"; 5 cutRsc ["life_progress","PLAIN"]; _ui = uiNamespace getVariable "life_progress"; _fackcihmwtthcajznpsnxwevrbrfyukmlregggcjapadpmeziuuaaxcfxiykzwvg = _ui displayCtrl 38201; _ucitpoqmuebnaxuneiwzowrxdfreqhdzjuepqekklrtbfpzrcspfkxgpykdhhText = _ui displayCtrl 38202; _ucitpoqmuebnaxuneiwzowrxdfreqhdzjuepqekklrtbfpzrcspfkxgpykdhhText ctrlSetText format["%2 (1%1)...","%",_ucitpoqmuebnaxuneiwzowrxdfreqhdzjuepqekklrtbfpzrcspfkxgpykdhh]; _fackcihmwtthcajznpsnxwevrbrfyukmlregggcjapadpmeziuuaaxcfxiykzwvg progressSetPosition 0.01; _sygpzdnyxmmcgnspbcrprtpgxezdplmetwgqjiaoxjhoovgiymffsgextzpyyzool = 0.01; _amctfejcrmtmadpccrxrzamnvtrgfppbrqafwrosauylyekgpucoyfhvgcvyarhlteeu = 0.0015;  [[2,"STR_House_Raid_NOTF",true,[(_house getVariable "house_owner") select 1]],"life_fnc_broadcast",true,false] call life_fnc_MP;  while {true} do { 	if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then { 		[[player,"AinvPknlMstpSnonWnonDnon_medic_1",true],"life_fnc_gbrisqbkirkdomhkildcgyttqicsflitrnbqgpixyslsyszkor",true,false] call life_fnc_MP; 		player switchMove "AinvPknlMstpSnonWnonDnon_medic_1"; 		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1"; 	}; 	sleep 0.26; 	if(isNull _ui) then { 		5 cutRsc ["life_progress","PLAIN"]; 		_ui = uiNamespace getVariable "life_progress"; 	}; 	_sygpzdnyxmmcgnspbcrprtpgxezdplmetwgqjiaoxjhoovgiymffsgextzpyyzool = _sygpzdnyxmmcgnspbcrprtpgxezdplmetwgqjiaoxjhoovgiymffsgextzpyyzool + _amctfejcrmtmadpccrxrzamnvtrgfppbrqafwrosauylyekgpucoyfhvgcvyarhlteeu; 	_fackcihmwtthcajznpsnxwevrbrfyukmlregggcjapadpmeziuuaaxcfxiykzwvg progressSetPosition _sygpzdnyxmmcgnspbcrprtpgxezdplmetwgqjiaoxjhoovgiymffsgextzpyyzool; 	_ucitpoqmuebnaxuneiwzowrxdfreqhdzjuepqekklrtbfpzrcspfkxgpykdhhText ctrlSetText format["%3 (%1%2)...",round(_sygpzdnyxmmcgnspbcrprtpgxezdplmetwgqjiaoxjhoovgiymffsgextzpyyzool * 100),"%",_ucitpoqmuebnaxuneiwzowrxdfreqhdzjuepqekklrtbfpzrcspfkxgpykdhh]; 	if(_sygpzdnyxmmcgnspbcrprtpgxezdplmetwgqjiaoxjhoovgiymffsgextzpyyzool >= 1 OR !alive player) exitWith {}; 	if(life_interrupted) exitWith {}; };   5 cutText ["","PLAIN"]; player playActionNow "stop"; if(!alive player) exitWith {life_action_inUse = false;}; if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;}; life_action_inUse = false; _house animate [format["door_%1_rot",_door],1]; _house setVariable[format["bis_disabled_Door_%1",_door],0,true];  _house setVariable["locked",false,true]; 