 private ["_wlwmmlcjewzziosjgksjumbsgfghxpgroxohaboiwipskmxjlsuhvaquazemzgqdpda","_cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq","_lacxfykiajdihxgbagtzhfbjiohxmvgghjsczrbyejqekrofrmpjcglwenuhjof","_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi","_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgiExists","_color","_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgiPos"];  _wlwmmlcjewzziosjgksjumbsgfghxpgroxohaboiwipskmxjlsuhvaquazemzgqdpda = [_this,0,0,[0]] call BIS_fnc_param; _cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq = [_this,1,[],[[]]] call BIS_fnc_param; _lacxfykiajdihxgbagtzhfbjiohxmvgghjsczrbyejqekrofrmpjcglwenuhjof = [_this,2,0,[0]] call BIS_fnc_param; _color = [_this,3,"ColorWhite",[""]] call BIS_fnc_param;  if(isNil "safekeeping_safezones_mutex") then {safekeeping_safezones_mutex = false;};  switch (_wlwmmlcjewzziosjgksjumbsgfghxpgroxohaboiwipskmxjlsuhvaquazemzgqdpda) do { 	case 0: {  		if(count (var_base getVariable ["areaSafe_spawn",[]]) < 0) exitWith {}; 		if(!(player getVariable ["Safekeeping",false])) exitWith {}; 		deleteMarkerLocal "safekeeping_areaspawn"; 		if(count _cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq == 0) then { 			_cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq = (var_base getVariable ["areaSafe_spawn",[]]) select 0;  			_lacxfykiajdihxgbagtzhfbjiohxmvgghjsczrbyejqekrofrmpjcglwenuhjof = (var_base getVariable ["areaSafe_spawn",[]]) select 1; 		}; 		 		createMarkerLocal ["safekeeping_areaspawn",_cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq]; 		"safekeeping_areaspawn" setMarkerShapeLocal "ELLIPSE"; 		"safekeeping_areaspawn" setMarkerColorLocal "ColorBlack"; 		"safekeeping_areaspawn" setMarkerBrushLocal "Border"; 		"safekeeping_areaspawn" setMarkerSizeLocal [_lacxfykiajdihxgbagtzhfbjiohxmvgghjsczrbyejqekrofrmpjcglwenuhjof, _lacxfykiajdihxgbagtzhfbjiohxmvgghjsczrbyejqekrofrmpjcglwenuhjof]; 	};  	case 1: {  		deleteMarkerLocal "safekeeping_areaspawn"; 		deleteMarkerLocal "safekeeping_bluespawn"; 		deleteMarkerLocal "safekeeping_redspawn"; 		deleteMarkerLocal "safekeeping_greenspawn"; 		deleteMarkerLocal "safekeeping_generalspawn"; 		 		deleteMarkerLocal "safekeeping_bluezone"; 		deleteMarkerLocal "safekeeping_redzone"; 		deleteMarkerLocal "safekeeping_greenzone"; 		deleteMarkerLocal "safekeeping_generalzone"; 	}; 	 	case 2: {  		if(count (var_base getVariable ["blueSafe_spawn",[]]) < 0) exitWith {}; 		if(!(player getVariable ["Safekeeping",false])) exitWith {}; 		deleteMarkerLocal "safekeeping_bluespawn"; 		if(count _cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq == 0) then { 			_cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq = (var_base getVariable ["blueSafe_spawn",[]]); 		}; 		 		createMarkerLocal ["safekeeping_bluespawn",_cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq]; 		"safekeeping_bluespawn" setMarkerColorLocal "ColorBlue"; 		"safekeeping_bluespawn" setMarkerTextLocal "Blått spawn"; 		"safekeeping_bluespawn" setMarkerTypeLocal "mil_start"; 		[7] spawn life_fnc_cffqieiafhbofhqthjbvastsiczvnuzljhbtedyjhqjvdhluzsbbgyiv; 	}; 	 	case 3: {  		if(count (var_base getVariable ["redSafe_spawn",[]]) < 0) exitWith {}; 		if(!(player getVariable ["Safekeeping",false])) exitWith {}; 		deleteMarkerLocal "safekeeping_redspawn"; 		if(count _cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq == 0) then { 			_cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq = (var_base getVariable ["redSafe_spawn",[]]); 		}; 		 		createMarkerLocal ["safekeeping_redspawn",_cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq]; 		"safekeeping_redspawn" setMarkerColorLocal "ColorRed"; 		"safekeeping_redspawn" setMarkerTextLocal "Rött spawn"; 		"safekeeping_redspawn" setMarkerTypeLocal "mil_start"; 		[7] spawn life_fnc_cffqieiafhbofhqthjbvastsiczvnuzljhbtedyjhqjvdhluzsbbgyiv; 	}; 	 	case 4: {  		if(count (var_base getVariable ["generalSafe_spawn",[]]) < 0) exitWith {}; 		if(!(player getVariable ["Safekeeping",false])) exitWith {}; 		deleteMarkerLocal "safekeeping_generalspawn"; 		if(count _cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq == 0) then { 			_cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq = (var_base getVariable ["generalSafe_spawn",[]]); 		}; 		 		createMarkerLocal ["safekeeping_generalspawn",_cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq]; 		"safekeeping_generalspawn" setMarkerColorLocal "ColorYellow"; 		"safekeeping_generalspawn" setMarkerTextLocal "Generellt spawn"; 		"safekeeping_generalspawn" setMarkerTypeLocal "mil_start"; 		[7] spawn life_fnc_cffqieiafhbofhqthjbvastsiczvnuzljhbtedyjhqjvdhluzsbbgyiv; 	}; 	 	case 5: {  		if(count (var_base getVariable ["greenSafe_spawn",[]]) < 0) exitWith {}; 		if(!(player getVariable ["Safekeeping",false])) exitWith {}; 		deleteMarkerLocal "safekeeping_greenspawn"; 		if(count _cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq == 0) then { 			_cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq = (var_base getVariable ["greenSafe_spawn",[]]); 		}; 		 		createMarkerLocal ["safekeeping_greenspawn",_cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq]; 		"safekeeping_greenspawn" setMarkerColorLocal "ColorGreen"; 		"safekeeping_greenspawn" setMarkerTextLocal "Grönt spawn"; 		"safekeeping_greenspawn" setMarkerTypeLocal "mil_start"; 		[7] spawn life_fnc_cffqieiafhbofhqthjbvastsiczvnuzljhbtedyjhqjvdhluzsbbgyiv; 	}; 	 	case 6: {  		if(_color == "abort") exitWith {if(life_debugging) then {systemChat "Circle deleted";}; deleteMarker "event_kothcircle";}; 		if(life_debugging) then {systemChat "Circle created";}; 		if(count (var_base getVariable ["event_koth_area",[]]) < 0) exitWith {}; 		if!(inEventGame) exitWith {}; 		deleteMarkerLocal "event_kothcircle"; 		if(count _cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq == 0) then { 			_cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq = (var_base getVariable ["event_koth_area",[]]) select 0;  			_lacxfykiajdihxgbagtzhfbjiohxmvgghjsczrbyejqekrofrmpjcglwenuhjof = (var_base getVariable ["event_koth_area",[]]) select 1; 		}; 		 		_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi = createMarkerLocal ["event_kothcircle",_cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq]; 		_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerShapeLocal "ELLIPSE"; 		_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerColorLocal _color; 		_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerSizeLocal [_lacxfykiajdihxgbagtzhfbjiohxmvgghjsczrbyejqekrofrmpjcglwenuhjof, _lacxfykiajdihxgbagtzhfbjiohxmvgghjsczrbyejqekrofrmpjcglwenuhjof]; 		 		 	}; 	 	case 7: {  		waitUntil {!safekeeping_safezones_mutex}; 		safekeeping_safezones_mutex = true; 		_lacxfykiajdihxgbagtzhfbjiohxmvgghjsczrbyejqekrofrmpjcglwenuhjof = var_base getVariable ["safekeeping_safezones",0]; 		 		deleteMarkerLocal "safekeeping_generalzone"; 		deleteMarkerLocal "safekeeping_bluezone"; 		deleteMarkerLocal "safekeeping_redzone"; 		deleteMarkerLocal "safekeeping_greenzone"; 		 		if(_lacxfykiajdihxgbagtzhfbjiohxmvgghjsczrbyejqekrofrmpjcglwenuhjof != 0) then { 			{ 				_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgiPos = getMarkerPos format["safekeeping_%1spawn",_x]; 				if((_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgiPos select 0) != 0) then { 					_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi = createMarkerLocal [format["safekeeping_%1zone",_x],_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgiPos]; 					_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerShapeLocal "ELLIPSE"; 					_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerColorLocal (var_base getVariable ["event_safezone_color","ColorGreen"]); 					_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerSizeLocal [_lacxfykiajdihxgbagtzhfbjiohxmvgghjsczrbyejqekrofrmpjcglwenuhjof, _lacxfykiajdihxgbagtzhfbjiohxmvgghjsczrbyejqekrofrmpjcglwenuhjof]; 				}; 			} foreach ["blue","red","green","general"]; 		}; 		safekeeping_safezones_mutex = false; 	}; 	 	case 8: {  		if(life_adminJail == 0) exitWith {}; 		deleteMarkerLocal "adminJail_circle"; 		if(count _cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq == 0) then { 			_cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq = [3653.37,13112.3,0];  			_lacxfykiajdihxgbagtzhfbjiohxmvgghjsczrbyejqekrofrmpjcglwenuhjof = 90; 		}; 		 		_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi = createMarkerLocal ["adminJail_circle",_cueqzjhetkysfukqzndzhnxikdktiwygtulepalpbbyhnweenhzoumlmmpzxlyglsemjkq]; 		_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerShapeLocal "ELLIPSE"; 		_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerColorLocal "ColorRed"; 		_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerBrushLocal "Border"; 		_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerSizeLocal [_lacxfykiajdihxgbagtzhfbjiohxmvgghjsczrbyejqekrofrmpjcglwenuhjof, _lacxfykiajdihxgbagtzhfbjiohxmvgghjsczrbyejqekrofrmpjcglwenuhjof]; 	}; 	 	case 9: {  		factory_maxRadius = switch (factory_tier) do { 			case 1: {30}; 			case 2: {40}; 			case 3: {50}; 			case 4: {75}; 			case 5: {100}; 			case 6: {125}; 			case 7: {150}; 			default {0}; 		}; 		 		factory_maxObjects = switch (factory_tier) do { 			case 1: {30}; 			case 2: {50}; 			case 3: {75}; 			case 4: {100}; 			case 5: {125}; 			case 6: {150}; 			case 7: {200}; 			default {0}; 		}; 		 		deleteMarkerLocal "factory_ownCircle"; 		_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi = createMarkerLocal ["factory_ownCircle",(getPos factory_mainObject)]; 		_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerShapeLocal "ELLIPSE"; 		_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerColorLocal "ColorBlack"; 		_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerBrushLocal "Border"; 		_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerSizeLocal [factory_maxRadius, factory_maxRadius]; 	}; 	 	case 10: {  		private ["_restricted","_dadgvoymnwhgcqkhhgpeaqdscqnrsazebcwkhiayelqlvkiwzhfxwjlmvqnrqvcfscdsmj"]; 		if(isNil "restrictedMarkers") then {restrictedMarkers = [];}; 		if(isNil "allRestrictedTriggers") then {allRestrictedTriggers = [];}; 		 		restrictedAreaViolations = 0; 		 		{deletemarkerLocal _x;} foreach restrictedMarkers; 		restrictedMarkers = []; 		 		{deleteVehicle _x;} foreach allRestrictedTriggers; 		allRestrictedTriggers = []; 		 		_restricted = var_base getVariable ["restrictedAreas",[]]; 		if(!inEventGame && !safekeeping_active && count _restricted > 0) then { 			started_in_restricted = false; 			{ 				_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi = createMarkerlocal [format["restrictedMarker_%1",(count restrictedMarkers)],(_x select 0)]; 				_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerShapeLocal "ELLIPSE"; 				_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerColorLocal "ColorBlack"; 				_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerSizeLocal [(_x select 1), (_x select 1)]; 				restrictedMarkers pushBack _rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi; 				 				_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi = createMarkerLocal [format["restrictedMarker_%1",(count restrictedMarkers)], (_x select 0)];  				_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerColorLocal "ColorRed"; 				_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerTextLocal "Området är tillfälligt avspärrat av admin, beträd ej!"; 				_rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi setMarkerTypeLocal "mil_warning"; 				restrictedMarkers pushBack _rldpvgbwvcdzslclcwaerhtcwmplaujlxsgnjiqtndpnfhfcdwdvhodwipgi; 				 				if((player distance (_x select 0)) < (_x select 1)) then {started_in_restricted = true}; 				_dadgvoymnwhgcqkhhgpeaqdscqnrsazebcwkhiayelqlvkiwzhfxwjlmvqnrqvcfscdsmj = createTrigger ["EmptyDetector", (_x select 0), false]; 				_dadgvoymnwhgcqkhhgpeaqdscqnrsazebcwkhiayelqlvkiwzhfxwjlmvqnrqvcfscdsmj setTriggerArea [(_x select 1), (_x select 1), 0, false]; 				_dadgvoymnwhgcqkhhgpeaqdscqnrsazebcwkhiayelqlvkiwzhfxwjlmvqnrqvcfscdsmj setTriggerActivation ["ANY", "PRESENT", true]; 				_dadgvoymnwhgcqkhhgpeaqdscqnrsazebcwkhiayelqlvkiwzhfxwjlmvqnrqvcfscdsmj setTriggerStatements ["this && (local player) && (vehicle player in thisList)", " 					[thisTrigger] spawn { 						private ['_dadgvoymnwhgcqkhhgpeaqdscqnrsazebcwkhiayelqlvkiwzhfxwjlmvqnrqvcfscdsmj']; 						_dadgvoymnwhgcqkhhgpeaqdscqnrsazebcwkhiayelqlvkiwzhfxwjlmvqnrqvcfscdsmj = (_this select 0); 						 						waitUntil {!safekeeping_inprogress}; 						if(!inEventGame && !safekeeping_active) then { 							['Lämna genast det avspärrade området (markerat på kartan), annars kommer du att bli bestraffad!','auto',3] spawn TON_fnc_clientMessage; 							restrictedAreaViolations = restrictedAreaViolations + 1; 							if(restrictedAreaViolations < 3) then {sleep 30;}; 							if!(isNull _dadgvoymnwhgcqkhhgpeaqdscqnrsazebcwkhiayelqlvkiwzhfxwjlmvqnrqvcfscdsmj) then { 								if(((getPos player) inArea _dadgvoymnwhgcqkhhgpeaqdscqnrsazebcwkhiayelqlvkiwzhfxwjlmvqnrqvcfscdsmj) && life_adminjail == 0) then { 									if(started_in_restricted && restrictedAreaViolations == 1) then { 										[getPlayerUID player,0,true] remoteExec ['TON_fnc_gjabrfaiiobznrniuowzaaqpptelxqjgiwquhaagdnpbtzdjreviwc',2]; 									} else { 										[player,getPlayerUID player,10,'Avspärrat område beträdet',profileName,'Automatisk'] remoteExec ['TON_fnc_hiswfdydixrzayqnohaowabpjftnaspkqmhagltkugbxmcyxxymshpkqyhz',2]; 									}; 								}; 							}; 						}; 					}; 				", ""]; 				allRestrictedTriggers pushBack _dadgvoymnwhgcqkhhgpeaqdscqnrsazebcwkhiayelqlvkiwzhfxwjlmvqnrqvcfscdsmj; 			} foreach _restricted; 		}; 	}; };  if(true) exitWith {};  { 	_x setTriggerStatements ["this && (local player) && (vehicle player in thisList)", " 	[thisTrigger] spawn { 		private ['_dadgvoymnwhgcqkhhgpeaqdscqnrsazebcwkhiayelqlvkiwzhfxwjlmvqnrqvcfscdsmj']; 		_dadgvoymnwhgcqkhhgpeaqdscqnrsazebcwkhiayelqlvkiwzhfxwjlmvqnrqvcfscdsmj = (_this select 0); 		 		waitUntil {!safekeeping_inprogress}; 		if(!inEventGame && !safekeeping_active) then {					 			['Lämna genast det avspärrade området (markerat på kartan), annars kommer du att bli inlåst i adminfängelse!','auto',3] spawn TON_fnc_clientMessage; 			sleep 30; 			if!(isNull _dadgvoymnwhgcqkhhgpeaqdscqnrsazebcwkhiayelqlvkiwzhfxwjlmvqnrqvcfscdsmj) then { 				if(((getPos player) inArea _dadgvoymnwhgcqkhhgpeaqdscqnrsazebcwkhiayelqlvkiwzhfxwjlmvqnrqvcfscdsmj) && life_adminjail == 0) then { 					systemChat 'test'; 					[player,getPlayerUID player,10,'Avspärrat område beträdet',profileName,'Automatisk'] remoteExec ['TON_fnc_hiswfdydixrzayqnohaowabpjftnaspkqmhagltkugbxmcyxxymshpkqyhz',2]; 				}; 			}; 		}; 	}; ", ""]; } foreach allRestrictedTriggers; 