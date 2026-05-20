BEGIN frenP

IF ~Global("FrennedanJoinedParty","GLOBAL",1)
	Global("FrennedanKickedOut","GLOBAL",0)
	!Global("FrennedanUnterreich","GLOBAL",4)
	!Global("FrennedanUnterreich","GLOBAL",5)~ THEN BEGIN 0
	SAY @0
	IF ~~ THEN REPLY @1 GOTO 1
	IF ~~ THEN REPLY @2 GOTO 2
	IF ~~ THEN REPLY @3 GOTO 3
END


IF ~~ THEN BEGIN 1
	SAY @4
	IF ~~ THEN DO ~SetInterrupt(FALSE)
					SetGlobal("FrennedanJoinedParty","GLOBAL",0)
					SetGlobal("FrennedanKickedOut","GLOBAL",1)
					SetGlobal("FrennedanSpeicher","GLOBAL",6)
					CreateVisualEffectObject("SPFLESHS",Myself)
					ReallyForceSpellRES("fren00",Myself)
					Polymorph(DOPPLEGANGER)
					Wait(1)
					ChangeAIScript("WTASIGHT",DEFAULT)
					Enemy() SetInterrupt(TRUE)~ EXIT
END


IF ~~ THEN BEGIN 2
	SAY @5
	IF ~~ THEN DO ~JoinParty()~ EXIT
END


IF ~~ THEN BEGIN 3
	SAY @6
	= 
	@7
	IF ~~ THEN DO ~SetInterrupt(FALSE)
					SetGlobal("FrennedanFlucht","GLOBAL",2)
					SetGlobal("FrennedanJoinedParty","GLOBAL",0)
					SetGlobal("FrennedanKickedOut","GLOBAL",1)
					SetGlobal("Fren_Polymorph","GLOBAL",3)
					SetGlobal("FrennedanSpeicher","GLOBAL",3)
					CreateVisualEffectObject("SPFLESHS",Myself)
					ReallyForceSpellRES("fren01",Myself)
					Polymorph(FAT_MAN)
					SetPlayerSound(Myself,-1,MORALE)
					SetPlayerSound(Myself,-1,HAPPY)
					SetPlayerSound(Myself,-1,UNHAPPY_BREAKING_POINT)
					SetPlayerSound(Myself,38847,DAMAGE)
					SetPlayerSound(Myself,38786,DYING)
					SetPlayerSound(Myself,38783,SELECT_COMMON1)
					SetPlayerSound(Myself,38784,SELECT_COMMON2)
					SetPlayerSound(Myself,38785,SELECT_COMMON3)
					SetPlayerSound(Myself,38781,SELECT_COMMON4)
					Wait(1)
					SetInterrupt(TRUE)
					EscapeAreaMove("AR0800",1784,1493,0)~ EXIT
END


IF ~Global("FrennedanJoinedParty","GLOBAL",0)
	Global("FrennedanKickedOut","GLOBAL",1)
	!Global("FrennedanUnterreich","GLOBAL",5)~ THEN BEGIN 4
	SAY @8
	IF ~~ THEN REPLY @9 DO ~SetGlobal("FrennedanJoinedParty","GLOBAL",1)
							SetGlobal("FrennedanKickedOut","GLOBAL",0)
							JoinParty()~ EXIT
	IF ~~ THEN REPLY @10 GOTO 1
	IF ~~ THEN REPLY @11 EXIT
END


IF ~Global("FrennedanUnterreich","GLOBAL",5)~ THEN BEGIN frenn00
	SAY @12 = @13
	IF ~~ THEN REPLY @14 GOTO frenn01
	IF ~~ THEN REPLY @15 GOTO frenn02
	IF ~~ THEN REPLY @16 GOTO frenn03
END


IF ~~ THEN BEGIN frenn01
	SAY @17	
	IF ~~ THEN GOTO frenn03
END


IF ~~ THEN BEGIN frenn02
	SAY @18
	IF ~~ THEN GOTO frenn03
END


IF ~~ THEN BEGIN frenn03
	SAY @19
	IF ~~ THEN DO ~
		SetInterrupt(FALSE)
		SetGlobal("FrennedanUnterreich","GLOBAL",6)
		SetGlobal("FrennedanSpeicher","GLOBAL",4)
		CreateVisualEffectObject("SPFLESHS",Myself)
		Polymorph(MINDFLAYER)
		ReallyForceSpellRES("fren09",Myself)
		ReallyForceSpellRES("frenmind",Myself)
		AddSpecialAbility("SPIN974")
		SetPlayerSound(Myself,-1,MORALE)
		SetPlayerSound(Myself,-1,HAPPY)
		SetPlayerSound(Myself,-1,UNHAPPY_BREAKING_POINT)
		SetPlayerSound(Myself,-1,DAMAGE)
		SetPlayerSound(Myself,-1,DYING)
		SetPlayerSound(Myself,-1,SELECT_COMMON1)
		SetPlayerSound(Myself,-1,SELECT_COMMON2)
		SetPlayerSound(Myself,-1,SELECT_COMMON3)
		SetPlayerSound(Myself,-1,SELECT_COMMON4)
		JoinParty()
		SetInterrupt(TRUE)~ EXIT
END
