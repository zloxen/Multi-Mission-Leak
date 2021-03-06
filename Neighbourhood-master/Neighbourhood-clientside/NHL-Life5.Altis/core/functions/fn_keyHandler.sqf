/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main key handler for event 'keyDown'
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;
_handled = false;

_interactionKey = if(count (actionKeys "User10") == 0) then {219} else {(actionKeys "User10") select 0};
_mapKey = actionKeys "ShowMap" select 0;
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D
//Vault handling...
if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute")) && {(player getVariable ["restrained",false])}) exitWith {
	true;
};

if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if(count (actionKeys "User10") != 0 && {(inputAction "User10" > 0)}) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if(!life_action_inUse) then {
		[] spawn 
		{
			private["_handle"];
			_handle = [] spawn life_fnc_actionKeyHandler;
			
			waitUntil {scriptDone _handle};
			life_action_inUse = false;
		};
	};
	true;
};

switch (_code) do
{
	//Space key for Jumping
	case 57:
	{
		if(isNil "jumpActionTime") then {jumpActionTime = 0;};
		if(_shift && {animationState player != "AovrPercMrunSrasWrflDf"} && {isTouchingGround player} && {stance player == "STAND"} && {speed player > 2} && {!life_is_arrested} && {(velocity player) select 2 < 2.5} && {time - jumpActionTime > 1.5}) then {
			jumpActionTime = time; //Update the time.
			[player,true] spawn life_fnc_jumpFnc; //Local execution
			[[player,false],"life_fnc_jumpFnc",nil,FALSE] call life_fnc_MP; //Global execution 
			_handled = true;
		};
	};
	
	//TODO SPIKESTRIP
	case 7:
	{
			if(([false,"spikeStrip",1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	{_handled = true};
	};
	/*case 5:
	{_handled = true};
	case 6:
	{_handled = true};
	case 7:
	{_handled = true};
	case 8:
	{_handled = true};
	*/
	case 9:
	{_handled = true};
	case 10:
	{_handled = true};
	
	
	//Map Key
	case _mapKey:
	{
		switch (playerSide) do 
		{
			case west: {if(!visibleMap) then {[] spawn life_fnc_copMarkers;}};
			case independent: {if(!visibleMap) then {[] spawn life_fnc_medicMarkers;}};
			case civilian: {if(!visibleMap) then {[] spawn life_fnc_groupMarkers;}};
		};
	};
	
	//Holster / recall weapon.
	case 35:
	{
		if(_shift && !_ctrlKey && currentWeapon player != "") then {
			life_curWep_h = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
			player switchcamera cameraView;
		};
		
		if(!_shift && _ctrlKey && !isNil "life_curWep_h" && {(life_curWep_h != "")}) then {
			if(life_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
				player selectWeapon life_curWep_h;
			};
		};
	};
	
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if(!life_action_inUse) then {
			[] spawn 
			{
				private["_handle"];
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};
	
	//Restraining (Shift + R)
	case 19:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			[] call life_fnc_restrainAction;
		};
		if(playerSide == civilian) then 
		{
		
			if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [civilian,independent,west]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
			{
		
			   
				if([false,"zipties",1] call life_fnc_handleInv) then
				{
					[] call life_fnc_restrainAction;
					
				}
				else
				{
					hint "Du hast keine Kabelbinder!";
				};
			};
		};
	};
	
	//shift + g umhauen
		case 34:
		{
		if(_shift) then {_handled = true;};
		if(_shift && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 4 && speed cursorTarget < 1) then
		{
			if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed && !(player getVariable["surrender",false])) then
			{
				[cursorTarget] spawn life_fnc_knockoutAction;
				player say3D "knockout";
			};
			_handled = true;
		};
	};
	
	//surrender... shift + v
	case 48:
	{
		if(_shift) then {_handled = true;};

		if (_shift) then
		{
			if (vehicle player == player && !(player getVariable ["restrained", false]) && (animationState player) != "Incapacitated" && !life_istazed) then
			{
				if (player getVariable ["surrender", false]) then
				{
					player setVariable ["surrender", false, true];
				} else
				{
					[] spawn life_fnc_surrender;
				};
			};
		};
	};
	
	//T Key (Trunk)
	case 20:
	{
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player != player && alive vehicle player) then
			{
				if((vehicle player) in life_vehicles) then
				{
					[vehicle player] call life_fnc_openInventory;
				};
			}
				else
			{
				if((cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship" OR cursorTarget isKindOf "House_F") && player distance cursorTarget < 7 && vehicle player == player && alive cursorTarget) then
				{
					if(cursorTarget in life_vehicles OR {!(cursorTarget getVariable ["locked",true])}) then
					{
						[cursorTarget] call life_fnc_openInventory;
					};
				};
			};
		};
	};
	//L Key?
	case 38: 
	{
		//If cop run checks for turning lights on.
		if(_shift && playerSide in [west,independent]) then {
			if(vehicle player != player && (typeOf vehicle player) in ["C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F","C_Hatchback_01_sport_F"]) then {
				if(!isNil {vehicle player getVariable "lights"}) then {
					if(playerSide == west) then {
						[vehicle player] call life_fnc_sirenLights;
					} else {
						[vehicle player] call life_fnc_medicSirenLights;
					};
					_handled = true;
				};
			};
		};
		
		if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };
	};
	//Y Player Menu
	case 21:
	{
		if(!_alt && !_ctrlKey && !dialog && !(player getVariable ["restrained",false])) then
		{
			[] call life_fnc_p_openMenu;
		};
	};
	
	//F Key
	case 33:
	{
		if(playerSide in [west,independent] && vehicle player != player && !life_siren_active && ((driver vehicle player) == player)) then
		{
			[] spawn
			{
				life_siren_active = true;
				sleep 4.7;
				life_siren_active = false;
			};
			_veh = vehicle player;
			if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
			if((_veh getVariable "siren")) then
			{
				titleText ["Sirene AUS","PLAIN"];
				_veh setVariable["siren",false,true];
			}
				else
			{
				titleText ["Sirene AN","PLAIN"];
				_veh setVariable["siren",true,true];
				if(playerSide == west) then {
					[[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
				} else {
					
					[[_veh],"life_fnc_medicSiren",nil,true] spawn life_fnc_MP;
				};
			};
		};
	};
	
	
	//^ Entfernt
    case 41:
    {
        if(playerSide == civilian) then
        {
        _handled = true;
        };
    };
	
	//Shift+P = Faded Sound
	case 25:
	{
		if(_shift) then
		{
			[] call life_fnc_fadeSound;
			_handled = true;
		};
	};
	
    case 8: //Taste 2
    {
        if(playerSide == west) then 
		{
			[] spawn life_fnc_wantedMenu;
		};
    };
	case 6:
	{
		if(([false,"redgull",1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (6 * 60))};
				player enableFatigue true;
				
			};
		};
		_handled = true;
	};
	
    // O, police gate opener
    case 24:
	{
		if (!_shift && !_alt && !_ctrlKey && (playerSide == west) && (vehicle player != player)) then {
			[] call life_fnc_copOpener;
		};
	};
	
	case 62:
	{
			_handled = true;
	};
    case 63:
	{
			_handled = true;
	};
	case 63:
	{
			_handled = true;
	};
	case 64:
	{
			_handled = true;
	};	
	case 65:
	{
			_handled = true;
	};
	case 66:
	{
			_handled = true;
	};
	case 67:
	{
			_handled = true;
	};
	case 68:
	{
			_handled = true;
	};
	case 87:
	{
			_handled = true;
	};
	case 88:
	{
			_handled = true;
	};
	//Animationen die kuhl sind
	case 79:
	{
		if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
			cutText [format["Taekwondoo!"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exerciseKata";
		};
	};

	case 80:
	{
		if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
			cutText [format["Liegestütz!"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exercisePushup";
		};
	};

	case 81 : 
	{
		if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
		cutText [format["Kniebeuge!"], "PLAIN DOWN"];
		player playMove "AmovPercMstpSnonWnonDnon_exerciseKneeBendB";
		};
	};

	case 75:
	{
		if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
			cutText [format["Stop!"], "PLAIN DOWN"];
			player playMove "Acts_PercMstpSlowWrflDnon_handup2b";
		};
	};

	case 76:
	{
		if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
		cutText [format["Hallo!"], "PLAIN DOWN"];
		player playMove "Acts_PercMstpSlowWrflDnon_handup1b";
		};
	};

	case 77 : 
	{
		if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
		cutText [format["Hay!"], "PLAIN DOWN"];
		player playActionNow "gestureHi";
		};
	};

	case 71 : 
	{
		if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
			cutText [format["Hilfe!"], "PLAIN DOWN"];
			player playMove "Acts_PercMstpSlowWrflDnon_handup2";
		};
	};

	case 72 : 
	{
		if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
			cutText [format["Hier!"], "PLAIN DOWN"];
			player playMove "Acts_PercMstpSlowWrflDnon_handup1";
		};
	};
	
