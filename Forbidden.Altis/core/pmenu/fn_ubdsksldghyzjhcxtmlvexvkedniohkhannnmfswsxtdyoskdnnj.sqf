
#include <macro.h>
 private["_qsoakutnotptangvqvaxcsuxfsyqqvirepcwlwwnnprebhzcjwztahkhkxjtnftncfxbvj","_zynnnsacijszyryglbzwedqjtbugdjjkgmboyzonoqeorqsnypxwndymhvbeavcccxbte","_hjdplzwcworizdmmtpikrdtqqtbzuawjeznaddkvdadxbzaxxvlawkodzcjawdfmllkvx"]; _qsoakutnotptangvqvaxcsuxfsyqqvirepcwlwwnnprebhzcjwztahkhkxjtnftncfxbvj = SEL(_this,0); _zynnnsacijszyryglbzwedqjtbugdjjkgmboyzonoqeorqsnypxwndymhvbeavcccxbte = SEL(_this,1); _hjdplzwcworizdmmtpikrdtqqtbzuawjeznaddkvdadxbzaxxvlawkodzcjawdfmllkvx = [_this,2,false,[false]] call BIS_fnc_param;   switch(_qsoakutnotptangvqvaxcsuxfsyqqvirepcwlwwnnprebhzcjwztahkhkxjtnftncfxbvj) do { 	case "tags": { 		if(!_hjdplzwcworizdmmtpikrdtqqtbzuawjeznaddkvdadxbzaxxvlawkodzcjawdfmllkvx) then {[3,_zynnnsacijszyryglbzwedqjtbugdjjkgmboyzonoqeorqsnypxwndymhvbeavcccxbte] spawn life_fnc_avfjxxjduzyrwireckfmrocfepoazicobitqzclmabpfchakjhgab;}; 		if(EQUAL(_zynnnsacijszyryglbzwedqjtbugdjjkgmboyzonoqeorqsnypxwndymhvbeavcccxbte,1)) then { 			life_tagson = true; 			LIFE_ID_PlayerTags = ["LIFE_PlayerTags","onEachFrame","life_fnc_ugoeniciprqfiylbdnpujfjswxwarglikwsszueqovwhsbvaqm"] call BIS_fnc_addStackedEventHandler; 		} else { 			life_tagson = false; 			[LIFE_ID_PlayerTags,"onEachFrame"] call BIS_fnc_removeStackedEventHandler; 		}; 	}; 	 	case "sidechat": { 	 		 		if(!_hjdplzwcworizdmmtpikrdtqqtbzuawjeznaddkvdadxbzaxxvlawkodzcjawdfmllkvx) then {[4,_zynnnsacijszyryglbzwedqjtbugdjjkgmboyzonoqeorqsnypxwndymhvbeavcccxbte] spawn life_fnc_avfjxxjduzyrwireckfmrocfepoazicobitqzclmabpfchakjhgab;}; 		if(EQUAL(_zynnnsacijszyryglbzwedqjtbugdjjkgmboyzonoqeorqsnypxwndymhvbeavcccxbte,1)) then {life_sidechat = true;} else {life_sidechat = false;}; 		 		if(muted_player != 0 && life_sidechat) then { 			if(muted_player == -1) then { 				hint localize "STR_m_CantUnmuteSidePerm"; 			} else { 				hint format[localize "STR_m_CantUnmuteSide",muted_player]; 			}; 			 		}; 			 			 		[[player,life_sidechat,playerSide,muted_player],"TON_fnc_ofdnbdatriuxfqrjexkzqpscwxviomxgyjtjjgiscncgixncmewquvnoj",false,false,true] call life_fnc_MP; 	}; 	 	case "objects": { 		if(!_hjdplzwcworizdmmtpikrdtqqtbzuawjeznaddkvdadxbzaxxvlawkodzcjawdfmllkvx) then {[5,_zynnnsacijszyryglbzwedqjtbugdjjkgmboyzonoqeorqsnypxwndymhvbeavcccxbte] spawn life_fnc_avfjxxjduzyrwireckfmrocfepoazicobitqzclmabpfchakjhgab;}; 		if(EQUAL(_zynnnsacijszyryglbzwedqjtbugdjjkgmboyzonoqeorqsnypxwndymhvbeavcccxbte,1)) then { 			life_revealObjects = true; 			LIFE_ID_RevealObjects = ["LIFE_RevealObjects","onEachFrame","life_fnc_uwpssanbtdostahvojggwkierpvmfzuczfcaxxohfeeseutytoxp"] call BIS_fnc_addStackedEventHandler; 		} else { 			life_revealObjects = false; 			[LIFE_ID_RevealObjects,"onEachFrame"] call BIS_fnc_removeStackedEventHandler; 		}; 	}; 	 	case "turbo": { 		if(!_hjdplzwcworizdmmtpikrdtqqtbzuawjeznaddkvdadxbzaxxvlawkodzcjawdfmllkvx) then {[6,_zynnnsacijszyryglbzwedqjtbugdjjkgmboyzonoqeorqsnypxwndymhvbeavcccxbte] spawn life_fnc_avfjxxjduzyrwireckfmrocfepoazicobitqzclmabpfchakjhgab;}; 		setting_usePerkTurbo = (_zynnnsacijszyryglbzwedqjtbugdjjkgmboyzonoqeorqsnypxwndymhvbeavcccxbte == 1); 		[] spawn life_fnc_cylcoklbmemomcaqesrqdstaesompwmgeoaiyuujdlphokfnsxl; 	}; 	 	case "streamer": { 		if(!_hjdplzwcworizdmmtpikrdtqqtbzuawjeznaddkvdadxbzaxxvlawkodzcjawdfmllkvx) then {[9,_zynnnsacijszyryglbzwedqjtbugdjjkgmboyzonoqeorqsnypxwndymhvbeavcccxbte] spawn life_fnc_avfjxxjduzyrwireckfmrocfepoazicobitqzclmabpfchakjhgab;}; 		[_zynnnsacijszyryglbzwedqjtbugdjjkgmboyzonoqeorqsnypxwndymhvbeavcccxbte == 1] spawn life_fnc_oghlijhzbejafhmmohabyhviowjwurwzkekwgkwzdwesyocergmyhqgaj; 		 	}; }; 