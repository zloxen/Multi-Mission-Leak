private["_mode","_totenliste"];
_totenliste = call compile format["%1", _totenliste];
if(isNil "_totenliste") exitwith {};
if(isNull _totenliste) exitWith {};