/*

		iScreenFader 1.6
		pabaigta 2012m. Liepos 5d. 12:11

		Autorius: InstincT
		Keisti kreditus draud�iama! Pakeit�s kreditus autoriumi netapsi!

		funkcijos
			FadeScreenForPlayer( playerid, mode, color = 0x0FF, steps = -1 )
			playerid - �aid�jo ID
			mode - u�temdymo r��imas. J� yra du tipai:
				FADE_IN - u�temdyti(po truput� padaryti ekran� juod�)
				FADE_OUT - atitemdyti(po truput� padaryti ekran� matom�)
			**color - spalva
			**steps - skai�ius, kokia reik�me bus ma�inamas fsSteps kintamasis

			FadePlayerPos( playerid, color = 0x0FF, Float:fsPosX, Float:fsPosY, Float:fsPosZ, Float:fsPosA = -1.0, fsInt = -1, fsVW = -1, fsClearAnims = false, fsCamera = false, steps = -1 )
			playerid - �aid�jo ID
			**color - spalva
			fsPosX - koordinat� X
			fsPosY - koordinat� Y
			fsPosZ - koordinat� Z
			**fsPosA - pasisukimo laipsniai
			**fsInt - interioras
			**fsVW - virtual worldas
			**fsClearAnims - ar u�tamsinus ekran� �vykdyti funkcij� ClearAnimations
			**fsCamera - ar u�tamsinus ekran� �vykdyti funkcij� SetCameraBehindPlayer
			**steps - skai�ius, kokia reik�me bus ma�inamas fsSteps kintamasis

			FadeSkinForPlayer( playerid, skinID, color = 0x0FF steps = -1 )
			playerid - �aid�jo ID
			skinID - skino ID
			**color - spalva
			**steps - skai�ius, kokia reik�me bus ma�inamas fsSteps kintamasis

			iScreenFader_Kokybe( id );
			id - kokyb�s ID. Galimi du variantai:
				FADE_KOKYBE_GERA - gera kokyb�, timer'io intervalas yra 20, fsSteps kintamojo ma�inimas 4
				FADE_KOKYBE_BLOGA - vidutini�ka kokyb�, timer'io intervalas 100, fsSteps kintamojo ma�inimas 20

			** - PARAMETRAS NEB�TINAS! Norint j� praleisti funkcijos kvietime, vietoj parametro ra�ykit _

		callbackai
			OnFadeComplete( playerid, mode, color )
				playerid - �aid�jo ID
				mode - u�temdymo r��imas
				color - u�temdyta/atitemdyta spalva

		changelogas
			2012m. Bir�elio 12d.:
				- i�leista
			2012m. Bir�elio 13d.:
				- padaryti prane�imai bei vykdymo nutraukimai, kuri� d�ka bus i�vengiamas netaisyklingas funkcij� naudojimas,
				- naudojami PlayerTextDraw'ai vietoje globali� TextDraw'�,
				- viskas tur�t� veikti dvigubai grei�iau, pakeistas timer'io intervalas i� 5 � 10, taip pat kintamasis fsSteps ma�inamas dviem vienetais
				- naujos funkcijos:
						FadePlayerPos, FadePlayerSkin
			2012m. Bir�elio 14d.:
				- prid�ta galimyb� kontroliuoti spalvas visose funkcijose. Parametras n�ra b�tinas, spalva pagal nutyl�jim� - juoda(0x0FF).
				- OnFadeComplete callback'ui prid�tas spalvos parametras
				- viskas tur�t� veikti dar dvigubai grei�iau, pakeistas timer'io intervalas i� 5 � 10, taip pat kintamasis fsSteps ma�inamas keturiais vienetais
				- funkcijai FadePlayerPos prid�ta galimyb� u�tamsinus ekran� �vykdyti funkcij� SetCameraBehindPlayer bei ClearAnimations
				- i�taisyta klaida, d�l kurios gal�jo neatitemdyti ekrano.
				- i�taisyta klaida, d�l kurios informaciniuose prane�imuose konsol�je nerodydavo �aid�jo ID
				- naujos funkcijos:
						iScreenFader_Kokybe - pakeisti u�temdymo/atitemdymo kokyb�.
			2012m. Bir�elio 20d.:
				- i�taisyta klaida, d�l kurios panaudojus FadePlayerPos funkcij�, o paskui kit� u�temdymo funkcij� v�l �aid�jo pozicija buvo nustatoma � prie� tai naudotosios funkcijos FadePlayerPos nustatyt� pozicij�.
			2012m. Bir�elio 21d.:
				- i�taisyta klaida, d�l kurios pirm� kart� po serverio �jungimo panaudojus ne FadePlayerPos funkcij�, gal�jo u�tamsinus ekran� �aid�jus nukelti � neteising� pozicij�. Tas pats ir su interior'u bei virtual world'u.
			2012m. Bir�elio 23d.:
				- naudojamas vienas vienintelis globalus TextDraw'as, vietoje kiekvienam �aid�jui kuriamo atskirai PlayerTextDraw'o.
			2012m. Liepos 5d.:
				- prid�ta galimyb� visose tamsinimo/atitamsinimo funkcijose kontroliuoti, kokiu skai�iu bus ma�inamas fsSteps kintamasis.
				- OnFadeComplete callback'ui prid�tas parametras steps, nurodantis kokiu skai�iu �aid�jui buvo ma�inamas kintamasis fsSteps.
*/


