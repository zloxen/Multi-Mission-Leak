
#include<macro.h>
private ["_setting","_sxiqumftrqzqufjrutuyebnomptukkzedtfkdhhflxzlukosbyifdxsfpchlktulbson","_thchbcrikofgskmgjbgziilhrrkvbpudituqmvdazsjxfpgqoudslflwlzabskbazi","_clphtqirgreayydlspbccauybfoumikcawodbllimbppfnwmzyixikrckaznk"];   _setting = [_this,0,0,[0,[]]] call BIS_fnc_param; _sxiqumftrqzqufjrutuyebnomptukkzedtfkdhhflxzlukosbyifdxsfpchlktulbson = [_this,1,0,[0,"",[]]] call BIS_fnc_param;  if(typeName _setting == "ARRAY") exitWith {  	horns_config = [["Ingen","",0],["Ahooga","horn_ahooga",2.5],["Lufttuta","horn_air",3],["Cykeltuta","horn_bike",1.5],["Crazy frog","crazy_frog",15],["Kycklingen","chicken",15],["Båttuta","horn_boat",4],["Brandbil","horn_firetruck",2],["Gås","horn_goose",2],["Standard","horn_honk",1],["Muuuu","horn_moo",4],["Party","horn_party",2.5],["Tåg","horn_train",3]]; 	_clphtqirgreayydlspbccauybfoumikcawodbllimbppfnwmzyixikrckaznk = [1600,1600,1600,1,1,1,1,0,0,0]; 	life_custom_settings = _setting; 	 	{ 		if(count life_custom_settings < (_forEachIndex + 1)) then { 			life_custom_settings pushBack _x; 		}; 	} foreach _clphtqirgreayydlspbccauybfoumikcawodbllimbppfnwmzyixikrckaznk; 	 	life_vdFoot = SEL(life_custom_settings,0); 	life_vdCar = SEL(life_custom_settings,0); 	life_vdAir = SEL(life_custom_settings,0); 	[] call life_fnc_yiaeeueairbgltcuuvrvofnbanuvalsozikcgngmojqpkjkltmnq; 	 	 	 	life_tagson = SEL(life_custom_settings,3) == 1; 	["tags",SEL(life_custom_settings,3),true] spawn life_fnc_ubdsksldghyzjhcxtmlvexvkedniohkhannnmfswsxtdyoskdnnj; 	 	life_sidechat = SEL(life_custom_settings,4) == 1; 	["sidechat",SEL(life_custom_settings,4),true] spawn life_fnc_ubdsksldghyzjhcxtmlvexvkedniohkhannnmfswsxtdyoskdnnj; 	 	life_revealObjects = SEL(life_custom_settings,5) == 1; 	["objects",SEL(life_custom_settings,5),true] spawn life_fnc_ubdsksldghyzjhcxtmlvexvkedniohkhannnmfswsxtdyoskdnnj; 	 	setting_usePerkTurbo = SEL(life_custom_settings,6) == 1; 	 	ground_horn = SEL(life_custom_settings,7); 	 	air_horn = SEL(life_custom_settings,8); 	 	[SEL(life_custom_settings,9) == 1,true] spawn life_fnc_oghlijhzbejafhmmohabyhviowjwurwzkekwgkwzdwesyocergmyhqgaj; };    life_custom_settings set [_setting,_sxiqumftrqzqufjrutuyebnomptukkzedtfkdhhflxzlukosbyifdxsfpchlktulbson]; [17] call SOCK_fnc_ddjmbrftntgdwpptfaoymlxkcjyscjwhklmcfylqhrqrxtxznnh; 