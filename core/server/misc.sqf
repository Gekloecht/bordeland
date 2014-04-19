// all kinds of goodies to stop haxxxx in here.... 
private["_array", "_player", "_hackType", "_hackValue"];

AHAH = compileFinal "
	if (isServer) exitWith {};
	preProcessFileLineNumbers 'Detection Inited - Hacks';
	_commonPaths = ['wuat\screen.sqf', 'scripts\defaultmenu.sqf', 'menu\initmenu.sqf', 'scr\exec.sqf', 'scripts\exec.sqf', 'menu\exec.sqf', 'wuat\exec.sqf', 'crinkly\keymenu.sqf', 'scripts\ajmenu.sqf', 'startup.sqf', 'wookie_wuat\startup.sqf', 'Wookie_Beta\exec.sqf', 'Wookie\exec.sqf', 'Wookie\antiantihax.sqf', 'Wookie_Beta\antiantihax.sqf', '@DevCon\DevCon.pbo', 'addons\@DevCon\DevCon.pbo', 'DevCon.pbo', 'ShadowyFaze\exec.sqf', '\wuat\screen.sqf', 'scripts\defaultmenu.sqf', 'menu\initmenu.sqf', 'scr\exec.sqf','crinkly\keymenu.sqf', 'menu\exec.sqf', 'wuat\exec.sqf', 'crinkly\keymenu.sqf', 'scripts\ajmenu.sqf', 'startup.sqf', 'exec.sqf', 'wookie_wuat\startup.sqf','Wookie_Beta\exec.sqf', 'Wookie\exec.sqf', 'Wookie\antiantihax.sqf', 'Wookie_Beta\antiantihax.sqf', '@DevCon\DevCon.pbo', 'addons\@DevCon\DevCon.pbo', 'DevCon.pbo', 'shadowyFaze\exec.sqf',  'monkified.sqf', '\wuat\screen.sqf', '\scripts\defaultmenu.sqf', '\menu\initmenu.sqf', '\scr\exec.sqf', '\scripts\exec.sqf', '\menu\exec.sqf', '\wuat\exec.sqf', '\crinkly\keymenu.sqf', '\scripts\ajmenu.sqf', '\startup.sqf', '\wookie_wuat\startup.sqf', '\Wookie_Beta\exec.sqf', '\Wookie\exec.sqf', '\Wookie\antiantihax.sqf', '\Wookie_Beta\antiantihax.sqf', '\@DevCon\DevCon.pbo', '\addons\@DevCon\DevCon.pbo', '\DevCon.pbo', '\ShadowyFaze\exec.sqf', '\scripts\defaultmenu.sqf', '\menu\initmenu.sqf', '\scr\exec.sqf','crinkly\keymenu.sqf', '\menu\exec.sqf', '\wuat\exec.sqf', '\crinkly\keymenu.sqf', '\scripts\ajmenu.sqf', '\startup.sqf', '\exec.sqf', '\wookie_wuat\startup.sqf','Wookie_Beta\exec.sqf', '\Wookie\exec.sqf', '\Wookie\antiantihax.sqf', '\Wookie_Beta\antiantihax.sqf', '\@DevCon\DevCon.pbo', '\addons\@DevCon\DevCon.pbo', '\DevCon.pbo', '\shadowyFaze\exec.sqf',  '\monkified.sqf'];
	for '_i' from 0 to (count _commonPaths)-1 do
	{
		if ((preProcessFileLineNumbers (_commonPaths select _i)) != '') then
		{
			if !(_uid in _list) then
			{
				hackFlag = [player, ""detected script"",  _commonPaths select _i];
				publicVariableServer ""hackFlag"";
				cuttext [format [""nice hacks  %1..."",  _commonPaths select _i],""BLACK"",0.01];
				sleep 10;
				for ""_j""
				from 0 to 99 do {
					(findDisplay _j) closeDisplay 0;
				};
			};
		};
	};
	[] spawn {
		private[""_sleepVariableCheck"", ""_badPublicVariables""];
		_sleepVariableCheck = 25;
		_badPublicVariables = ['Firstrun','Faze_hax_dbclick', 'infiSTAR_hax_dbclick', 'sendtxxt', 'zeus_star', 'Wookie_Scroll_m', 'Wookie_Keybinds', 'Wookies_Willy', 'unitList', 'VL', 'MV','mk2', 'scode', 'igodokxtt', 'omgwtfbbq', 'namePlayer', 'thingtoattachto', 'HaxSmokeOn', 'v', 'antiloop', 'ARGT_JUMP', 'musekeys', 'dontAddToTheArray', 'morphtoanimals', 'MY_KEYDOWN_FNC', 'TAG_onKeyDown', 'activeITEMlist', 'activeITEMlistanzahl', 'xyzaa', 'iBeFlying', 'rem', 'Monky_funcs_inited', 'boost', 'Ug8YtyGyvguGF', 'invall', 'initarr', 'reinit', 'letmeknow', 'Listw', 'mahcaq', 'weapFun', 'take1', 'dwarden', 'monky', 'god', 'toggle_keyEH', 'drawic', 'mk2', 'testIndex', 'g0d', 'g0dmode', 'zeus', 'zeusmode', 'cargod', 'qopfkqpofqk', 'monkytp', 'pbx', 'playershield', 'zombieDistanceScreen', 'plrshldblckls', 'zombieshield', 'godall', 'initarr3', 'initarr2', 'DEV_ConsoleOpen', 'LOKI_GUI_Key_Color', 'WookieBeta_hax_dbclick', 'WookieBeta_hax_toggled', 'WookieBeta_funcs_inited', 'asdhaociuygbaidsuycb', 'antiantiantiantih4x', 'wrsbtsrtbartgb', 'usecepi', 'st0rmmy', 'spamb0t', 'paratroop2', 'harlemmshake', 'gggggggggggg4444444444444444', 'stealthMarkerToggle'];
		diag_log ""**LifeMod Antihack**:Detection of hack variables started!"";
		while {
			true
		}
		do {
			{
				if (!(isNil _x) && !(_uid in _list)) exitWith {
					diag_log ""**LifeMod Antihack**: Found a hack variable!"";
					hackFlag = [player, ""hacked variable"", _x];
					publicVariableServer ""hackFlag"";
					cuttext [format [""Ohhhhhh boyyyyy %1... u haxxxxx bro..."",  _x],""BLACK"",0.01];
					sleep 10;
					for ""_i""
					from 0 to 99 do {
						(findDisplay _i) closeDisplay 0;
					};
				};
			}
			forEach _badPublicVariables;

			sleep _sleepVariableCheck;
		};
	};
	[] spawn {
		private[""_keyDownHandlerCount"", ""_keyUpHandlerCount"", ""_ctrlDrawHandlerCount""];
		diag_log ""**LifeMod Antihack**: Hack menu check started!"";
		while {
			true
		}
		do {
			(findDisplay 46) displayRemoveAllEventHandlers 'KeyUp';
			(findDisplay 106) displayRemoveAllEventHandlers 'KeyUp';
			((findDisplay 12) displayCtrl 51) ctrlRemoveAllEventHandlers 'Draw';
			((findDisplay 3030) displayCtrl 2) ctrlRemoveAllEventHandlers 'LBDblClick';
			if (!(isNull findDisplay 3030) && !(_uid in _list)) then {

					diag_log ""**LifeMod Antihack**:Found a hack menu!"";

					hackFlag = [player, ""hack menu"", ""Hack Menu""];
					publicVariableServer ""hackFlag"";
					cutText [""Lame... u use haxx..."",""BLACK"",0.01];
					sleep 10;
					for ""_i""
					from 0 to 99 do {
						(findDisplay _i) closeDisplay 0;
					};	
			};
			sleep 1;
		};
	};
";

diag_log "**LifeMod Antihack**: All Checks Started";
diag_log "**LifeMod Antihack**: Adding PublicVariableEventHandler";
hackerLog = [];
"hackFlag" addPublicVariableEventHandler
{
    _array = _this select 1;
    _player = _array select 0;
    _hackType = _array select 1;
    _hackValue = _array select 2;
    diag_log format["**LifeMod Antihack**:  %1   Player ID: (%2) was detected for %3 with the value '%4'", name _player, getPlayerUID _player, _hackType, _hackValue];
    hint format["**LifeMod Antihack**:  %1 (Player ID: %2) was detected for %3 with the value '%4'", name _player, getPlayerUID _player, _hackType, _hackValue];
	[name _player, getPlayerUID _player, _hackType, _hackValue] call bis_fnc_log;
	[[_array],"wookie_fnc_global",true,false] spawn BIS_fnc_MP;
};
"clientStarted"
addPublicVariableEventHandler {
    _client = _this select 1;
    (owner _client) publicVariableClient "AHAH";
    diag_log format["**LifeMod Antihack**: running on %1", owner _client];
};			

antihack_debug = true;
diag_log "**LifeMod Antihack **: Misc scanning started.";