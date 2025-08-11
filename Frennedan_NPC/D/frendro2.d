// Nabeyue, zweite Tochter
BEGIN frendro2

IF ~NumTimesTalkedTo(0) Global("FrennedanNabeyue","GLOBAL",0)~ THEN BEGIN 0
	SAY @0 
	IF ~~ THEN REPLY @1 GOTO 1
	IF ~~ THEN REPLY @2 GOTO 2
END


IF ~~ THEN BEGIN 1
	SAY @3
	IF ~~ THEN GOTO 3
END


IF ~~ THEN BEGIN 2
	SAY @4
	IF ~~ THEN GOTO 3
END


IF ~~ THEN BEGIN 3
	SAY @5
	=
	@6
	=
	@7
	=
	@8
	IF ~~ THEN REPLY @9 GOTO 7
	IF ~~ THEN REPLY @10 GOTO 7
	IF ~~ THEN REPLY @11 GOTO 8
END


IF ~~ THEN BEGIN 7
	SAY @12
	IF ~~ THEN REPLY @13 GOTO 9
	IF ~~ THEN REPLY @14 GOTO 8
END


IF ~~ THEN BEGIN 8
	SAY @15 
	IF ~~ THEN DO ~SetGlobal("FrennedanNabeyue","GLOBAL",1)~ JOURNAL @16 EXIT
END


IF ~~ THEN BEGIN 9
	SAY @17
	=
	@18
	IF ~~ THEN REPLY @19 GOTO 11
	IF ~~ THEN REPLY @20 GOTO 12
	IF ~~ THEN REPLY @21 GOTO 8
END


IF ~~ THEN BEGIN 11
	SAY @22
	IF ~~ THEN DO ~setGlobal("FrennedanNabeyue","GLOBAL",2) CreateVisualEffectObject("SPDIMNDR",Myself) Wait(1) MoveBetweenAreas("AR2204",[1011.1022],3)~ JOURNAL @23 EXIT
END


IF ~~ THEN BEGIN 12
	SAY @24
	IF ~~ THEN REPLY @19 GOTO 11
	IF ~~ THEN REPLY @21 GOTO 8
END


IF ~Global("FrennedanNabeyue","GLOBAL",3) InParty("frendan")~ THEN BEGIN 13
	SAY @25
	IF ~~ THEN DO ~SetGlobal("FrennedanNabeyue","GLOBAL",4) ActionOverride(Player1,ClearAllActions()) StartCutSceneMode() StartCutScene("frcut01")~ EXIT
END


IF ~Global("FrennedanNabeyue","GLOBAL",4)~ THEN BEGIN 14
	SAY @26
	IF ~~ THEN DO ~SetGlobal("FrennedanNabeyue","GLOBAL",5)~ EXTERN ~frendro3~ 0
END


IF ~~ THEN BEGIN 15
	SAY @27 
	IF ~~ THEN EXTERN ~frendro3~ 1
END


IF ~~ THEN BEGIN 16
	SAY @28
	IF ~~ THEN EXTERN ~frendro3~ 2
END


IF ~~ THEN BEGIN 17
	SAY @29
	IF ~Gender(Player1,FEMALE)~ THEN EXTERN ~frendro4~ 0
	IF ~!Gender(Player1,FEMALE)~THEN EXTERN ~frendro4~ 1
END


IF ~~ THEN BEGIN 18
	SAY @30 
	IF ~~ THEN EXTERN ~frendro3~ 22
END


IF ~~ THEN BEGIN 19
	SAY @31
	IF ~~ THEN DO ~EscapeAreaMove("AR2200",2306,2240,3) SetGlobal("FrennedanAuftrag","GLOBAL",1) SetGlobal("FrennedanOberinFirstTalk03","GLOBAL",1)~ EXIT
END


IF ~Global("FrennedanAuftrag","GLOBAL",2)~ THEN BEGIN 20
	SAY @32
	IF ~~ THEN GOTO 21
END


IF ~~ THEN BEGIN 21
	SAY @33
	IF ~~ THEN REPLY @34 GOTO 22
	IF ~~ THEN REPLY @35 GOTO 23
	IF ~~ THEN REPLY @36 GOTO 24
	IF ~~ THEN REPLY @37 GOTO 25
	IF ~~ THEN REPLY @38 GOTO 26
END


IF ~~ THEN BEGIN 22
	SAY @39
	IF ~~ THEN REPLY @40 GOTO 27
	IF ~~ THEN REPLY @41 GOTO 28
END


IF ~~ THEN BEGIN 23
	SAY @42
	IF ~~ THEN GOTO 29
END


