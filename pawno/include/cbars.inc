//  	 ?????
//  	 ?    ?
//   ??? ?    ? ????? ? ???? ?????
//  ? 	 ?    ? ?????? ????? ?????
//  ? 	 ?    ? ?????? ????? ?????
//   ??? ?????  ?????  ????? ????? cDbar.inc v1.0
// Owner: coDemo
// Please don't change credits
#include <YSI\y_hooks>

forward cD_OnProgressBarEnd(playerid);
#define cD_function:%0(%1) forward %0(%1); public %0(%1)
#define cD.%0[%1] cD_bar[%1][%0]

enum cD_barE
{
	cD_timer,
	cD_value
}
new
	cD_bar[MAX_PLAYERS][cD_barE],
	Text:cDbar_TD [ 2 ],
	PlayerText:cDbar_pTD [ MAX_PLAYERS ] [ 2 ]
;

hook OnGameModeInit()
{
	cDbar_TD [ 0 ] = TextDrawCreate(458.000000, 400.000000, "BG");
	TextDrawBackgroundColor(cDbar_TD [ 0 ], 255);
	TextDrawFont(cDbar_TD [ 0 ], 1);
	TextDrawLetterSize(cDbar_TD [ 0 ], 0.000000, 1.000000);
	TextDrawColor(cDbar_TD [ 0 ], -1);
	TextDrawSetOutline(cDbar_TD [ 0 ], 0);
	TextDrawSetProportional(cDbar_TD [ 0 ], 1);
	TextDrawSetShadow(cDbar_TD [ 0 ], 1);
	TextDrawUseBox(cDbar_TD [ 0 ], 1);
	TextDrawBoxColor(cDbar_TD [ 0 ], 117901311);
	TextDrawTextSize(cDbar_TD [ 0 ], 196.000000, 0.000000);
	TextDrawSetSelectable(cDbar_TD [ 0 ], 0);

	cDbar_TD [ 1 ] = TextDrawCreate(456.500000, 401.500000, "BG");
	TextDrawBackgroundColor(cDbar_TD [ 1 ], 255);
	TextDrawFont(cDbar_TD [ 1 ], 1);
	TextDrawLetterSize(cDbar_TD [ 1 ], 0.000000, 0.650000);
	TextDrawColor(cDbar_TD [ 1 ], -1);
	TextDrawSetOutline(cDbar_TD [ 1 ], 0);
	TextDrawSetProportional(cDbar_TD [ 1 ], 1);
	TextDrawSetShadow(cDbar_TD [ 1 ], 1);
	TextDrawUseBox(cDbar_TD [ 1 ], 1);
	TextDrawBoxColor(cDbar_TD [ 1 ], 769880181);
	TextDrawTextSize(cDbar_TD [ 1 ], 197.000000, 0.000000);
	TextDrawSetSelectable(cDbar_TD [ 1 ], 0);
	return 1;
}

hook OnPlayerConnect(playerid)
{
	cD.cD_value[playerid] = 0;
	cDbar_pTD [ playerid ] [ 0 ] = CreatePlayerTextDraw(playerid, 200.500000, 401.500000, "bar");
	PlayerTextDrawBackgroundColor(playerid, cDbar_pTD [ playerid ] [ 0 ], 255);
	PlayerTextDrawFont(playerid, cDbar_pTD [ playerid ] [ 0 ], 1);
	PlayerTextDrawLetterSize(playerid, cDbar_pTD [ playerid ] [ 0 ], 0.000000, 0.650000);
	PlayerTextDrawColor(playerid, cDbar_pTD [ playerid ] [ 0 ], -1);
	PlayerTextDrawSetOutline(playerid, cDbar_pTD [ playerid ] [ 0 ], 0);
	PlayerTextDrawSetProportional(playerid, cDbar_pTD [ playerid ] [ 0 ], 1);
	PlayerTextDrawSetShadow(playerid, cDbar_pTD [ playerid ] [ 0 ], 1);
	PlayerTextDrawUseBox(playerid, cDbar_pTD [ playerid ] [ 0 ], 1);
	PlayerTextDrawBoxColor(playerid, cDbar_pTD [ playerid ] [ 0 ], 769880234);
	PlayerTextDrawTextSize(playerid, cDbar_pTD [ playerid ] [ 0 ], 413.000000, 0.000000);
	PlayerTextDrawSetSelectable(playerid, cDbar_pTD [ playerid ] [ 0 ], 0);

	cDbar_pTD [ playerid ] [ 1 ] = CreatePlayerTextDraw(playerid, 198.000000, 386.500000, "Jusu tekstas");
	PlayerTextDrawBackgroundColor(playerid, cDbar_pTD [ playerid ] [ 1 ], 255);
	PlayerTextDrawFont(playerid, cDbar_pTD [ playerid ] [ 1 ], 2);
	PlayerTextDrawLetterSize(playerid, cDbar_pTD [ playerid ] [ 1 ], 0.224999, 1.200000);
	PlayerTextDrawColor(playerid, cDbar_pTD [ playerid ] [ 1 ], -1);
	PlayerTextDrawSetOutline(playerid, cDbar_pTD [ playerid ] [ 1 ], 1);
	PlayerTextDrawSetProportional(playerid, cDbar_pTD [ playerid ] [ 1 ], 1);
	PlayerTextDrawSetSelectable(playerid, cDbar_pTD [ playerid ] [ 1 ], 0);
	return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
	if(IsBarActive(playerid)) return cD_KillBar(playerid);
	return 1;
}

stock cD_StartBar(playerid, text[], time)
{
	for(new TD; TD < sizeof cDbar_TD; TD++) TextDrawShowForPlayer(playerid, cDbar_TD[TD]);
	return PlayerTextDrawSetString(playerid, cDbar_pTD [ playerid ] [ 1 ], text), PlayerTextDrawShow(playerid, cDbar_pTD [ playerid ] [ 1 ]), cD.cD_timer[playerid] = SetTimerEx("cD_updateBar", time/100, 1, "i", playerid);
}

stock cD_KillBar(playerid)
{
	cD.cD_value[playerid] = 0, KillTimer(cD.cD_timer[playerid]);
	for(new TD; TD < sizeof cDbar_TD; TD++) TextDrawHideForPlayer(playerid, cDbar_TD[TD]);
	return PlayerTextDrawHide(playerid, cDbar_pTD [ playerid ] [ 0 ]), PlayerTextDrawHide(playerid, cDbar_pTD [ playerid ] [ 1 ]);
}

stock IsBarActive(playerid) return cD.cD_value[playerid];

cD_function:cD_updateBar(playerid)
{
	cD.cD_value[playerid] ++, PlayerTextDrawTextSize(playerid, cDbar_pTD [ playerid ] [ 0 ], 197+(2.56*cD.cD_value[playerid]), 0.000000), PlayerTextDrawShow(playerid, cDbar_pTD [ playerid ] [ 0 ]);
	if(cD.cD_value[playerid] == 100) return cD_KillBar(playerid), CallLocalFunction("cD_OnProgressBarEnd", "i", playerid);
	return 1;
}