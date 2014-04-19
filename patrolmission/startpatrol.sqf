if (side player == west) then 
{
	patrolmission = 0;
	if (patrolmission == 0) then 
	{
		patrolrnumber = (floor(random 8) + 1);
		patrolmission = patrolnumber;
		switch (patrolrnumber) do
		{
			case 1:
			{
				createMarkerLocal ["patrolmarker", (getPos trgpatrol1)];
				"patrolmarker" setMarkerShapeLocal "ICON";
				"patrolmarker" setMarkerColorLocal "ColorBLACK";
				"patrolmarker" setMarkerSizeLocal [1,1];
				"patrolmarker" setMarkerTextLocal "Patrol Point 1.";
				"patrolmarker" setMarkerTypeLocal "hd_dot";
				hint "Please patrol at Patrolpoint 1!";
				doingpatrol = player addAction ["Finish patrolling","patrolmission\finishpatrol.sqf",[],7,true,true,"","vehicle player in list trgpatrol1"];
				patroldistance = player distance (getPos trgpatrol1);
			};
			case 2:
			{
				createMarkerLocal ["patrolmarker", (getPos trgpatrol2)];
				"patrolmarker" setMarkerShapeLocal "ICON";
				"patrolmarker" setMarkerColorLocal "ColorBLACK";
				"patrolmarker" setMarkerSizeLocal [1,1];
				"patrolmarker" setMarkerTextLocal "Patrol Point 2.";
				"patrolmarker" setMarkerTypeLocal "hd_dot";
				hint "Please patrol at Patrolpoint 2!";
				doingpatrol = player addAction ["Finish patrolling","patrolmission\finishpatrol.sqf",[],7,true,true,"","vehicle player in list trgpatrol2"];
				patroldistance = player distance (getPos trgpatrol2);
			};
			case 3:
			{
				createMarkerLocal ["patrolmarker", (getPos trgpatrol3)];
				"patrolmarker" setMarkerShapeLocal "ICON";
				"patrolmarker" setMarkerColorLocal "ColorBLACK";
				"patrolmarker" setMarkerSizeLocal [1,1];
				"patrolmarker" setMarkerTextLocal "Patrol Point 3.";
				"patrolmarker" setMarkerTypeLocal "hd_dot";
				hint "Please patrol at Patrolpoint 3!";
				doingpatrol = player addAction ["Finish patrolling","patrolmission\finishpatrol.sqf",[],7,true,true,"","vehicle player in list trgpatrol3"];
				patroldistance = player distance (getPos trgpatrol3);
			};
			case 4:
			{
				createMarkerLocal ["patrolmarker", (getPos trgpatrol4)];
				"patrolmarker" setMarkerShapeLocal "ICON";
				"patrolmarker" setMarkerColorLocal "ColorBLACK";
				"patrolmarker" setMarkerSizeLocal [1,1];
				"patrolmarker" setMarkerTextLocal "Patrol Point 4.";
				"patrolmarker" setMarkerTypeLocal "hd_dot";
				hint "Please patrol at Patrolpoint 4!";
				doingpatrol = player addAction ["Finish patrolling","patrolmission\finishpatrol.sqf",[],7,true,true,"","vehicle player in list trgpatrol4"];
				patroldistance = player distance (getPos trgpatrol4);
			};
			case 5:
			{
				createMarkerLocal ["patrolmarker", (getPos trgpatrol5)];
				"patrolmarker" setMarkerShapeLocal "ICON";
				"patrolmarker" setMarkerColorLocal "ColorBLACK";
				"patrolmarker" setMarkerSizeLocal [1,1];
				"patrolmarker" setMarkerTextLocal "Patrol Point 5.";
				"patrolmarker" setMarkerTypeLocal "hd_dot";
				hint "Please patrol at Patrolpoint 5!";
				doingpatrol = player addAction ["Finish patrolling","patrolmission\finishpatrol.sqf",[],7,true,true,"","vehicle player in list trgpatrol5"];
				patroldistance = player distance (getPos trgpatrol5);
			};
			case 6:
			{
				createMarkerLocal ["patrolmarker", (getPos trgpatrol6)];
				"patrolmarker" setMarkerShapeLocal "ICON";
				"patrolmarker" setMarkerColorLocal "ColorBLACK";
				"patrolmarker" setMarkerSizeLocal [1,1];
				"patrolmarker" setMarkerTextLocal "Patrol Point 6.";
				"patrolmarker" setMarkerTypeLocal "hd_dot";
				hint "Please patrol at Patrolpoint 6!";
				doingpatrol = player addAction ["Finish patrolling","patrolmission\finishpatrol.sqf",[],7,true,true,"","vehicle player in list trgpatrol6"];
				patroldistance = player distance (getPos trgpatrol6);
			};
			case 7:
			{
				createMarkerLocal ["patrolmarker", (getPos trgpatrol7)];
				"patrolmarker" setMarkerShapeLocal "ICON";
				"patrolmarker" setMarkerColorLocal "ColorBLACK";
				"patrolmarker" setMarkerSizeLocal [1,1];
				"patrolmarker" setMarkerTextLocal "Patrol Point 7.";
				"patrolmarker" setMarkerTypeLocal "hd_dot";
				hint "Please patrol at Patrolpoint 7!";
				doingpatrol = player addAction ["Finish patrolling","patrolmission\finishpatrol.sqf",[],7,true,true,"","vehicle player in list trgpatrol7"];
				patroldistance = player distance (getPos trgpatrol7);
			};
			case 8:
			{
				createMarkerLocal ["patrolmarker", (getPos trgpatrol8)];
				"patrolmarker" setMarkerShapeLocal "ICON";
				"patrolmarker" setMarkerColorLocal "ColorBLACK";
				"patrolmarker" setMarkerSizeLocal [1,1];
				"patrolmarker" setMarkerTextLocal "Patrol Point 8.";
				"patrolmarker" setMarkerTypeLocal "hd_dot";
				hint "Please patrol at Patrolpoint 8!";
				doingpatrol = player addAction ["Finish patrolling","patrolmission\finishpatrol.sqf",[],7,true,true,"","vehicle player in list trgpatrol8"];
				patroldistance = player distance (getPos trgpatrol8);
			};
		};
		patroldistance = ceil(patroldistance / 1000);
		_rnumber2 = ((random 300) / 100);
		switch (patroldistance) do
		{
			case 1: {patrolearn = floor(10000 * _rnumber2);};
			case 2: {patrolearn = floor(12000 * _rnumber2);};
			case 3: {patrolearn = floor(13000 * _rnumber2);};
			case 4: {patrolearn = floor(14000 * _rnumber2);};
			case 5: {patrolearn = floor(15000 * _rnumber2);};
			case 6: {patrolearn = floor(16000 * _rnumber2);};
			case 7: {patrolearn = floor(17000 * _rnumber2);};
			case 8: {patrolearn = floor(18000 * _rnumber2);};
			Default {patrolearn = floor(19000 * _rnumber2);};
		};
	}
	else
	{
		hint "You already have a patrol mission.";
	};
}
else
{
	hint "Only the police can do patrol missions";
};











