_pathtotools = "adminpanel/tools";
_EXECscript1 = 'player execVM "'+_pathtotools+'%1"';
//Change ######### to your admins player UIDs
if ((getPlayerUID player) in ["#########","#########"]) then { //All Admins
	if ((getPlayerUID player) in ["#########","#########"]) then { //Moderators
adminmenu =
	[
			["",true],
				["Tools Menu", [2], "#USER:ModToolsMenu", -5 [["expression", ""]], "1", "1",
				["", [-1], "", -5 [["expression", ""]] "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
	];};
if ((getPlayerUID player) in ["#########","#########"]) then {
adminmenu =
	[
			["",true],
				["Tools Menu", [2], "#USER:AdminToolsMenu", -5 [["expression", ""]], "1", "1",
				["", [-1], "", -5 [["expression", ""]] "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
	];};
if ((getPlayerUID player) in ["#########","#########"] then {
adminmenu =
	[
			["",true],
				["Tools Menu", [2], "#USER:ToolsMenu", -5 [["expression", ""]], "1", "1",
				["", [-1], "", -5 [["expression", ""]] "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
	];};
ModToolsMenu =
[
		["",true],
			["God Mode", [2],  "", -5, [["expression", format[_EXECscript1,"godmode.sqf"]]], "1", "1"],
			["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
AdminToolsMenu =
[
		["",true],
			["God Mode", [2],  "", -5, [["expression", format[_EXECscript1,"godmode.sqf"]]], "1", "1"],
			["Heal Player", [3],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],
			["TP to ME", [4],  "", -5, [["expression", format[_EXECscript1,"TPtoME.sqf"]]], "1", "1"],
			["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
ToolsMenu =
[
		["",true],
			["God Mode", [2],  "", -5, [["expression", format[_EXECscript1,"godmode.sqf"]]], "1", "1"],
			["Heal Player", [3],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],
			["Spectate Player", [4],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
			["TP to ME", [5],  "", -5, [["expression", format[_EXECscript1,"TPtoME.sqf"]]], "1", "1"],
			["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
showCommandingMenu "#USER:adminmenu";
