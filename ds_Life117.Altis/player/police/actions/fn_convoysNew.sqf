/*
	Author: Shawn "Huntah" Macgillivray
	
	Description:
	Police initiated convoy missions
*/
private["_infoArray","_action","_fail","_vehArray","_randomVeh","_veh","_vehicle","_markerobj","_markername","_markerojb","_copLevel"];

if((player getVariable ["policeAction",""]) != "Escorting Convoy")exitwith{hint "You can not do this while your task is not set to Escorting Convoy"};

_fail = false;
_infoArray = [];

switch(true)do
	{
	case (player distance conv2 < 50): {_infoArray = [500000,"cop_air_2_1"]};//Kavala
	case (player distance Bubbaa_1_2 < 50): {_infoArray = [500000,"cop_air_22"]};//Sofia
	};

if(DS_copLevel < 4)exitwith{hint "This is for rank 4 and above police officers!"};

if(police_convoy)exitwith {hint "There is already a police convoy mission active"};

_action = [
format ["This convoy mission cost $%1 from the police bank to start, would you like more information?",[(_infoArray select 0)] call DS_fnc_numberText],
"Police Convoy",
"Yes",
"No"
] call BIS_fnc_guiMessage;
if(!_action)exitwith{};
	
_action = [
"You will need to escort a truck to locations marked on your map, you may need to enter raid zones, you must obey the raiding rules in this case",
"Police Convoy",
"Start",
"Exit"
] call BIS_fnc_guiMessage;
	
if(!_action)exitwith{};
if(DS_policeBank < (_infoArray select 0))exitwith{hint "There is not enough funds in the police bank account to begin this mission"};
if(count(nearestObjects[(getMarkerPos (_infoArray select 1)),["Car","Ship","Air"],15]) != 0) exitWith {hint "There is a vehicle blocking the spawn point"};
	
[[(_infoArray select 0),false],"HUNT_fnc_policeBank",false,false] spawn BIS_fnc_MP;
	
_vehArray = ["B_Truck_01_box_F","B_Truck_01_covered_F","B_Truck_01_transport_F","I_Truck_02_covered_F","I_Truck_02_transport_F","O_Truck_03_transport_F"];
_randomVeh = (floor(random(count _vehArray)));
_veh = (_vehArray select _randomVeh);
_vehicle = createVehicle [_veh, (getMarkerPos (_infoArray select 1)), [], 0, "NONE"];
waitUntil {!isNil "_vehicle"};
_vehicle setObjectTextureGlobal[0,"extras\textures\vehicles\black.paa"];
_vehicle setObjectTextureGlobal[1,"extras\textures\vehicles\black.paa"];
_vehicle setVariable["vehicle_owners",[[getPlayerUID player,profileName,player]],true];
_vehicle setVariable["gettingCaptured",false,true];
_vehicle setVariable["policeConvoy",true,true];
_vehicle setVariable["value",(_infoArray select 0),true];
clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;
DS_keyRing pushBack _vehicle;
_vehicle setVariable["boot_open",true,true];
	
[[_vehicle,_infoArray],"HUNT_fnc_convoyMissionsLarge",false,false] spawn BIS_fnc_MP;
police_convoy = true;publicVariable "police_convoy";