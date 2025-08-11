// Mutter Oberin Lilfaeriza
BEGIN frendro3

IF ~~ THEN BEGIN 0
	SAY @0
	IF ~~ THEN EXTERN ~frendro2~ 15
END


IF ~~ THEN BEGIN 1
	SAY @1
	IF ~~ THEN EXTERN ~frendro2~ 16
END


IF ~~ THEN BEGIN 2
	SAY @2
	=
	@3
	IF ~~ THEN EXTERN ~frendro6~ 0
END


IF ~~ THEN BEGIN 4
	SAY @4
	IF ~~ THEN EXTERN ~frendro6~ 1
END


IF ~~ THEN BEGIN 5
	SAY @5
	IF ~~ THEN EXTERN ~frendro6~ 2
END


IF ~~ THEN BEGIN 6
	SAY @6
	IF ~~ THEN EXTERN ~frendro6~ 6
END


IF ~~ THEN BEGIN 7
	SAY @7
	IF ~~ THEN EXTERN ~frendro5~ 0
END


IF ~~ THEN BEGIN 8
	SAY @8
	=
	@9
	IF ~~ THEN REPLY @10 GOTO 10
	IF ~~ THEN REPLY @11 GOTO 11
	IF ~~ THEN REPLY @12 GOTO 12
END


IF ~~ THEN BEGIN 10
	SAY @13
	IF ~~ THEN EXTERN ~frendro6~ 7
END


IF ~~ THEN BEGIN 11
	SAY @14
	IF ~~ THEN EXTERN ~frendro6~ 10
END


IF ~~ THEN BEGIN 12
	SAY @15
	IF ~~ THEN EXTERN ~frendro6~ 11
END


IF ~~ THEN BEGIN 13
	SAY @16
	IF ~~ THEN EXTERN ~frendro6~ 12
END


IF ~~ THEN BEGIN 14
	SAY @17
	IF ~~ THEN EXTERN ~frendro4~ 2
END


IF ~~ THEN BEGIN 15
	SAY @18
	IF ~~ THEN REPLY @19 GOTO 16
	IF ~~ THEN REPLY @20 GOTO 17
	IF ~~ THEN REPLY @21 GOTO 18
END


IF ~~ THEN BEGIN 16
	SAY @22
	IF ~~ THEN DO ~SetGlobal("FrennedanSordrel","GLOBAL",1)~ GOTO 12
END


IF ~~ THEN BEGIN 17
	SAY @22
	IF ~~ THEN DO ~SetGlobal("FrennedanSordrel","GLOBAL",2)~ GOTO 12
END


IF ~~ THEN BEGIN 18
	SAY @23
	IF ~~ THEN EXTERN ~frendro6~ 13
END


IF ~~ THEN BEGIN 19
	SAY @24
	IF ~~ THEN DO ~ActionOverride("frendro6",EscapeArea()) SetGlobal("FrennedanSordrel","GLOBAL",3)~ EXIT
END


IF ~Global("FrennedanOberinFirstTalk01","GLOBAL",1)~ THEN BEGIN 20
	SAY @25
	IF ~~ THEN DO ~SetGlobal("FrennedanOberinFirstTalk01","GLOBAL",2)~ GOTO 21
END


IF ~~ THEN BEGIN 21
	SAY @26
	IF ~~ THEN EXTERN ~frendro2~ 18
END


IF ~~ THEN BEGIN 22
	SAY @27
	IF ~~ THEN GOTO 23
END


IF ~~ THEN BEGIN 23
	SAY @28
	IF ~~ THEN EXTERN ~frendro2~ 19
END


IF ~Global("FrennedanOberinFirstTalk03","GLOBAL",2)~ THEN BEGIN 24
	SAY @29
	IF ~~ THEN GOTO 25
END


IF ~~ THEN BEGIN 25
	SAY @30
	IF ~~ THEN DO ~GiveItem("fren05",Player1) AddXPObject(Player1,27000) AddXPObject(Player2,27000) AddXPObject(Player3,27000) AddXPObject(Player4,27000) AddXPObject(Player5,27000) AddXPObject(Player6,27000)~ GOTO 26
END


IF ~~ THEN BEGIN 26
	SAY @31
	IF ~~ THEN DO ~SetGlobal("FrennedanOberinFirstTalk03","GLOBAL",3)~ EXIT
END


IF ~Global("FrennedanOberinFirstTalk02","GLOBAL",1)~ THEN BEGIN 27
	SAY @32
	IF ~~ THEN GOTO 21
END
