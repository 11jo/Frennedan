// Informant Laszaer
BEGIN frdrow06

IF ~~ THEN BEGIN 0
	SAY @0
	IF ~~ THEN EXTERN ~frdrow03~ 4
END


IF ~~ THEN BEGIN 1
	SAY @1
	IF ~~ THEN EXTERN ~frdrow03~ 5
END


IF ~~ THEN BEGIN 2
	SAY @2
	=
	@3
	=
	@4
	IF ~~ THEN EXTERN ~frenJ~ 59
END


IF ~~ THEN BEGIN 5
	SAY @5
	IF ~Global("FrennedanVersammlung","GLOBAL",1)~ THEN EXTERN ~frdrow03~ 6
	IF ~!Global("FrennedanVersammlung","GLOBAL",1)~ THEN EXTERN ~frdrow02~ 17
END


IF ~~ THEN BEGIN 6
	SAY @6
	IF ~~ THEN EXTERN ~frdrow03~ 8
END


IF ~~ THEN BEGIN 7
	SAY @7
	=
	@8
	=
	@9
	IF ~~ THEN EXTERN ~frdrow03~ 13
END


IF ~~ THEN BEGIN 10
	SAY @10
	IF ~~ THEN EXTERN ~frdrow03~ 10
END


IF ~~ THEN BEGIN 11
	SAY @11
	IF ~~ THEN EXTERN ~frdrow03~ 14
END 


IF ~~ THEN BEGIN 12
	SAY @12
	IF ~~ THEN EXTERN ~frenJ~ 60
END


IF ~~ THEN BEGIN 13
	SAY @13
	IF ~~ THEN EXTERN ~frdrow03~ 19
END