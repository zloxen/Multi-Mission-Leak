private['_SXCJ','_izm','_bTIH','_dANy','_DUe','_zIqy','_aayH','_mYmY','_Ojt'];uisleep 3;_SXCJ = [];{ if (alive _x && (side _x) isEqualTo independent && _x != player) then {_SXCJ pushBack _x};} forEach playableUnits;if(_SXCJ isEqualTo []) then { _izm = 30; _bTIH = "Keine Feuerwehr da"; _dANy = ["Es ist leider kein Feuerwehrmann online, der dir helfen könnte!"]; _DUe = ""; _zIqy = [""];} else { _izm = 8; _bTIH = "Warte auf die Feuerwehr"; _dANy = ["Das erhöht deine Chance reanimiert zu werden!"]; _DUe = "Warte auf die Feuerwehr"; _zIqy = ["Die Feuerwehr sieht, dass du tot bist und ist auf dem Weg zu dir um zu helfen"];};{ uisleep 2; _aayH = _x select 0; _mYmY = _x select 1; _Ojt = format ["<t size='0.55' color='#f2cb0b' align='right'>%1<br /></t>", _aayH]; _Ojt = _Ojt + "<t size='0.70' color='#FFFFFF' align='right'>"; {_Ojt = _Ojt + format ["%1<br />", _x]} forEach _mYmY; _Ojt = _Ojt + "</t>"; _izm + (((count _mYmY) - 1) * 0.9); [ _Ojt, [safezoneX + safezoneW - 0.8,0.50], [safezoneY + safezoneH - 0.8,0.7], _izm, 0.5 ] spawn BIS_fnc_dynamicText; uisleep (_izm);} forEach [ [_bTIH, _dANy], [_DUe, _zIqy]];