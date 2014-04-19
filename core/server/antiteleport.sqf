// this script hasn't changed much from what it was in  A2... and it works...

private ["_oldPos","_newPos","_tpdistance"];
while {true} do 
{
//make sure they are alive...
	while {alive player} do 
	{
// lets get their position and their position 1 second from now...
		_oldPos = (getpos player);
		sleep 1;
		_newPos = (getpos player);
		_tpdistance = _newPos distance _oldPos;
// TP distance (editable) 
			if  (_tpdistance > 700) then 
			{
// message displayed to everyone on the server..
				hint format ["**ShutEmDown Antihack**: %1 was caught teleporting. Player ID: %2", name player,getPlayerUID player ];
				player commandchat format ["**ShutEmDown Antihack**: %1 was caught teleporting... Player ID (%2) seems he doesn't have enough time to walk that distance...",name player,getPlayerUID player];
				//execute punish script.
				execVM "core\server\punish.sqf";					
		};		
	};
};



	