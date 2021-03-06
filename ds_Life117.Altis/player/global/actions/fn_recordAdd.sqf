/*
	Author: Shawn "Huntah" Macgillivray
	
	Description:
	Adds data to a players criminal record
*/

private ["_entry","_bounty","_newRecord1","_newRecord2","_type","_strToAdd","_uid","_tempBounty","_testUID","_score","_chance","_entry","_time"];

_bounty = (DS_wanted_Stats select 0);

switch(true)do
	{
	case (_bounty > 500000):{_chance = 100};
	case (_bounty > 350000):{_chance = 90};
	case (_bounty > 225000):{_chance = 80};
	case (_bounty > 150000):{_chance = 75};
	case (_bounty > 80000):{_chance = 70};
	case (_bounty > 40000):{_chance = 65};
	default {_chance = 60};
	};
_rand = random 100;	
if(_rand > _chance)exitwith{};
DS_spotted = true;
_newRecord1 = "";
switch(true)do
	{
	case (player distance (getMarkerPos "civ_spawn_1") < 1500):{_newRecord1 = "Kavala"};
	case (player distance (getMarkerPos "gang_area_2") < 1500):{_newRecord1 = "Kore"};
	case (player distance (getMarkerPos "jail_marker_main") < 1500):{_newRecord1 = "Jail"};
	case (player distance (getMarkerPos "Gas1_1") < 1500):{_newRecord1 = "Agios"};
	case (player distance (getMarkerPos "Gen_3_2_1_1") < 1500):{_newRecord1 = "Zaros"};
	case (player distance (getMarkerPos "Gas1_1_1_1") < 1500):{_newRecord1 = "Lakka"};
	case (player distance (getMarkerPos "skydiving_1") < 1500):{_newRecord1 = "Athira Air Field"};
	case (player distance (getMarkerPos "Gen_3_2_2_1") < 1500):{_newRecord1 = "Athira"};
	case (player distance (getMarkerPos "hosp1_1_2_4_1_1") < 1500):{_newRecord1 = "Pyrgos"};
	case (player distance (getMarkerPos "Gas1_1_1_2_1_1_1_1") < 1500):{_newRecord1 = "Paros"};
	case (player distance (getMarkerPos "Gen_3_3_1_1_1") < 1500):{_newRecord1 = "Sofia"};
	case (player distance (getMarkerPos "gang_area_2_1") < 1500):{_newRecord1 = "Loannina"};
	case (player distance (getMarkerPos "gang_area_3_1") < 1500):{_newRecord1 = "Charkia"};
	case (player distance (getMarkerPos "Rebelop_2") < 1500):{_newRecord1 = "Rebel North"};
	case (player distance (getMarkerPos "Rebelop_2_1") < 1500):{_newRecord1 = "Rebel South"};
	default {_newRecord1 = ""};
	};
if(_newRecord1 isEqualTo "")exitwith{};
_time = serverTime;						
if(DS_moral == 0)then
	{
	sleep (_chance/2);
	}
	else
	{
	sleep ((_chance/4) + (DS_moral/10));
	};

_strToAdd = format ["Spotted near %1",_newRecord1];
_entry = [];
_entry pushBack _strToAdd;
_entry pushBack _time;

DS_civRecords = [_entry];
	
sleep 300;
DS_spotted = false;