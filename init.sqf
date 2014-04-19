_logistic = execVM "=BTC=_Logistic\=BTC=_Logistic_Init.sqf";
enableSaving [false, false];
server_debug = false;
X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;
setViewDistance 1000;
if(!isDedicated) then { X_Client = true;};
/*
if(isNull player) then 
{
	if(!X_JIP && !isServer) then
	{
		[] spawn (compile PreprocessFileLineNumbers "core\jip.sqf");
	};
	X_JIP = true;
};
*/
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.1";
/*
if(X_Client) then
{
	[] execVM "core\init.sqf";
};
*/
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

if(!StartProgress) then
{
	[8,true,false] execFSM "core\fsm\core_time.fsm";
};
StartProgress = true;

[] execVM "admin\fn_loop.sqf";

// call compileFinal preprocessFileLineNumbers "FAR_revive\FAR_revive_init.sqf";
// Init anticheat.
[] spawn life_fnc_anticheat;
//[] execVM "core\server\AntihackInit.sqf";
[] execVM "core\server\antihack_1.sqf";
[] execVM "core\server\antihack_2.sqf";