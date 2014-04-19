/*
        File: fn_intro.sqf
        Author: John "Paratus" VanderZwet
        
        Description:
        Displays introduction on init!
*/

private ["_civ","_cop"];

//if (life_adminlevel > 0) exitWith {};

sleep 2;
_intro = [];
_civ = [format["Bienvenue sur Altis Life, %1,<br/><br/>
                Bienvenue sur altislifefr.com<br/><br/>
				Visitez le site pour les regles et infos | Soyez RP !<br/><br/>", name player]];

_cop = [format["Bienvenue sur Altis Life, %1,<br/><br/>
                Bienvenue sur IncarnArts | Team WKT<br/><br/>
				Visitez le site pour les regles et infos | Soyez RP !<br/><br/>", name player]];

switch (playerSide) do {
        case west: {
                {
                        _intro = _intro + [(parseText _x)];
                } forEach _cop;
                _cop = _intro;
                "Bienvenue sur Altis Life | Reboot toutes les 4 heures | 00h00 04h00 08h00 12h00 16h00 20h00" hintC _cop;
        };
        case civilian: {
                {
                        _intro = _intro + [(parseText _x)];
                } forEach _civ;
                _civ = _intro;
                "Bienvenue sur Altis Life | Reboot toutes les 4 heures | 00h00 04h00 08h00 12h00 16h00 20h00" hintC _civ;
        };
};