#define FADE_IN 1
#define FADE_OUT 2


forward OnFadeComplete( playerid, mode, color, steps );


enum fadeScreenEnumas
{
	fsTimer,
	fsSteps,
	fsMode,
	fsColor,
	fsMazinimasSteps,
	Float:fsPos[ 4 ],
	fsInterior,
	fsVirtualWorld,
	fsSkin,
	fsClearAnimations,
	fsCameraBehindPlayer
}

#define FADE_KOKYBE_GERA 1
#define FADE_KOKYBE_BLOGA 2

new
	fadeScreen[ MAX_PLAYERS ][ fadeScreenEnumas ],
	Text:fsTextDraw,
	bool:fsTD_sukurtas,
	fadeKokybe_intervalas = 20,
	fadeKokybe_mazinimas = 4
;

stock iScreenFader_Kokybe( id )
{
	if( id != FADE_KOKYBE_GERA && id != FADE_KOKYBE_BLOGA ) return print( "KLAIDA iScreenFader naudojime! iScreenFader_Kokybe funkcijoje naudjama netinkama reik�m�." );
	if( id == FADE_KOKYBE_GERA )
	{
		fadeKokybe_intervalas = 20;
		fadeKokybe_mazinimas = 4;
	}
	else
	{
		fadeKokybe_intervalas = 100;
		fadeKokybe_mazinimas = 20;
	}
	return 1;
}

stock FadeScreenForPlayer( playerid, mode, color = 0x0FF, steps = -1 )
{
	if( mode != FADE_IN && mode != FADE_OUT ) return printf( "KLAIDA iScreenFader naudojime! FadeScreenForPlayer �aid�jui %d mode buvo netinkamas.", playerid );
	if( fadeScreen[ playerid ][ fsSteps ] > 0 ) return printf( "KLAIDA iScreenFader naudojime! FadeScreenForPlayer funkcijoje �aid�jas %d jau naudoja ekrano tamsinim�.", playerid );
	if( steps == 0 ) return printf( "KLAIDA iScreenFader naudojime! FadeScreenForPlayer funkcijoje �aid�jui %d parametras steps buvo 0!", playerid );
	fadeScreen[ playerid ][ fsSteps ] = 255;
	fadeScreen[ playerid ][ fsMazinimasSteps ] = ( steps == -1 ) ? ( fadeKokybe_mazinimas ) : ( steps );
	fadeScreen[ playerid ][ fsMode ] = mode;
	fadeScreen[ playerid ][ fsColor ] = color;
	fadeScreen[ playerid ][ fsTimer ] = SetTimerEx( "FadeScreen", fadeKokybe_intervalas, true, "d", playerid );
	return 1;
}

