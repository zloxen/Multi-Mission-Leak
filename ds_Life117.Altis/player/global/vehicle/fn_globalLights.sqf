/*
	File: fn_copLights.sqf
	Author: mindstorm, modified by Adanteh
	Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
	
	Description:
	Adds the light effect to cop vehicles, specifically the offroad.
*/
Private ["_vehicle","_lightRed","_lightBlue","_lightleft","_lightright","_leftRed","_counter"];
_vehicle = _this select 0;
_counter = 0;
	
if(isNil "_vehicle" OR isNull _vehicle OR !(_vehicle getVariable "sirens")) exitWith {};
_lightRed = [20, 0.1, 0.1];
_lightBlue = [0.1, 0.1, 20];

_lightleft = "#lightpoint" createVehicle getpos _vehicle;   
sleep 0.2;
_lightleft setLightColor _lightRed; 
_lightleft setLightBrightness 0.2;  
_lightleft setLightAmbient [0.1,0.1,1];

switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];
	};
	
	case "B_MRAP_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37, -1.9, 0.7]];
	};
	
	case "C_SUV_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37,-1.2,0.42]];
	};
	
	case "C_Hatchback_01_sport_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.35,-0.2,0.25]];
	};
	
	case "O_G_Offroad_01_armed_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.06]];
	};
	
	case "O_MRAP_02_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37, -1.3, 0.7]];
	};
	
	case "I_MRAP_03_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37, -1, 0.6]];
	};
};

_lightleft setLightAttenuation [0.181, 0, 1000, 130]; 
_lightleft setLightIntensity 10;
_lightleft setLightFlareSize 0.38;
_lightleft setLightFlareMaxDistance 150;
_lightleft setLightUseFlare true;

_lightright = "#lightpoint" createVehicle getpos _vehicle;   
sleep 0.2;
_lightright setLightColor _lightBlue; 
_lightright setLightBrightness 0.2;  
_lightright setLightAmbient [0.1,0.1,1]; 

switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];
	};
	
	case "B_MRAP_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37, -1.9, 0.7]];
	};
	
	case "C_SUV_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37,-1.2,0.42]];
	};
	
	case "C_Hatchback_01_sport_F":
	{
		_lightright lightAttachObject [_vehicle, [0.35,-0.2,0.25]];
	};
	
	case "O_G_Offroad_01_armed_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.06]];
	};
	
	case "O_MRAP_02_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37, -1.3, 0.7]];
	};
	
	case "I_MRAP_03_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37, -1, 0.6]];
	};
};
  
_lightright setLightAttenuation [0.181, 0, 1000, 130]; 
_lightright setLightIntensity 10;
_lightright setLightFlareSize 0.38;
_lightright setLightFlareMaxDistance 150;
_lightright setLightUseFlare true;


_lightleft setLightDayLight true;
_lightright setLightDayLight true;

_leftRed = true;  
while{ (alive _vehicle)} do  
{  
	if(!(_vehicle getVariable "sirens")) exitWith {};
	if(_leftRed) then  
	{  
		_leftRed = false;  
		_lightright setLightBrightness 0.0;  
		sleep 0.05;
		_lightleft setLightBrightness 6;  
	}  
		else  
	{  
		_leftRed = true;  
		_lightleft setLightBrightness 0.0;  
		sleep 0.05;
		_lightright setLightBrightness 6;  
	};  
	if(count crew _vehicle == 0)then{_counter = _counter + 1;};
	if(_counter > 200)exitwith{};
	sleep 0.22;
};  
deleteVehicle _lightleft;
deleteVehicle _lightright;