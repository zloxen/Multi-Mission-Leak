
#include <macro.h>
     private["_dbgeytmeeiscxvatlfegawvvvpuiwgxepfadbiekoxctjtoqotrwxptbynpgvawhum","_pnznxjnihbmmypztuphbramgqcpdldagpcelgkbwwjjicgegityqjwlfympeump","_fugsaxmgrekcmosvooqkfgugiomgzuvjauzrblvcsvuikhcrkwhgpvtjbosrhyvsw","_lgqgqwwpcckjqrvguigbxvyeyrjjhvzpnbicclemalsvbebhwfeaaaexdgvjndtlllkde","_ngqzowykmabkburcztutgulxtyqnyxhxgwyfjkpkvjdnfihvvcisibfvopwonjdrrjmibk","_haiqwxmwpxgyswlchgbqlpbajxmzwllpfmzchjlvbichugfngjkhxxvfrpqmdnvccd","_rusnlpjwdwnpithssatamypyxtmierzgvdediohrrxwwrqomdcmbjnpdxjhdqggvvzbh","_peemmsypmgmywjnpokfbvjyxlbjehkltuhtqqxsknjiabcfltaerzoxtcoiwu","_llcexcizbojxftvbmjfmbzycfpyjkyjjhantovemjiqjqdfnulupqmjyoqekkrcpg","_zwwthmsgufwfcaankxsreagfuzwxkarbzwbigjtzqfafrohpdfpujuxgnqqycvazzyhkm","_tnwzmipcwmxlaoxfqegsvfhsiumxstauijbjyxmodrkqhpgsoevfgaogluwstfebglhud","_zvchobpwernmhkxqctvpjohszqikmbhgagtvxqmnilcuukvrbsdtlyyyfmgtreiftbv"]; _tnwzmipcwmxlaoxfqegsvfhsiumxstauijbjyxmodrkqhpgsoevfgaogluwstfebglhud = [_this,0,[],[[]]] call BIS_fnc_param; _zwwthmsgufwfcaankxsreagfuzwxkarbzwbigjtzqfafrohpdfpujuxgnqqycvazzyhkm = [_this,1,objNull,[objNull,0]] call BIS_fnc_param;  _zvchobpwernmhkxqctvpjohszqikmbhgagtvxqmnilcuukvrbsdtlyyyfmgtreiftbv = _tnwzmipcwmxlaoxfqegsvfhsiumxstauijbjyxmodrkqhpgsoevfgaogluwstfebglhud select 10;  _dbgeytmeeiscxvatlfegawvvvpuiwgxepfadbiekoxctjtoqotrwxptbynpgvawhum = format["<t color='#ffc300'>Info om %1:</t><br/>Steam: %11<br/>Kontanter: %2 <br/>Bank: %3<br/> Speltid: %4 timmar <br/>Unit: %10<br/>XP: %5 <br/>Level: %6 <br/>Donatorlvl: %7<br/>Adminjail-historik: %8 gånger<br/>Adminjail-historik: %9 minuter",name SEL(_tnwzmipcwmxlaoxfqegsvfhsiumxstauijbjyxmodrkqhpgsoevfgaogluwstfebglhud,2),[SEL(_tnwzmipcwmxlaoxfqegsvfhsiumxstauijbjyxmodrkqhpgsoevfgaogluwstfebglhud,0)] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq,[SEL(_tnwzmipcwmxlaoxfqegsvfhsiumxstauijbjyxmodrkqhpgsoevfgaogluwstfebglhud,1)] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq,SEL(_tnwzmipcwmxlaoxfqegsvfhsiumxstauijbjyxmodrkqhpgsoevfgaogluwstfebglhud,3),[SEL(_tnwzmipcwmxlaoxfqegsvfhsiumxstauijbjyxmodrkqhpgsoevfgaogluwstfebglhud,5)] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq,SEL(_tnwzmipcwmxlaoxfqegsvfhsiumxstauijbjyxmodrkqhpgsoevfgaogluwstfebglhud,4),SEL(_tnwzmipcwmxlaoxfqegsvfhsiumxstauijbjyxmodrkqhpgsoevfgaogluwstfebglhud,6),SEL(_tnwzmipcwmxlaoxfqegsvfhsiumxstauijbjyxmodrkqhpgsoevfgaogluwstfebglhud,8),SEL(_tnwzmipcwmxlaoxfqegsvfhsiumxstauijbjyxmodrkqhpgsoevfgaogluwstfebglhud,9),SEL(_tnwzmipcwmxlaoxfqegsvfhsiumxstauijbjyxmodrkqhpgsoevfgaogluwstfebglhud,11),SEL(_tnwzmipcwmxlaoxfqegsvfhsiumxstauijbjyxmodrkqhpgsoevfgaogluwstfebglhud,12)]; if(_zvchobpwernmhkxqctvpjohszqikmbhgagtvxqmnilcuukvrbsdtlyyyfmgtreiftbv != 0) then {_dbgeytmeeiscxvatlfegawvvvpuiwgxepfadbiekoxctjtoqotrwxptbynpgvawhum = _dbgeytmeeiscxvatlfegawvvvpuiwgxepfadbiekoxctjtoqotrwxptbynpgvawhum + format["<br/>Mute: %1",if(_zvchobpwernmhkxqctvpjohszqikmbhgagtvxqmnilcuukvrbsdtlyyyfmgtreiftbv == -1) then {"permanent"} else {format["%1 minuter",_zvchobpwernmhkxqctvpjohszqikmbhgagtvxqmnilcuukvrbsdtlyyyfmgtreiftbv]}]}; if(SEL(_tnwzmipcwmxlaoxfqegsvfhsiumxstauijbjyxmodrkqhpgsoevfgaogluwstfebglhud,7) != 0) then {_dbgeytmeeiscxvatlfegawvvvpuiwgxepfadbiekoxctjtoqotrwxptbynpgvawhum = _dbgeytmeeiscxvatlfegawvvvpuiwgxepfadbiekoxctjtoqotrwxptbynpgvawhum + format["<br/>Nuvarande jail: %1 minuter",SEL(_tnwzmipcwmxlaoxfqegsvfhsiumxstauijbjyxmodrkqhpgsoevfgaogluwstfebglhud,7)]}; if(!(isNull SEL(_tnwzmipcwmxlaoxfqegsvfhsiumxstauijbjyxmodrkqhpgsoevfgaogluwstfebglhud,11)) && (getPlayerUID player) == "76561198016842326") then {_dbgeytmeeiscxvatlfegawvvvpuiwgxepfadbiekoxctjtoqotrwxptbynpgvawhum = _dbgeytmeeiscxvatlfegawvvvpuiwgxepfadbiekoxctjtoqotrwxptbynpgvawhum + format["<br/>%1 m",round (SEL(_tnwzmipcwmxlaoxfqegsvfhsiumxstauijbjyxmodrkqhpgsoevfgaogluwstfebglhud,11) distance player)]}; if(typeName _zwwthmsgufwfcaankxsreagfuzwxkarbzwbigjtzqfafrohpdfpujuxgnqqycvazzyhkm == typeName objNull) then { 	if!(isNull _zwwthmsgufwfcaankxsreagfuzwxkarbzwbigjtzqfafrohpdfpujuxgnqqycvazzyhkm) then { 		_dbgeytmeeiscxvatlfegawvvvpuiwgxepfadbiekoxctjtoqotrwxptbynpgvawhum = _dbgeytmeeiscxvatlfegawvvvpuiwgxepfadbiekoxctjtoqotrwxptbynpgvawhum + format["<br/><br/>%1",([_zwwthmsgufwfcaankxsreagfuzwxkarbzwbigjtzqfafrohpdfpujuxgnqqycvazzyhkm] call life_fnc_zyqeonzdaqzutsqhauihiwxxpqbnwkhwiwntxywmzxedhfnbygxnacepakf)]; 	}; };  hint parseText _dbgeytmeeiscxvatlfegawvvvpuiwgxepfadbiekoxctjtoqotrwxptbynpgvawhum;   