//U Key [open house/car]
	case 22:
	{
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player == player) then
			{
				_veh = cursorTarget;
			}
			else
			{
				_veh = vehicle player;
			};
			
			if(_veh isKindOf "House_F" && playerSide == civilian) then
			{
				if(_veh in life_vehicles && player distance _veh < 15 ) then
				{
					_door = [_veh] call life_fnc_nearestDoor;
					if(_door == 0) exitWith {hint localize "STR_House_Door_NotNear"};
					_locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0];
					if(_locked == 0) then {
						_veh setVariable[format["bis_disabled_Door_%1",_door],1,true];
						_veh animate [format["door_%1_rot",_door],0];
						systemChat localize "STR_House_Door_Lock";
					}
					else
					{
						_veh setVariable[format["bis_disabled_Door_%1",_door],0,true];
						_veh animate [format["door_%1_rot",_door],1];
						systemChat localize "STR_House_Door_Unlock";
					};
				};
			}
			else
			{
				_locked = locked _veh;
				if(player getVariable "restrained") exitWith {hint "Du kannst mit gefesselten Händen keine Tür öffnen..."};
				if(_veh in life_vehicles && player distance _veh < 8 OR vehicle player == _veh) then
				{
					if(_locked == 2) then
					{
						if(local _veh) then
						{
							_veh lock 0;
						}
						else
						{
							[[_veh,0],"life_fnc_lockVehicle",_veh,false] call life_fnc_MP;
						};
						systemChat localize "STR_MISC_VehUnlock";
						player say3D "car_lock";
					}
					else
					{
						if(local _veh) then
						{
							_veh lock 2;
						}
						else
						{
							[[_veh,2],"life_fnc_lockVehicle",_veh,false] call life_fnc_MP;
						};	
						systemChat localize "STR_MISC_VehLock";
						player say3D "unlock";
					};
				};
			};
		};
	};
};	

_handled;