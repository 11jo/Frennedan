// Waffenmeister Riniryon
BEGIN frdrow04

IF ~~ THEN BEGIN 0
	SAY @0
	IF ~~ THEN EXTERN ~frdrow03~ 7
END


IF ~~ THEN BEGIN 1
	SAY @1
	IF ~~ THEN EXTERN ~frdrow03~ 7
END


IF ~~ THEN BEGIN 2
	SAY @2
	IF ~~ THEN DO ~Attack("frdrow06")~ EXIT
END