stock FadePlayerPos( playerid, color = 0x0FF, Float:fsPosX, Float:fsPosY, Float:fsPosZ, Float:fsPosA = -1.0, fsInt = -1, fsVW = -1, fsClearAnims = true, fsCamera = false, steps = -1 )
{
	if( fadeScreen[ playerid ][ fsSteps ] > 0 ) return printf( "KLAIDA iScreenFader naudojime! FadePlayerPos funkcijoje �aid�jas %d jau naudoja ekrano tamsinim�.", playerid );
	if( steps == 0 ) return printf( "KLAIDA iScreenFader naudojime! FadeScreenForPlayer funkcijoje �aid�jui %d parametras steps buvo 0!", playerid );
	fadeScreen[ playerid ][ fsSteps ] = 255;
	fadeScreen[ playerid ][ fsMazinimasSteps ] = ( steps == -1 ) ? ( fadeKokybe_mazinimas ) : ( steps );
	fadeScreen[ playerid ][ fsMode ] = FADE_IN;
	fadeScreen[ playerid ][ fsColor ] = color;
	fadeScreen[ playerid ][ fsPos ][ 0 ] = fsPosX + 1.0;
	fadeScreen[ playerid ][ fsPos ][ 1 ] = fsPosY + 1.0;
	fadeScreen[ playerid ][ fsPos ][ 2 ] = fsPosZ + 1.0;
	fadeScreen[ playerid ][ fsPos ][ 3 ] = fsPosA + 1.0;
	fadeScreen[ playerid ][ fsInterior ] = fsInt + 1;
	fadeScreen[ playerid ][ fsVirtualWorld ] = fsVW + 1;
	fadeScreen[ playerid ][ fsClearAnimations ] = fsClearAnims;
	fadeScreen[ playerid ][ fsCameraBehindPlayer ] = fsCamera;
	fadeScreen[ playerid ][ fsTimer ] = SetTimerEx( "FadeScreen", fadeKokybe_intervalas, true, "d", playerid );
	return 1;
}

stock FadePlayerSkin( playerid, skinID, color = 0x0FF, steps = -1 )
{
	if( fadeScreen[ playerid ][ fsSteps ] > 0 ) return printf( "KLAIDA iScreenFader naudojime! FadePlayerSkin funkcijoje �aid�jas %d jau naudoja ekrano tamsinim�.", playerid );
	if( steps == 0 ) return printf( "KLAIDA iScreenFader naudojime! FadeScreenForPlayer funkcijoje �aid�jui %d parametras steps buvo 0!", playerid );
	fadeScreen[ playerid ][ fsSteps ] = 255;
	fadeScreen[ playerid ][ fsMazinimasSteps ] = ( steps == -1 ) ? ( fadeKokybe_mazinimas ) : ( steps );
	fadeScreen[ playerid ][ fsMode ] = FADE_IN;
	fadeScreen[ playerid ][ fsColor ] = color;
	fadeScreen[ playerid ][ fsSkin ] = skinID + 1;
	fadeScreen[ playerid ][ fsTimer ] = SetTimerEx( "FadeScreen", fadeKokybe_intervalas, true, "d", playerid );
	return 1;
}