IF ~~ THEN BEGIN 24
	SAY @43
	IF ~~ THEN GOTO 23
END


IF ~~ THEN BEGIN 25
	SAY @44
	IF ~~ THEN GOTO 29
END


IF ~~ THEN BEGIN 26
	SAY @45 
	IF ~~ THEN GOTO 23
END


IF ~~ THEN BEGIN 27
	SAY @46
	IF ~~ THEN GOTO 23
END


IF ~~ THEN BEGIN 28
	SAY @47
	IF ~~ THEN DO ~ActionOverride(Player1,GiveGoldForce(3000))~ GOTO 23
END


IF ~~ THEN BEGIN 29
	SAY @48
	IF ~~ THEN GOTO 30
END


IF ~~ THEN BEGIN 30
	SAY @49
	IF ~~ THEN GOTO 32
END


IF ~~ THEN BEGIN 31
	SAY @50
	IF ~~ THEN GOTO 32
END


IF ~~ THEN BEGIN 32
	SAY @51
	IF ~~ THEN GOTO 33
END


IF ~~ THEN BEGIN 33
	SAY @52
	IF ~~ THEN GOTO 34
END


IF ~~ THEN BEGIN 34
	SAY @53
	IF ~~ THEN GOTO 35
END


IF ~~ THEN BEGIN 35
	SAY @54
	IF ~~ THEN REPLY @55 GOTO 36
	IF ~~ THEN REPLY @56 GOTO 37
	IF ~~ THEN REPLY @57 GOTO 36
END


IF ~~ THEN BEGIN 36
	SAY @58
	IF ~~ THEN REPLY @59 GOTO 38
	IF ~~ THEN REPLY @60 GOTO 37
END


IF ~~ THEN BEGIN 37
	SAY @61
	IF ~~ THEN DO ~SetGlobal("FrennedanAuftrag","GLOBAL",3) EscapeArea()~ JOURNAL @62 EXIT
END


IF ~~ THEN BEGIN 38
	SAY @63
	IF ~Global("FrennedanSordrel","GLOBAL",1)~ THEN REPLY @64 JOURNAL @65 GOTO 39
	IF ~Global("FrennedanSordrel","GLOBAL",2)~ THEN REPLY @64 JOURNAL @65 GOTO 40
	IF ~Global("FrennedanSordrel","GLOBAL",3)~ THEN REPLY @64 JOURNAL @65 GOTO 41
END


IF ~~ THEN BEGIN 39
	SAY @66
	IF ~~ THEN DO ~SetGlobal("FrennedanAuftrag","GLOBAL",4)~ EXIT
END


IF ~~ THEN BEGIN 40
	SAY @67
	IF ~~ THEN DO ~SetGlobal("FrennedanAuftrag","GLOBAL",4)~ EXIT
END


IF ~~ THEN BEGIN 41
	SAY @68
	IF ~~ THEN DO ~SetGlobal("FrennedanAuftrag","GLOBAL",4)~ EXIT
END


IF ~!PartyHasItem("fren06") Global("FrennedanAuftrag","GLOBAL",4)~ THEN BEGIN 42
	SAY @69 
	IF ~~ THEN REPLY @70 GOTO 43
END


IF ~~ THEN BEGIN 43
	SAY @71
	IF ~~ THEN EXIT
END


IF ~Dead("frendro8") PartyHasItem("fren06") Global("FrennedanSchwarzesBuch","LOCALS",0)~ THEN BEGIN 44
	SAY @72 
	IF ~~ THEN DO ~TakePartyItem("FREN06")~ GOTO 45
END


IF ~~ THEN BEGIN 45
	SAY @73
	IF ~~ THEN REPLY @74 GOTO 46
END


IF ~~ THEN BEGIN 46
	SAY @75
	IF ~~ THEN REPLY @76 GOTO 47
	IF ~~ THEN REPLY @77 GOTO 47
END


IF ~~ THEN BEGIN 47
	SAY @78
	IF ~~ THEN DO ~GiveItem("MISC3D",Player1) AddXPObject(Player1,35000) AddXPObject(Player2,35000) AddXPObject(Player3,35000) AddXPObject(Player4,35000) AddXPObject(Player5,35000) AddXPObject(Player6,35000)~ GOTO 48
END


IF ~~ THEN BEGIN 48
	SAY @79
	IF ~~ THEN GOTO 49
END


IF ~~ THEN BEGIN 49
	SAY @80
	IF ~~ THEN DO ~SetGlobal("FrennedanSchwarzesBuch","GLOBAL",1) EscapeArea()~ JOURNAL @81 EXIT
END
