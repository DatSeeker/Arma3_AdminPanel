waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ["#########","#########"]) then {
	sleep 30;
	player addaction [("<t color=""#FF0000"">" + ("Admin Panel") +"</t>"),"adminpanel\Execute.sqf","",5,false,true,"",""];
};