forward FadeScreen( playerid );
public FadeScreen( playerid )
{
	if( !fsTD_sukurtas )
	{
		fsTextDraw = TextDrawCreate( -159.000000, -288.000000, "iScreenFader by InstincT" );
		TextDrawBackgroundColor( fsTextDraw, 255 );
		TextDrawFont( fsTextDraw, 0 );
		TextDrawLetterSize( fsTextDraw, 0.270000, 88.999687 );
		TextDrawColor( fsTextDraw, -1 );
		TextDrawSetOutline( fsTextDraw, 0 );
		TextDrawSetProportional( fsTextDraw, 1 );
		TextDrawSetShadow( fsTextDraw, 1 );
		TextDrawUseBox( fsTextDraw, 1 );
		TextDrawBoxColor( fsTextDraw, 255 );
		TextDrawTextSize( fsTextDraw, 848.000000, 2.000000 );
		fsTD_sukurtas = true;
	}
	TextDrawBoxColor( fsTextDraw, GetFadeColor( fadeScreen[ playerid ][ fsSteps ], fadeScreen[ playerid ][ fsMode ], fadeScreen[ playerid ][ fsColor ] ) );
	TextDrawShowForPlayer( playerid, fsTextDraw );
	fadeScreen[ playerid ][ fsSteps ] -= fadeScreen[ playerid ][ fsMazinimasSteps ];
	if( fadeScreen[ playerid ][ fsSteps ] <= 0 )
	{
		KillTimer( fadeScreen[ playerid ][ fsTimer ] );
		if( fadeScreen[ playerid ][ fsMode ] == FADE_OUT )
		{
			TextDrawHideForPlayer( playerid, fsTextDraw );
		}
		else
		{
			if( fadeScreen[ playerid ][ fsPos ][ 0 ] != 0.0 && fadeScreen[ playerid ][ fsPos ][ 1 ] != 0.0 && fadeScreen[ playerid ][ fsPos ][ 2 ] != 0.0 )
			{
				SetPlayerPos( playerid, fadeScreen[ playerid ][ fsPos ][ 0 ] - 1.0, fadeScreen[ playerid ][ fsPos ][ 1 ] - 1.0, fadeScreen[ playerid ][ fsPos ][ 2 ] - 1.0 );
				fadeScreen[ playerid ][ fsPos ][ 0 ] = 0.0;
				fadeScreen[ playerid ][ fsPos ][ 1 ] = 0.0;
				fadeScreen[ playerid ][ fsPos ][ 2 ] = 0.0;

				if( fadeScreen[ playerid ][ fsPos ][ 3 ] != 0.0 )
				{
					SetPlayerFacingAngle( playerid, fadeScreen[ playerid ][ fsPos ][ 3 ] - 1.0 );
					fadeScreen[ playerid ][ fsPos ][ 3 ] = 0.0;
				}
				if( fadeScreen[ playerid ][ fsInterior ] != 0 )
				{
					SetPlayerInterior( playerid, fadeScreen[ playerid ][ fsInterior ] - 1 );
					fadeScreen[ playerid ][ fsInterior ] = 0;
				}
				if( fadeScreen[ playerid ][ fsVirtualWorld ] != 0 )
				{
					SetPlayerVirtualWorld( playerid, fadeScreen[ playerid ][ fsVirtualWorld ] - 1 );
					fadeScreen[ playerid ][ fsVirtualWorld ] = 0;
				}
				FadeScreenForPlayer( playerid, FADE_OUT, fadeScreen[ playerid ][ fsColor ], fadeScreen[ playerid ][ fsMazinimasSteps ] );
			}
			if( fadeScreen[ playerid ][ fsSkin ] != 0 )
			{
				SetPlayerSkin( playerid, fadeScreen[ playerid ][ fsSkin ] - 1 );
				fadeScreen[ playerid ][ fsSkin ] = 0;
				FadeScreenForPlayer( playerid, FADE_OUT, fadeScreen[ playerid ][ fsColor ], fadeScreen[ playerid ][ fsMazinimasSteps ] );
			}
			if( fadeScreen[ playerid ][ fsClearAnimations ] )
			{
				fadeScreen[ playerid ][ fsClearAnimations ] = false;
				ClearAnimations( playerid );
			}
			if( fadeScreen[ playerid ][ fsCameraBehindPlayer ] )
			{
				fadeScreen[ playerid ][ fsCameraBehindPlayer ] = false;
				SetCameraBehindPlayer( playerid );
			}
		}
		CallRemoteFunction( "OnFadeComplete", "ddx", playerid, fadeScreen[ playerid ][ fsMode ], fadeScreen[ playerid ][ fsColor ], fadeScreen[ playerid ][ fsMazinimasSteps ] );
		return 1;
	}
	return 1;
}

stock GetFadeColor( steps, mode, color )
{
	new
		alpha,
		rgb[ 3 ],
		hex
	;
	if( mode == FADE_IN ) alpha = 255 - steps;
	else alpha = 255 - ( 255 - steps );

	// a�i� 0x5A656578(a.k.a. Zeex)!
	rgb[ 0 ] = ( color & 0xFF000000 ) >>> 24;
	rgb[ 1 ] = ( color & 0x00FF0000 ) >>> 16;
	rgb[ 2 ] = ( color & 0x0000FF00 ) >>> 8;

	hex |= ( rgb[ 0 ] & 0xFF ) << 24;
	hex |= ( rgb[ 1 ] & 0xFF ) << 16;
	hex |= ( rgb[ 2 ] & 0xFF ) << 8;
	hex |= ( alpha & 0xFF );
	return hex;
}