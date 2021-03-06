/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if(player getVariable["restrained",FALSE]) exitWith {hint "Du bist gefesselt und erreichst deinen Rucksack nicht."};
if((lbCurSel 3201) == -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = lbData[3201,(lbCurSel 3201)];

switch (true) do
{
	case(_item == "defibrillator"): 
	{
		if(playerside == independent) exitWith {hint "Als Arzt besitzt du einen dauerhaften Defibrillator. Dieser hier ist nicht notwendig."};
		if(independent countside playableUnits > 0) exitWith {hint "Ein Arzt ist derzeitig auf der Insel. Bitte verwende den Notruf!"};
		if(cursortarget isKindOf "Man" && (!alive cursortarget)) then {
			if(([false,_item,1] call life_fnc_handleInv)) then {
				[cursortarget,2] spawn life_fnc_revivePlayer;
			} else {
				hint "Benutze den Defibrillator bei einer toten Person!";
			};
		};	
	};
	
	case (_item in ["water","coffee","kakao"]):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			life_toilet = life_toilet + round(random 20);
		};
	};
	
	case (_item == "boltcutter"): {	
		[cursorObject] spawn life_fnc_boltcutter;
		closeDialog 0;
	};

	case (_item == "rollator"): {
		if!(isNull life_rolly) exitWith {hint "Dein Rollator wurde schon ausgepackt!"};
		[] call life_fnc_rollator;
	};
	
	case (_item == "football"): {
		if!(isNull life_football) exitWith {hint "Dein Fußball wurde schon ausgepackt!"};
		[] call life_fnc_football;
	};

	case (_item == "volleyball"): {
		[0] call life_fnc_volleyball;
	}; 

	case (_item == "airhorn"): {
		if!(isNull life_airhorn) exitWith {hint "Dein Airhorn wurde schon ausgepackt!"};
		[] call life_fnc_airhorn;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};
	
	case (_item == "prize"): {
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			closedialog 0;
			[] spawn life_fnc_prize;
		};
	};
	
	case (_item in ["wschokolade","banane"]): {
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			closedialog 0;
			life_hunger = 200;
			hint "Dein Appetit ist nun erstmal gestillt!";
			if(!erfolg_wschokolade && _item == "wschokolade") then {erfolg_wschokolade = true; ["erfolg_wschokolade"] spawn life_fnc_erfolgerhalten;};
		};
	};
	
	case (_item == "ahwcart"): {
		if(!life_ahwpremium) then {life_ahwpremium = true};
		[] spawn life_fnc_ShowAHWLicense;
	};
	
	case (_item == "party"):
	{
		if(life_hupe_active) exitWith {};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn
			{
				life_hupe_active = true;
				sleep 5;
				life_hupe_active = false;
			};
			[player, "party"] remoteExecCall ["say3D",0];
		};
	};
	
	case (_item == "feuerwerkr"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[0] spawn life_fnc_firework;
		};
	};
	
	case (_item == "feuerwerkb"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[1] spawn life_fnc_firework;
		};
	};
	
	case (_item == "feuerwerkg"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[2] spawn life_fnc_firework;
		};
	};
	
	case (_item == "feuerwerkw"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[3] spawn life_fnc_firework;
		};
	};
		
	case (_item == "feuerwerk"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[4] spawn life_fnc_firework;
			if(!erfolg_pyromane) then {erfolg_pyromane = true; ["erfolg_pyromane"] spawn life_fnc_erfolgerhalten;};
		};
	};
	
	case (_item == "darkuni"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			_rnd = round(random 3);
			switch(_rnd) do {
			case 0: {player additem "U_B_Soldier_VR"};
			case 1: {player additem "U_O_Soldier_VR"};
			case 2: {player additem "U_I_Soldier_VR"};
			case 3: {player additem "U_C_Soldier_VR"};
			};
		};
		hint "Du hast die Alienhaut in deinen Rucksack gelegt.";
	};
	
	case (_item == "jagdhorn"):
	{
		if(life_hupe_active) exitWith {};
		[] spawn
		{
			life_hupe_active = true;
			sleep 7;
			life_hupe_active = false;
		};
		
		[player, "jagdhorn"] remoteExecCall ["say3D",0];
	};
	
	case (_item == "darkorb"):
	{
		closedialog 0;
		[] spawn life_fnc_halloweenorb;
	};
	
	case (_item == "gpstracker"): 
    {
        [cursorTarget] spawn life_fnc_gpsTracker;
    };
	
	case (_item == "timemachine"): 
    {
		if(life_inv_plutonium < 5) exitWith {hint "Du benötigst mindestens 5 Tonnen Plutonium!"};
		if(!((typeOf vehicle player) in ["C_SUV_01_F","C_Hatchback_01_F","C_Hatchback_01_sport_F"])) exitWith {hint "Die Zeitmaschine kann nur in einem SUV, einer Limousine oder Sportlimousine verwendet werden."};
		if(life_inTime) exitWith {hint "Der Fluxkompensator ist gerade erst benutzt worden und noch nicht bereit!"};
		if(([false,"plutonium",5] call life_fnc_handleInv)) then
			{
				[] spawn life_fnc_timemachine;
			};
    };
	
	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			life_toilet = life_toilet + round(random 35);
			[] spawn
			{
				life_redgull_effect = time;
				titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if!(isNull objectParent player) exitWith {hint "Dies kannst du in einem Fahrzeug nicht aufstellen!"};
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item in ["marijuana","joint"]):
	{
    if(([false,_item,1] call life_fnc_handleInv)) then
    {
        [0] spawn life_fnc_weed;
    };
	};
	
	case (_item == "heroinp"):
	{
    if(([false,_item,1] call life_fnc_handleInv)) then
    {
        [1] spawn life_fnc_weed;
    };
	};
	
	case (_item == "battery"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_battery = 100;
			hint "Dein Akku wurde aufgeladen.";
		};
	};
	
	case (_item == "guthaben"):
	{
		[_item] spawn life_fnc_guthabencheck;
	};
	
	case (_item == "guthabenplus"):
	{
		[_item] spawn life_fnc_guthabencheck;
	};
	
	case (_item == "guthabenpremium"):
	{
		[_item] spawn life_fnc_guthabencheck;
	};
		
	case (_item == "detektor"):
	{
		if(life_level < 4) exitWith {hint "Du kannst den Metalldetektor erst ab Level 4 verwenden!"};
		if(player distance boat1 > 10) exitWith {hint "Du bist nicht in der Nähe des richtigen Schiffswrack!"};
		[] spawn life_fnc_schatzsuchestart;
		player say3D "beep";
	};
	
	case (_item == "holzb"):
	{
		if!(isNull objectParent player) exitWith {hint "Dies kannst du in einem Fahrzeug nicht aufstellen!"};
		if(!isNull life_holzb) exitWith {hint "Du stellst schon eine Holzbarriere!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_holzb;
		};
	};
	
	case (_item == "sperre"):
	{
		if!(isNull objectParent player) exitWith {hint "Dies kannst du in einem Fahrzeug nicht aufstellen!"};
		if(!isNull life_sperre) exitWith {hint "Du stellst schon eine Strassensperre!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_sperre;
		};
	};
	
	case (_item == "hut"):
	{
		if!(isNull objectParent player) exitWith {hint "Dies kannst du in einem Fahrzeug nicht aufstellen!"};
		if(!isNull life_hut) exitWith {hint "Du stellst schon einen Pylon!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_hut;
		};
	};
	
	case (_item == "band"):
	{
		if!(isNull objectParent player) exitWith {hint "Dies kannst du in einem Fahrzeug nicht aufstellen!"};
		if(!isNull life_band) exitWith {hint "Du stellst schon ein Absperrband!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_band;
		};
	};
	
	case (_item == "netz"):
	{
		if!(isNull objectParent player) exitWith {hint "Dies kannst du in einem Fahrzeug nicht aufstellen!"};
		if(!isNull life_netz) exitWith {hint "Du stellst schon ein Tarnnetz!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_netz;
		};
	};
	
	case (_item == "feuer"):
	{
		if!(isNull objectParent player) exitWith {hint "Dies kannst du in einem Fahrzeug nicht aufstellen!"};
		if(!isNull life_feuer) exitWith {hint "Du stellst schon ein Lagerfeuer!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_feuer;
		};
	};
	
	case (_item == "klappstuhl"):
	{
		if!(isNull objectParent player) exitWith {hint "Dies kannst du in einem Fahrzeug nicht aufstellen!"};
		if(!isNull life_klappstuhl) exitWith {hint "Du stellst schon einen Klappstuhl!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_klappstuhl;
		};
	};
	
	case (_item == "protestschild"):
	{
		if!(isNull objectParent player) exitWith {hint "Dies kannst du in einem Fahrzeug nicht rausholen!"};
		if(life_schild) exitWith {hint "Du trägst bereits ein Schild!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_schild;
		};
	};
	
	case (_item == "laterne"):
	{
		if!(isNull objectParent player) exitWith {hint "Dies kannst du in einem Fahrzeug nicht rausholen!"};
		if(life_laterne) exitWith {hint "Du trägst bereits eine Laterne!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_laterne;
		};
	};
	
	case (_item == "fuelF"):
	{
		if!(isNull objectParent player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "fuelE"):
	{
		[] spawn life_fnc_refueljerryrefuel;
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach","eis","joghurt","henmeat","roostermeat","sheepmeat","goatmeat","bratwurst","pizza","gmandeln","schokolade","praline","salat","tomate","gsalat"]):
	{
		[_item] call life_fnc_eatFood;
	};

	case (_item == "pickaxe"):
	{
		[0] spawn life_fnc_pickAxeUse;
	};
	
	case (_item == "pressluft"):
	{
		if(life_level < 12) exitWith {hint "Deine Kentnisse für die Benutzung eines Presslufthammers reichen noch nicht aus."}; 
		[1] spawn life_fnc_pickAxeUse;
	};
	
	case (_item == "pumpe"):
	{
		[] spawn life_fnc_pumpe;
	};
	
	case (_item == "axt"):
	{
		[] spawn life_fnc_axeUse;
	};

	case (_item == "krankmeldung"):
	{
		[] spawn life_fnc_medShowKrankmeldung;
	};
	
	case (_item == "tablette"):
	{
		if(life_zustand != "Migräne") exitWith {hint "Du benötigst derzeitig keine Kopfschmerztablette!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_zustand = "Gesund";
			"dynamicBlur" ppEffectEnable false;
			hint "Du fühlst dich schon besser!";
		};
	};
	
	case (_item == "tablette2"):
	{
		if!(life_zustand in ["Grippe","Erkältung"]) exitWith {hint "Du benötigst derzeitig kein Gripostal-D!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_zustand = "Gesund";
			hint "Du fühlst dich schon besser!";
		};
	};
	
	case (_item == "tablette3"):
	{
		if(life_zustand != "Übelkeit") exitWith {hint "Du benötigst derzeitig kein Abführmittel!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_zustand = "Gesund";
			hint "Du fühlst dich schon besser!";
		};
	};
	
	case (_item == "gegengift"):
	{
		if!(life_zustand in ["Malaria","Typhus","Vergiftet"]) exitWith {hint "Du benötigst derzeitig kein Gegengift!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_zustand = "Gesund";
			hint "Du fühlst dich schon besser!";
		};
	};
	
	case (_item == "verband"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_verband;
			hint "Deine Wunden werden versorgt...";
		};
	};
	
	case (_item == "kidney"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			player setVariable["missingOrgan",false,true];
			life_thirst = 100;
			life_hunger = 100;
			player setFatigue .5;
		};
	};
	
	case (_item =="bottledwhiskey"):
	{
		if(playerSide in [west,independent]) exitWith {hint localize "STR_MISC_WestIndNoNo";};
		if((player getVariable ["inDrink",FALSE])) exitWith {hint localize "STR_MISC_AlreadyDrinking";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.06;
			life_thirst = 100;
			life_toilet = life_toilet + round(random 35);
			if (life_drink < 0.07) exitWith {};
			[] spawn life_fnc_drinkwhiskey;
			player PlayMoveNow "AcinPercMstpSnonWnonDnon_agony";
		};
	};
	
	case (_item =="bottledshine"):
	{
		if(playerSide in [west,independent]) exitWith {hint localize "STR_MISC_WestIndNoNo";};
		if((player getVariable ["inDrink",FALSE])) exitWith {hint localize "STR_MISC_AlreadyDrinking";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.08;
			life_thirst = 100;
			life_toilet = life_toilet + round(random 35);
			if (life_drink < 0.09) exitWith {};
			[] spawn life_fnc_drinkmoonshine;
			player PlayMoveNow "AcinPercMstpSnonWnonDnon_agony";
		};
	};
	
	case (_item =="bottledbeer"):
	{
		
		if(playerSide in [west,independent]) exitWith {hint localize "STR_MISC_WestIndNoNo";};
		if((player getVariable ["inDrink",FALSE])) exitWith {hint localize "STR_MISC_AlreadyDrinking";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.02;
			life_thirst = 100;
			life_toilet = life_toilet + round(random 35);
			if (life_drink < 0.06) exitWith {};
			[] spawn life_fnc_drinkbeer;
			player PlayMoveNow "AcinPercMstpSnonWnonDnon_agony";
		};
	};
	
	case (_item =="bobby"):
	{
		
		if((player getVariable ["inDrink",FALSE])) exitWith {hint localize "STR_MISC_AlreadyDrinking";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.02;
			life_thirst = 100;
			life_toilet = life_toilet + round(random 25);
			if (life_drink < 0.06) exitWith {};
			[] spawn life_fnc_drinkbeer;
			player PlayMoveNow "AcinPercMstpSnonWnonDnon_agony";
		};
	};
	
	case (_item =="jagdmeister"):
	{
		
		if((player getVariable ["inDrink",FALSE])) exitWith {hint localize "STR_MISC_AlreadyDrinking";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.08;
			life_thirst = 100;
			life_toilet = life_toilet + round(random 25);
			if (life_drink < 0.09) exitWith {};
			[] spawn life_fnc_drinkbeer;
			player PlayMoveNow "AcinPercMstpSnonWnonDnon_agony";
		};
	};
	
	case (_item =="gwein"):
	{
		
		if((player getVariable ["inDrink",FALSE])) exitWith {hint localize "STR_MISC_AlreadyDrinking";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.08;
			life_thirst = 100;
			life_toilet = life_toilet + round(random 40);
			if (life_drink < 0.09) exitWith {};
			[] spawn life_fnc_drinkbeer;
			player PlayMoveNow "AcinPercMstpSnonWnonDnon_agony";
		};
	};
	
	case (_item in ["quest1","quest2","quest3","skelett"]):
	{
		[_item] call life_fnc_questitems;
	};
	
	default
	{
		hint localize "STR_ISTR_NotUsable";
	};
};

[] call life_fnc_inventory;
[] call life_fnc_hudUpdate;