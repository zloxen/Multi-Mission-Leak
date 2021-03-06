/*
	Darkside Life

	Author: Shawn "Huntah" Macgillivray

	Description:
	Clears a players wanted status
*/

private["_pack","_display","_text","_units","_charge","_chargeStr"];

_unit = lbData [2666,lbCurSel 2666];
_unit = missionNamespace getVariable _unit;

if(isNil "_unit")exitwith{hint "You did not select a player"};
if(!(playerSide isEqualTo west))exitwith{hint "Only police can pardon criminals";};
if(DS_copLevel < 3)exitwith {hint "This is for rank 3 and above police officers!";};
_pack = false;
_pack = [
	"Are you sure you want to remove this players charges?",
	"Remove Charges",
	"Yes",
	"No"
] call BIS_fnc_guiMessage;
if(!_pack)exitwith{};
[] remoteExecCall ["DS_fnc_removeCharges",_unit];
closeDialog 0;
[0,format["Officer %1 has removed all bounties from %2",(name player),(name _unit)]] remoteExecCall ["DS_fnc_globalMessage",west];