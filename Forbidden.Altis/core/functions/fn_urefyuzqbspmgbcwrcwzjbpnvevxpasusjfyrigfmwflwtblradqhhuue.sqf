
#include <macro.h>
private["_nbehaltxgzusvtrurppgxnbviuucvbcjbvwhukiepmlmsnkpduymznutgsmxw","_jdlgbphgroujpubnfrxexqlqdfeujykmqsjvekylbmqjfdvzgtnkwiazwetyz","_autottifbxkofdnkdzugkvrofvhxaonvmklukzbocgggpwchtgpqvuxxdfjejupvtloodw","_dyudfzxgcuyjypsaliahbiiixhwimdslyobunmbvgcvcmakpvhfeeemcrdvmgnojqhf","_xcqxvwbaikxntdgdtgpqfgjmhkhlakepqfyosixfldobqmmnussmioszbfgy","_iarzkrbqwobuzdnptorecfqydryulqroecjpdcuauptqjgbawzdrdahxfhfmzfmxg","_ugxvfshauyadmbdacljmmlsocvbuwmecgonnuekfafeiwyaudbduzptbrysnldwm","_avmwsczaeejotvircahjagnvverfdoaluusdkkzzhzqwgonwcngdyewlxdgoixv","_zitazwxntdckfyxrierbcbkzgohtfxwgrpxogbsxvydkpmdsaymzeftglwunqcnaicq","_barGate"]; _nbehaltxgzusvtrurppgxnbviuucvbcjbvwhukiepmlmsnkpduymznutgsmxw = [_this,0,0,[0]] call BIS_fnc_param; _jdlgbphgroujpubnfrxexqlqdfeujykmqsjvekylbmqjfdvzgtnkwiazwetyz = [_this,1,-1,[0]] call BIS_fnc_param;  _iarzkrbqwobuzdnptorecfqydryulqroecjpdcuauptqjgbawzdrdahxfhfmzfmxg = nearestObject [player, "Land_BarGate_F"]; _ugxvfshauyadmbdacljmmlsocvbuwmecgonnuekfafeiwyaudbduzptbrysnldwm = player distance _iarzkrbqwobuzdnptorecfqydryulqroecjpdcuauptqjgbawzdrdahxfhfmzfmxg;  _autottifbxkofdnkdzugkvrofvhxaonvmklukzbocgggpwchtgpqvuxxdfjejupvtloodw = [copBar_1,copBar_2,copBar_3,copBar_4,copBar_5,copBar_6,copBar_7,copBar_8,copBar_9,copBar_10,copBar_11,copBar_12,copBar_13,copBar_14,copBar_15,copBar_16,copBar_18,copBar_19,copBar_20,copBar_21,copBar_22,copBar_23,copBar_24,copBar_25,copBar_26,copBar_27,copBar_28,medBar_1,medBar_2,medBar_3,medBar_4,medBar_5,medBar_6,medBar_7]; _dyudfzxgcuyjypsaliahbiiixhwimdslyobunmbvgcvcmakpvhfeeemcrdvmgnojqhf = [copBar_1,copBar_2,copBar_3,copBar_4,copBar_5,copBar_6,copBar_7,copBar_8,copBar_9,copBar_13,copBar_14,copBar_15,copBar_16,copBar_18,copBar_19,copBar_20,copBar_21,copBar_22,copBar_23,copBar_24,copBar_25,copBar_27,copBar_28,medBar_1,medBar_2,medBar_3,medBar_4,medBar_5,medBar_6,medBar_7,rebBar_1,rebBar_2,rebBar_3,rebBar_4,rebBar_5,rebBar_6,neoBar_1,neoBar_2,neoBar_3,neoBar_4]; _xcqxvwbaikxntdgdtgpqfgjmhkhlakepqfyosixfldobqmmnussmioszbfgy = [rebBar_1,rebBar_2,rebBar_3,rebBar_4,rebBar_5,rebBar_6,rebBar_7,rebBar_8,rebBar_9,rebBar_10];  if(var_base getVariable ["Kalochori_rebel",false]) then { 	_xcqxvwbaikxntdgdtgpqfgjmhkhlakepqfyosixfldobqmmnussmioszbfgy = _xcqxvwbaikxntdgdtgpqfgjmhkhlakepqfyosixfldobqmmnussmioszbfgy + [neoBar_1,neoBar_2,neoBar_3,neoBar_4,neoBar_5]; } else { 	_autottifbxkofdnkdzugkvrofvhxaonvmklukzbocgggpwchtgpqvuxxdfjejupvtloodw = _autottifbxkofdnkdzugkvrofvhxaonvmklukzbocgggpwchtgpqvuxxdfjejupvtloodw + [neoBar_1,neoBar_2,neoBar_3,neoBar_4,neoBar_5]; };  switch (playerSide) do { 	case (west): { 		if(_jdlgbphgroujpubnfrxexqlqdfeujykmqsjvekylbmqjfdvzgtnkwiazwetyz == -1) then { 			if(_iarzkrbqwobuzdnptorecfqydryulqroecjpdcuauptqjgbawzdrdahxfhfmzfmxg in _autottifbxkofdnkdzugkvrofvhxaonvmklukzbocgggpwchtgpqvuxxdfjejupvtloodw && _ugxvfshauyadmbdacljmmlsocvbuwmecgonnuekfafeiwyaudbduzptbrysnldwm < 30) then { 				_iarzkrbqwobuzdnptorecfqydryulqroecjpdcuauptqjgbawzdrdahxfhfmzfmxg animate ["Door_1_rot", _nbehaltxgzusvtrurppgxnbviuucvbcjbvwhukiepmlmsnkpduymznutgsmxw]; 			}; 		} else { 			_barGate = call compile format["copBar_%1",_jdlgbphgroujpubnfrxexqlqdfeujykmqsjvekylbmqjfdvzgtnkwiazwetyz]; 			if((player distance _barGate) < 200) then { 				_barGate animate ["Door_1_rot", _nbehaltxgzusvtrurppgxnbviuucvbcjbvwhukiepmlmsnkpduymznutgsmxw]; 				if(_nbehaltxgzusvtrurppgxnbviuucvbcjbvwhukiepmlmsnkpduymznutgsmxw == 0) then { 					[0,format[localize "STR_m_ClosedGate",profileName,_jdlgbphgroujpubnfrxexqlqdfeujykmqsjvekylbmqjfdvzgtnkwiazwetyz]] remoteExec ["life_fnc_broadcast",units (group player)]; 				} else { 					[0,format[localize "STR_m_OpenedGate",profileName,_jdlgbphgroujpubnfrxexqlqdfeujykmqsjvekylbmqjfdvzgtnkwiazwetyz]] remoteExec ["life_fnc_broadcast",units (group player)]; 				}; 			}; 		}; 	}; 	case (independent): { 		if(_iarzkrbqwobuzdnptorecfqydryulqroecjpdcuauptqjgbawzdrdahxfhfmzfmxg in _dyudfzxgcuyjypsaliahbiiixhwimdslyobunmbvgcvcmakpvhfeeemcrdvmgnojqhf && _ugxvfshauyadmbdacljmmlsocvbuwmecgonnuekfafeiwyaudbduzptbrysnldwm < 30) then { 			_iarzkrbqwobuzdnptorecfqydryulqroecjpdcuauptqjgbawzdrdahxfhfmzfmxg animate ["Door_1_rot", _nbehaltxgzusvtrurppgxnbviuucvbcjbvwhukiepmlmsnkpduymznutgsmxw]; 		}; 	}; 	case (civilian): { 		if (FETCH_CONST(life_rebactive) > 0) then { 			if(_jdlgbphgroujpubnfrxexqlqdfeujykmqsjvekylbmqjfdvzgtnkwiazwetyz == -1) then { 				if(_iarzkrbqwobuzdnptorecfqydryulqroecjpdcuauptqjgbawzdrdahxfhfmzfmxg in _xcqxvwbaikxntdgdtgpqfgjmhkhlakepqfyosixfldobqmmnussmioszbfgy && _ugxvfshauyadmbdacljmmlsocvbuwmecgonnuekfafeiwyaudbduzptbrysnldwm < 30) then { 					_iarzkrbqwobuzdnptorecfqydryulqroecjpdcuauptqjgbawzdrdahxfhfmzfmxg animate ["Door_1_rot", _nbehaltxgzusvtrurppgxnbviuucvbcjbvwhukiepmlmsnkpduymznutgsmxw]; 				}; 			} else { 				if((player distance (getMarkerPos "rebel_checkpoint_2")) < 400) then {if(_jdlgbphgroujpubnfrxexqlqdfeujykmqsjvekylbmqjfdvzgtnkwiazwetyz == 1) then {_jdlgbphgroujpubnfrxexqlqdfeujykmqsjvekylbmqjfdvzgtnkwiazwetyz = 10}; if(_jdlgbphgroujpubnfrxexqlqdfeujykmqsjvekylbmqjfdvzgtnkwiazwetyz == 2) then {_jdlgbphgroujpubnfrxexqlqdfeujykmqsjvekylbmqjfdvzgtnkwiazwetyz = 8};}; 				_barGate = call compile format["rebBar_%1",_jdlgbphgroujpubnfrxexqlqdfeujykmqsjvekylbmqjfdvzgtnkwiazwetyz]; 				if((player distance _barGate) < 200 && (_jdlgbphgroujpubnfrxexqlqdfeujykmqsjvekylbmqjfdvzgtnkwiazwetyz in [1,2,3,4,8,10])) then { 					_barGate animate ["Door_1_rot", _nbehaltxgzusvtrurppgxnbviuucvbcjbvwhukiepmlmsnkpduymznutgsmxw]; 					if(_nbehaltxgzusvtrurppgxnbviuucvbcjbvwhukiepmlmsnkpduymznutgsmxw == 0) then { 						[0,format[localize "STR_m_ClosedGate",profileName,_jdlgbphgroujpubnfrxexqlqdfeujykmqsjvekylbmqjfdvzgtnkwiazwetyz]] remoteExec ["life_fnc_broadcast",units (group player)]; 					} else { 						[0,format[localize "STR_m_OpenedGate",profileName,_jdlgbphgroujpubnfrxexqlqdfeujykmqsjvekylbmqjfdvzgtnkwiazwetyz]] remoteExec ["life_fnc_broadcast",units (group player)]; 					}; 				}; 			}; 		} else { 			_avmwsczaeejotvircahjagnvverfdoaluusdkkzzhzqwgonwcngdyewlxdgoixv = life_gangData select 6; 			if(_avmwsczaeejotvircahjagnvverfdoaluusdkkzzhzqwgonwcngdyewlxdgoixv != "0") then { 				_zitazwxntdckfyxrierbcbkzgohtfxwgrpxogbsxvydkpmdsaymzeftglwunqcnaicq = call compile format["VillageBar_%1",_avmwsczaeejotvircahjagnvverfdoaluusdkkzzhzqwgonwcngdyewlxdgoixv]; 				if(_jdlgbphgroujpubnfrxexqlqdfeujykmqsjvekylbmqjfdvzgtnkwiazwetyz == -1) then { 					if(_zitazwxntdckfyxrierbcbkzgohtfxwgrpxogbsxvydkpmdsaymzeftglwunqcnaicq != _iarzkrbqwobuzdnptorecfqydryulqroecjpdcuauptqjgbawzdrdahxfhfmzfmxg) exitWith {}; 					_iarzkrbqwobuzdnptorecfqydryulqroecjpdcuauptqjgbawzdrdahxfhfmzfmxg animate ["Door_1_rot", _nbehaltxgzusvtrurppgxnbviuucvbcjbvwhukiepmlmsnkpduymznutgsmxw]; 				} else { 					if(player distance _zitazwxntdckfyxrierbcbkzgohtfxwgrpxogbsxvydkpmdsaymzeftglwunqcnaicq < 200) then { 						_zitazwxntdckfyxrierbcbkzgohtfxwgrpxogbsxvydkpmdsaymzeftglwunqcnaicq animate ["Door_1_rot", _nbehaltxgzusvtrurppgxnbviuucvbcjbvwhukiepmlmsnkpduymznutgsmxw]; 						if(_nbehaltxgzusvtrurppgxnbviuucvbcjbvwhukiepmlmsnkpduymznutgsmxw == 0) then { 							[0,format[localize "STR_m_ClosedGate",profileName,1]] remoteExec ["life_fnc_broadcast",units (group player)]; 						} else { 							[0,format[localize "STR_m_OpenedGate",profileName,1]] remoteExec ["life_fnc_broadcast",units (group player)]; 						}; 					}; 				}; 			}; 		}; 	}; };   