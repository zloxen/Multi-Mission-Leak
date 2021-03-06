/*
Darkside Life

Author: Shawn "Huntah" Macgillivray

Description:
	Sets up the list in the jobs center
*/
disableSerialization;
private["_shop","_dialog","_vehicleListPrice","_vehicleListStr","_className","_price","_weight","_img","_toolTip","_maxSpeed","_armorRating","_shopArray"];

_shop = _this select 0;
disableSerialization;
_dialog = findDisplay 666667;
_vehicleList = _dialog displayCtrl 1501;
_shopArray = [];

ctrlShow[66653,false];
ctrlShow[778,false];
ctrlShow[777,false];
ctrlShow[66654,false];

_shopArray = 
[
["Fuel Delivery Job","refuelKit","With your own truck, deliver fuel around Altis to lower the price and get paid","fuel"],
["Pilot Cargo Job","airShop","With your own chopper, pick up and deliver Cargo around Altis","pilot"],
["Truck Driver Job","truckShop","Pay a deposit and drive a truck and its cargo to its drop point","truck"]
];

lbClear _vehicleList;

{
	_className = (_x select 3);
	_img = format ["extras\icons\%1.jpg",(_x select 1)];
	_name = (_x select 0);
	_toolTip = (_x select 2);
	_vehicleList lbAdd format ["%1",_name];
	_vehicleList lbSetTooltip [(lbSize _vehicleList)-1, _toolTip];
	_vehicleList lbSetPicture [(lbSize _vehicleList)-1, _img];
	_vehicleList lbSetColor [(lbSize _vehicleList)-1, [0, 1, 0, 0.5]];
	_vehicleList lbSetData [(lbSize _vehicleList)-1,_className];
}forEach _shopArray;
