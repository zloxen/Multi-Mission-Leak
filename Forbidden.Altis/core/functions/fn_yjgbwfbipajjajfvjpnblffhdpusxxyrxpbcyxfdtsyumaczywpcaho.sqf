  private ["_iyttvhbciyogpfbmtmgseaupuytlpcscirufimmobeypoldpafpvodyavrdvolsoddzvjv","_xqbciaoqoydwtlabvrorzkwthxblxsoxacplmdbjqjgsanjxitovysevqgopmbjuhhmfhj","_hksdhqexwjfzjejhsgrxtcdyaqijkpuqashxypzkuhjablctpitxftmkdxouvxpgr","_hksdhqexwjfzjejhsgrxtcdyaqijkpuqashxypzkuhjablctpitxftmkdxouvxpgrIndex"];  _iyttvhbciyogpfbmtmgseaupuytlpcscirufimmobeypoldpafpvodyavrdvolsoddzvjv = [_this,0,[],[[]]] call BIS_fnc_param;  _xqbciaoqoydwtlabvrorzkwthxblxsoxacplmdbjqjgsanjxitovysevqgopmbjuhhmfhj = []; while {count _iyttvhbciyogpfbmtmgseaupuytlpcscirufimmobeypoldpafpvodyavrdvolsoddzvjv > 0} do { 	_hksdhqexwjfzjejhsgrxtcdyaqijkpuqashxypzkuhjablctpitxftmkdxouvxpgr = (_iyttvhbciyogpfbmtmgseaupuytlpcscirufimmobeypoldpafpvodyavrdvolsoddzvjv select 0 select 0) + 1; 	_hksdhqexwjfzjejhsgrxtcdyaqijkpuqashxypzkuhjablctpitxftmkdxouvxpgrIndex = -1; 	{ 		if((_x select 0) < _hksdhqexwjfzjejhsgrxtcdyaqijkpuqashxypzkuhjablctpitxftmkdxouvxpgr) then {_hksdhqexwjfzjejhsgrxtcdyaqijkpuqashxypzkuhjablctpitxftmkdxouvxpgr = (_x select 0); _hksdhqexwjfzjejhsgrxtcdyaqijkpuqashxypzkuhjablctpitxftmkdxouvxpgrIndex = _forEachIndex;}; 	} foreach _iyttvhbciyogpfbmtmgseaupuytlpcscirufimmobeypoldpafpvodyavrdvolsoddzvjv; 	_xqbciaoqoydwtlabvrorzkwthxblxsoxacplmdbjqjgsanjxitovysevqgopmbjuhhmfhj pushBack (_iyttvhbciyogpfbmtmgseaupuytlpcscirufimmobeypoldpafpvodyavrdvolsoddzvjv deleteAt _hksdhqexwjfzjejhsgrxtcdyaqijkpuqashxypzkuhjablctpitxftmkdxouvxpgrIndex); };  _xqbciaoqoydwtlabvrorzkwthxblxsoxacplmdbjqjgsanjxitovysevqgopmbjuhhmfhj;  