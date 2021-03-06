private ["_veh","_lightRed","_lightWhite","_lightYellow","_lightsOn","_brightnessHigh","_brightnessLow","_attach","_leftLights","_rightLights","_type","_attenuation"];

_veh = (_this select 0);
_type = typeOf _veh;
_sun = (sunOrMoon < 1);

if (isNil "_veh" || isNull _veh || !(_veh getVariable "lights")) exitWith {};

_lightRed = [255, 0, 0];
_lightWhite = [255, 255, 255];
_lightYellow = [255, 255, 0];

if (_sun) then
{
    _brightnessLow = 0;
    _brightnessHigh = 15;
    _attenuation = [0.001, 3000, 0, 125000];
} else {
    _brightnessLow = 0;
    _brightnessHigh = 65;
    _attenuation = [0.001, 3000, 0, 400000];
};

_flashes = 3;
_flashOn = 0.1;
_flashOff = 0.001;

_leftLights = [];
_rightLights = [];

_attach =
{
    _isLight = _this select 0;
    _color = _this select 1;
    _position = _this select 2;
    _light = "#lightpoint" createVehicleLocal getPos _veh;
    _light setLightBrightness 0;
    _light setLightAmbient [0,0,0];
    _light setLightAttenuation _attenuation;
    _light setLightIntensity 1000;
    _light setLightFlareSize 1;
    _light setLightFlareMaxDistance 350;
    _light setLightUseFlare true;
    _light setLightDayLight true;

    switch (_color) do
    {
        case "red": { _light setLightColor _lightRed; };
        case "white": { _light setLightColor _lightWhite; };
        case "yellow": { _light setLightColor _lightYellow; };
    };

    if (_isLight) then
    {
        _leftLights pushBack [_light, _position];
    } else {
        _rightLights pushBack [_light, _position];
    };

    _light lightAttachObject [_veh, _position];
};

switch (_type) do
{
    case "C_Offroad_01_F":
    {
        [false, "red", [-0.44, 0, 0.525]] call _attach;
        [true, "yellow", [0.345, 0, 0.525]] call _attach;
        [false, "red", [0.575, -2.95, -0.77]] call _attach;
        [true, "yellow", [-0.645, -2.95, -0.77]] call _attach;
        [false, "white", [0.61, 2.2825, -0.355]] call _attach;
        [true, "white", [-0.695, 2.2825, -0.355]] call _attach;
    };

    case "C_SUV_01_F":
    {
        [false, "yellow", [-0.39, 2.28, -0.52]] call _attach;
        [true, "red", [0.38, 2.28, -0.52]] call _attach;
        [false, "yellow", [-0.86, -2.75, -0.18]] call _attach;
        [true, "red", [0.86, -2.75, -0.18]] call _attach;
        [false, "white", [0.8, 1.95, -0.48]] call _attach;
        [true, "white", [-0.8, 1.95, -0.48]] call _attach;

    };

    case "C_Hatchback_01_sport_F":
    {
        [false, "red", [-0.03, -0, 0.2]] call _attach;
        [true, "yellow", [-0.03, -0, 0.2]] call _attach;
        [false, "red", [-0.8, -2.25, -0.3]] call _attach;
        [true, "yellow", [0.78, -2.25, -0.3]] call _attach;
        [false, "white", [0.75, 1.615, -0.52]] call _attach;
        [true, "white", [-0.8, 1.615, -0.525]] call _attach;
    };
	
	case "C_Hatchback_01_F":
    {
        [false, "red", [-0.03, -0, 0.2]] call _attach;
        [true, "yellow", [-0.03, -0, 0.2]] call _attach;
        [false, "red", [-0.8, -2.25, -0.3]] call _attach;
        [true, "yellow", [0.78, -2.25, -0.3]] call _attach;
        [false, "white", [0.75, 1.615, -0.52]] call _attach;
        [true, "white", [-0.8, 1.615, -0.525]] call _attach;
    };

    case "I_MRAP_03_F":
    {
        [false, "red", [-0.87, 2.2, -0.75]] call _attach;
        [true, "yellow", [0.87, 2.2, -0.75]] call _attach;
        [false, "red", [-0.725, -3.15, 0.025]] call _attach;
        [true, "yellow", [0.725, -3.25, 0.025]] call _attach;
        [false, "white", [1.05, 2.25, -0.3]] call _attach;
        [true, "white", [-1.05, 2.25, -0.3]] call _attach;
    };
	
	   case "C_Van_01_box_F":
    {
        [false, "red", [0.7, 0, 0.8]] call _attach;
        [true, "yellow", [-0.7, 0, 0.8]] call _attach;
        [false, "red", [0.3, 2, -0.5]] call _attach;
        [true, "yellow", [-0.3, 2, -0.5]] call _attach;
    };
		case "C_Van_01_transport_F":
    {
        [false, "red", [0.7, 0, 0.8]] call _attach;
        [true, "yellow", [-0.7, 0, 0.8]] call _attach;
        [false, "red", [0.3, 2, -0.5]] call _attach;
        [true, "yellow", [-0.3, 2, -0.5]] call _attach;
    };
	
		case "B_Heli_Light_01_F":
	{
		[false, "red", [-0.37, 0.0, 0.56]] call _attach;
        [true, "blue", [0.37, 0.0, 0.56]] call _attach;
	};
	
		case "O_Heli_Light_02_unarmed_F":
	{
		[false, "red", [-0.37, 0.0, 0.56]] call _attach;
        [true, "blue", [0.37, 0.0, 0.56]] call _attach;
	};
	
		case "B_Heli_Transport_01_F":
	{
		[false, "red", [-0.5, 0.0, 0.96]] call _attach;
        [true, "blue", [0.5, 0.0, 0.96]] call _attach;
	};
	
		case "I_Heli_light_03_unarmed_F":
	{
		[false, "red", [-0.37, 0.0, 0.56]] call _attach;
        [true, "blue", [0.37, 0.0, 0.56]] call _attach;
	};

		case "B_APC_Tracked_01_CRV_F":
	{
		[false, "red", [-1.35, -3.1, -0.16]] call _attach;
        [true, "blue", [1.35, -3.1, -0.16]] call _attach;
	};
};

_lightsOn = true;
while {(alive _veh)} do
{
    if (!(_veh getVariable "lights")) exitWith {};
    if (_lightsOn) then
    {
        for [{_i=0}, {_i<_flashes}, {_i=_i+1}] do
        {
            { (_x select 0) setLightBrightness _brightnessHigh; } forEach _leftLights;
            uiSleep _flashOn;
            { (_x select 0) setLightBrightness _brightnessLow; } forEach _leftLights;
            uiSleep _flashOff;
        };
        { (_x select 0) setLightBrightness 0; } forEach _leftLights;

        for [{_i=0}, {_i<_flashes}, {_i=_i+1}] do
        {
            { (_x select 0) setLightBrightness _brightnessHigh; } forEach _rightLights;
            uiSleep _flashOn;
            { (_x select 0) setLightBrightness _brightnessLow; } forEach _rightLights;
            uiSleep _flashOff;
        };
        { (_x select 0) setLightBrightness 0; } forEach _rightLights;
    };
};

{ deleteVehicle (_x select 0) } foreach _leftLights;
{ deleteVehicle (_x select 0) } foreach _rightLights;

_leftLights = [];
_rightLights = [];
 