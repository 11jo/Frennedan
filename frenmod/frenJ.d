BEGIN frenJ

IF ~NumTimesTalkedTo(0) Global("FrennedanFirstMeet","GLOBAL",1)~ THEN BEGIN 0
  SAY #12620 /* ~Ah! Ihr könnt gewiss nicht meine Entführer sein, die kommen, einen alten Mann in seinem Glasgefängnis zu foltern! Ihr seht niemandem ähnlich, den ich hier gesehen habe.~ [SLAVE04] */
  IF ~~ THEN REPLY #12621 /* ~Nein, ich bin nicht Euer Entführer. Ich war vor kurzem selbst gefangen.~ */ GOTO 1
  IF ~~ THEN REPLY #12623 /* ~Wer seid Ihr, alter Mann? Wie kam es, dass man Euch hier auf diese Weise gefangen hält?~ */ GOTO 2
  IF ~~ THEN REPLY #12636 /* ~Ich bin nicht hier, um Euch zu foltern, alter Mann, aber ich kann auch keine Zeit erübrigen, Euch zu helfen.~ */ GOTO 5
END


IF ~~ THEN BEGIN 1
  SAY #12622 /* ~Oh, dann seid gepriesen, dass Ihr Euch befreien konntet. Seht Ihr auch eine Möglichkeit, einem alten Mann zu seiner Freiheit zu verhelfen?~ */
  IF ~~ THEN REPLY #12627 /* ~Natürlich werde ich alles tun, um Euch zu helfen. Wisst Ihr, wie ich Euch aus dem Käfig holen kann?~ */ GOTO 3
  IF ~~ THEN REPLY #12630 /* ~Ich möchte erst wissen, wer Ihr seid, und wie es kam, dass Ihr hier gefangen gehalten werdet.~ */ GOTO 2
  IF ~~ THEN REPLY #12639 /* ~Ich bin nicht sicher, ob ich Euch befreien kann. Wisst Ihr, wie diese Glastür geöffnet wird?~ */ GOTO 7
  IF ~~ THEN REPLY #12641 /* ~Ich finde, man kann in diesem Gefängnis niemandem trauen. Ihr bleibt erstmal, wo Ihr seid, alter Mann.~ */ GOTO 5
END


IF ~~ THEN BEGIN 2
  SAY #12624 /* ~Ich heiße Frennedan, und ich bin schon eine geraume Zeit in diesem Glaskasten. Warum, das weiß ich nicht, aber ich fürchte, man will an mir magische Experimente durchführen. Bitte helft mir!~ */
  IF ~~ THEN REPLY #12632 /* ~Natürlich werde ich alles tun, um Euch zu helfen. Wisst Ihr, wie ich Euch da rausholen kann?~ */ GOTO 3
  IF ~~ THEN REPLY #12633 /* ~Ich habe andere gesehen, mit denen experimentiert wurde, wie Ihr sagt. Das ist eine ganz furchtbare Sache... wisst Ihr, wer dahinter steckt?~ */ GOTO 4
  IF ~~ THEN REPLY #12642 /* ~Ich bin nicht sicher, ob ich Euch befreien kann. Wisst Ihr, wie ich die Glastür öffnen kann?~ */ GOTO 6
  IF ~~ THEN REPLY #12643 /* ~Ich weiß nicht, ob ich Euch trauen kann, Frennedan. Vielleicht hat Euch jemand mit gutem Grund eingesperrt.~ */ GOTO 5
END


IF ~~ THEN BEGIN 3
  SAY #12629 /* ~In einer der Truhen ist ein Schlüssel, mit dem die Tür geöffnet wird. Bitte, beeilt Euch!~ */
  IF ~~ THEN DO ~SetGlobal("FrennedanFirstMeet","GLOBAL",3)~ EXIT
END


IF ~~ THEN BEGIN 4
  SAY #12634 /* ~Nein, ich weiß überhaupt nichts über den, der das alles angerichtet hat, <LADYLORD>. Bitte helft mir! Ich fürchte, ich bin zu alt, um noch länger zu überleben!~ */
  IF ~~ THEN REPLY #12635 /* ~Selbstverständlich werde ich alles tun, um Euch zu helfen. Wisst Ihr, wie ich Euch aus dem Käfig herausholen kann?~ */ GOTO 3
  IF ~~ THEN REPLY #12674 /* ~Ich frage mich, ob ich überhaupt helfen kann. Wisst Ihr, wie man die Glastür des Käfigs aufschließt?~ */ GOTO 7
  IF ~~ THEN REPLY #12675 /* ~Ihr erscheint mir übereifrig zu sein, und ich traue Euch zu wenig, um Euch herauszulassen. Ihr werdet bleiben, wo Ihr seid.~ */ GOTO 5
END


IF ~~ THEN BEGIN 5
  SAY #12637 /* ~Aaaah! Ihr wollt einem alten, schwachen Mann nicht helfen?~ */
  IF ~~ THEN DO ~SetGlobal("FrennedanFirstMeet","GLOBAL",2) SetGlobal("FMorph","GLOBAL",1) SetGlobal("FrennedanSpeicher","GLOBAL",2) SmallWait(7) CreateVisualEffectObject("SPFLESHS",Myself) ReallyForceSpellRES("fren04",Myself) Polymorph(BOY) Wait(1) StartDialogueNoSet(Player1)~ EXIT
END


IF ~~ THEN BEGIN 6
  SAY #12640 /* ~Ich glaube, in einer der Truhen liegt ein Schlüssel. Oh, bitte, findet ihn und helft mir! Bitte helft einem alten Mann!~ */
  IF ~~ THEN REPLY #12644 /* ~Also gut, ich werde ihn suchen und Euch befreien. Niemand sollte auf diese Art behandelt werden.~ */ GOTO 8
  IF ~~ THEN REPLY #12646 /* ~Ich bin nicht sicher... Ihr scheint irgendwie so ungeduldig zu sein. Woher weiß ich, dass ich Euch trauen kann?~ */ GOTO 5
END


IF ~~ THEN BEGIN 7
  SAY #12640 /* ~Ich glaube, in einer der Truhen liegt ein Schlüssel. Oh, bitte, findet ihn und helft mir! Bitte helft einem alten Mann!~ */
  IF ~~ THEN REPLY #12644 /* ~Also gut, ich werde ihn suchen und Euch befreien. Niemand sollte auf diese Art behandelt werden.~ */ GOTO 8
  IF ~~ THEN REPLY #12646 /* ~Ich bin nicht sicher... Ihr scheint irgendwie so ungeduldig zu sein. Woher weiß ich, dass ich Euch trauen kann?~ */ GOTO 5
END

IF ~~ THEN BEGIN 8
  SAY #12645 /* ~Bitte beeilt Euch!~ */
  IF ~~ THEN DO ~SetGlobal("FrennedanFirstMeet","GLOBAL",3)~ EXIT
END


IF ~Global("FrennedanFirstMeet","GLOBAL",2)
~ THEN BEGIN frei0
  SAY @0 
  IF ~~ THEN REPLY #12647 /* ~Was?! Was für Zauberei geht hier vor sich?! Ihr verwandelt Euch vor meinen Augen in einen Jungen und erwartet von mir, dass ich Euch traue? Das müsst Ihr erklären!~ */ GOTO frei1
  IF ~~ THEN REPLY #16102 /* ~Nun gut. Ich werde Euch helfen.~ */ GOTO frei4
  IF ~~ THEN REPLY #12649 /* ~Ich weiß nicht, was Ihr seid, aber Ihr werdet in diesem Glaskäfig bleiben, damit ich vor Euch sicher bin.~ */ GOTO frei1
END


IF ~~ THEN BEGIN frei1
  SAY #12648 /* ~Schnief! Ich würde so sehr gerne einfach frei sein, <SIRMAAM>. Bitte helft mir. Bitte lasst mich gehen.~ */
  IF ~~ THEN REPLY #12651 /* ~Ihr sprecht wie ein Kind, und einen Augenblick vorher wie ein alter Mann. Ich wüsste gern, was Ihr wart, bevor ich Euch befreit habe... ich bin schon genügend Doppelgängern begegnet.~ */ GOTO frei3
  IF ~~ THEN REPLY #12655 /* ~So leicht lass ich mich nicht austricksen! Ihr bleibt hinter Glas, wo Ihr hingehört!~ */ GOTO frei2
  IF ~~ THEN REPLY #12656 /* ~Nun gut. Aber seid gewarnt, ich werde Euch genau im Auge behalten. Ein einziges Anzeichen einer bedrohlichen Handlung, und es wird Eure letzte sein, das schwöre ich.~ */ GOTO frei4
END


IF ~~ THEN BEGIN frei2
  SAY #12650 /* ~Nein, nein, bitte! Wollt Ihr nicht mal einem kleinen Jungen helfen? Oooooh...~ */
  IF ~~ THEN DO ~SetGlobal("FrennedanFirstMeet","GLOBAL",3) ReallyForceSpellRES("fraufw02",Myself)~ EXIT
END


IF ~~ THEN BEGIN frei3
  SAY #12652 /* ~Ich bin keine Dopp, keine Dopp... einer von denen. Was auch immer das ist, <SIRMAAM>. Ooooh, ich weiß nicht, was ich sagen muss, damit Ihr mir helft. Ich bin hier schon so lange drin.~ */
  IF ~~ THEN REPLY #12654 /* ~Ich wäre ganz schön dumm, wenn ich Euch freiließe. Ihr bleibt, wo Ihr seid, bis Ihr mich umstimmen könnt.~ */ GOTO frei1
  IF ~~ THEN REPLY #12653 /* ~Ah, nun gut dann. Ich werde versuchen, Euch zu befreien. Ich werde Euch jedoch sorgsam beobachten, und die erste Bewegung würde Eure letzte sein!~ */ GOTO frei4
END


IF ~~ THEN BEGIN frei4
  SAY #12657 /* ~Danke! Oh, danke vielmals! Bitte beeilt Euch!~ */
  IF ~~ THEN DO ~SetGlobal("FrennedanFirstMeet","GLOBAL",3) ReallyForceSpellRES("fraufw02",Myself)~ EXIT
END


IF ~Global("FrennedanFirstMeet","GLOBAL",4)~ THEN BEGIN fren0
	SAY #12660 /* ~Danke, dass Ihr mich befreit habt! Ich mache keinen Ärger, nicht wahr? Ich will Euch nichts Böses.~ */
  	IF ~~ THEN REPLY #12661 /* ~Ich werde meine Begleiter nicht in Gefahr bringen, nur weil wir Euch an den Hacken haben. Sucht Euch selbst einen Weg nach oben.~ */ GOTO fren1
  	IF ~~ THEN REPLY #12664 /* ~Wisst Ihr irgend etwas über das Gefängnis, wie zum Beispiel den Weg nach draußen?~ */ GOTO fren2
  	IF ~~ THEN REPLY #12665 /* ~Seid Ihr sicher, dass Ihr nicht wisst, wer hinter allem steckt? Auch Kleinigkeiten könnten nützlich sein.~ */ GOTO fren3
  	IF ~~ THEN REPLY #12666 /* ~Was Ihr auch immer seid, ich habe beschlossen, Eurem Dasein auf jeden Fall ein Ende zu setzen!~ */ GOTO fren4
END


IF ~~ THEN BEGIN fren1
	SAY @1
	IF ~~ THEN REPLY @2 GOTO fren5
	IF ~~ THEN REPLY #12666 /* ~Was Ihr auch immer seid, ich habe beschlossen, Eurem Dasein auf jeden Fall ein Ende zu setzen!~ */ GOTO fren4
END


IF ~~ THEN BEGIN fren2
	SAY @3 = @4 = @5
	IF ~~ THEN REPLY #12661 /* ~Ich werde meine Begleiter nicht in Gefahr bringen, nur weil wir Euch an den Hacken haben. Sucht Euch selbst einen Weg nach oben.~ */ GOTO fren1
	IF ~~ THEN REPLY @6 GOTO fren3
	IF ~~ THEN REPLY @7 GOTO fren5
	IF ~~ THEN REPLY @8 GOTO fren4
END


IF ~~ THEN BEGIN fren3
	SAY @9 = @10
	IF ~~ THEN REPLY @11 GOTO fren2
	IF ~~ THEN REPLY #12661 /* ~Ich werde meine Begleiter nicht in Gefahr bringen, nur weil wir Euch an den Hacken haben. Sucht Euch selbst einen Weg nach oben.~ */ GOTO fren1
	IF ~~ THEN REPLY @7 GOTO fren5
	IF ~~ THEN REPLY @8 GOTO fren4
END


IF ~~ THEN BEGIN fren4
	SAY #12662 /* ~Wie? Unverschämtes Pack!~ */
	IF ~~ THEN DO ~SetInterrupt(FALSE) SetGlobal("frennedanFirstMeet","GLOBAL",5) SetGlobal("FMorph","GLOBAL",1) SetGlobal("FrennedanSpeicher","GLOBAL",1) SmallWait(7) CreateVisualEffectObject("SPFLESHS",Myself) ReallyForceSpellRES("fren00",Myself) Polymorph(DOPPLEGANGER) Wait(2) ChangeAIScript("WTASIGHT",DEFAULT) Enemy() SetInterrupt(TRUE)~ EXIT
END


IF ~~ THEN BEGIN fren5
	SAY #12669 /* ~Ich kann es kaum erwarten, diesem entsetzlichen Ort endlich zu entkommen. Danke, dass ihr mir erlaubt, Euch nach draußen zu folgen, <LADYLORD>.~ */
	IF ~~ THEN DO ~SetGlobal("frennedanFirstMeet","GLOBAL",5) SetGlobal("frennedanJoinedParty","GLOBAL",1) JoinParty()~ EXIT
END


IF ~Global("FrennedanFlucht","GLOBAL",1) Global("FMorph","GLOBAL",0)~ THEN BEGIN frenn0a
	SAY @12 
	IF ~~ THEN REPLY @13 GOTO frenn1
	IF ~~ THEN REPLY @14 GOTO frenn2
END


IF ~Global("FrennedanFlucht","GLOBAL",1) Global("FMorph","GLOBAL",2)~ THEN BEGIN frenn0b
	SAY @12 
	IF ~~ THEN REPLY @13 GOTO frenn1
	IF ~~ THEN REPLY @14 GOTO frenn2
END


IF ~~ THEN BEGIN frenn1
	SAY @16 = @17
	IF ~~ THEN REPLY @18 GOTO frenn3
	IF ~~ THEN REPLY @19 GOTO frenn4
	IF ~~ THEN REPLY @20 GOTO frenn3
	IF ~~ THEN REPLY @21 GOTO frenn5
END


IF ~~ THEN BEGIN frenn2
	SAY @22
	IF ~~ THEN GOTO frenn1
END


IF ~~ THEN BEGIN frenn3
	SAY @23
	IF ~~ THEN REPLY @24 GOTO frenn6
	IF ~~ THEN REPLY @25 GOTO frenn5
END


IF ~~ THEN BEGIN frenn4
	SAY @26
	IF ~~ THEN REPLY @24 GOTO frenn6
	IF ~~ THEN REPLY @25 GOTO frenn5
END


IF ~~ THEN BEGIN frenn5
	SAY @27
	IF ~~ THEN DO ~SetInterrupt(FALSE) SetGlobal("FMorph","GLOBAL",100) SetGlobal("FrennedanFlucht","GLOBAL",2) LeaveParty() SmallWait(7) CreateVisualEffectObject("SPFLESHS",Myself) ReallyForceSpellRES("fren00",Myself) Polymorph(DOPPLEGANGER) Wait(1) ChangeAIScript("WTASIGHT",DEFAULT) Enemy() SetInterrupt(TRUE)~ EXIT
END


IF ~~ THEN BEGIN frenn6
	SAY @28 = @29 = @30
	IF ~~ THEN REPLY @31 GOTO frenn7
	IF ~~ THEN REPLY @32 GOTO frenn8
	IF ~~ THEN REPLY @33 GOTO frenn5
	IF ~~ THEN REPLY @34 GOTO frenn9
END


IF ~~ THEN BEGIN frenn7
	SAY @35 = @36
	IF ~~ THEN DO ~SetInterrupt(FALSE) SetGlobal("FrennedanFlucht","GLOBAL",2) SetGlobal("FMorph","GLOBAL",3) SetGlobal("FrennedanSpeicher","GLOBAL",3) CreateVisualEffectObject("SPFLESHS",Myself) ReallyForceSpellRES("fren08",Myself) Polymorph(FIGHTER_MALE_HUMAN) AddSpecialAbility("frenm") AddSpecialAbility("frenm2") AddSpecialAbility("frenm3") SetInterrupt(TRUE)~ EXIT
END


IF ~~ THEN BEGIN frenn8
	SAY @37
	IF ~~ THEN REPLY @38 GOTO frenn7
	IF ~~ THEN REPLY @39 GOTO frenn5
	IF ~~ THEN REPLY @34GOTO frenn9
END


IF ~~ THEN BEGIN frenn9
	SAY @40
	IF ~~ THEN DO ~SetInterrupt(FALSE) SetGlobal("FrennedanFlucht","GLOBAL",2) SetGlobal("FrennedanJoinedParty","GLOBAL",0) SetGlobal("FrennedanFriedhof","GLOBAL",1) SetGlobal("FMorph","GLOBAL",3) SetGlobal("FrennedanSpeicher","GLOBAL",3) LeaveParty() AddSpecialAbility("frenm") AddSpecialAbility("frenm2") CreateVisualEffectObject("SPFLESHS",Myself) ReallyForceSpellRES("fren01",Myself) Polymorph(FAT_MAN) Wait(1) EscapeAreaMove("AR0800",1784,1493,0) SetInterrupt(TRUE)~ EXIT
END


IF ~Global("FrennedanInteract01","GLOBAL",2)~ THEN BEGIN frenn10
	SAY @41
	IF ~~ THEN DO ~SetGlobal("FrennedanInteract01","GLOBAL",3)~ EXTERN ~EDWINJ~ frened00
END


IF ~~ THEN BEGIN frenn11
	SAY @42 
	IF ~~ THEN EXTERN ~EDWINJ~ frened01
END


IF ~~ THEN BEGIN frenn12
	SAY @43
	IF ~~ THEN EXTERN ~EDWINJ~ frened02
END


IF ~Global("FrennedanBrynnlaw","GLOBAL",2)~ THEN BEGIN frenn13
	SAY @44
	=
	@45
	IF ~~ THEN DO ~SetGlobal("FrennedanBrynnlaw","GLOBAL",3)~ EXIT
END


IF ~Global("FrennedanUnterreich","GLOBAL",1)~ THEN BEGIN frenn14
	SAY @46 = @47
	IF ~~ THEN REPLY @48 GOTO frenn15
	IF ~~ THEN REPLY @49 GOTO frenn15
	IF ~~ THEN REPLY @50 GOTO frenn16
END


IF ~~ THEN BEGIN frenn15
	SAY @51 = @52
	IF ~~ THEN REPLY @53 GOTO frenn17
	IF ~~ THEN REPLY @54 GOTO frenn18
	IF ~~ THEN REPLY @50 GOTO frenn16
END


IF ~~ THEN BEGIN frenn16
	SAY @55
	IF ~~ THEN DO ~SetGlobal("FrennedanUnterreich","GLOBAL",2)~ EXIT
END 


IF ~~ THEN BEGIN frenn17
	SAY @56
	IF ~~ THEN DO ~SetGlobal("FrennedanUnterreich","GLOBAL",2)~ EXIT
END


IF ~~ THEN BEGIN frenn18
	SAY @57
	IF ~~ THEN GOTO frenn17
END


IF ~Global("FrennedanUnterreich","GLOBAL",3)~ THEN BEGIN frenn19
	SAY @58
	IF ~~ THEN REPLY @59 GOTO frenn20
	IF ~~ THEN REPLY @60 GOTO frenn21
END


IF ~~ THEN BEGIN frenn20
	SAY @61 = @62
	IF ~~ THEN REPLY @63 DO ~SetGlobal("FrennedanUnterreich","GLOBAL",4) LeaveParty()~ EXIT
END


IF ~~ THEN BEGIN frenn21
	SAY @64
	IF ~~ THEN GOTO frenn20
END


IF ~~ THEN BEGIN frenn22
	SAY @65
	IF ~~ THEN EXTERN ~VICONJ~ frvic01
END


IF ~~ THEN BEGIN frenn23
	SAY @66
	IF ~~ THEN EXTERN ~VICONJ~ frvic02
END 


IF ~~ THEN BEGIN frenn24	
	SAY @67
	IF ~~ THEN DO ~SetGlobal("FrennedanInteractViconia","GLOBAL",3)~ EXIT
END


IF ~~ THEN BEGIN frenn26
	SAY @68
	IF ~~ THEN EXTERN ~frdrow06~ 5
END


IF ~~ THEN BEGIN frenn27
	SAY @69
	IF ~~ THEN EXTERN ~frdrow06~ 5
END


IF ~~ THEN BEGIN 59
	SAY @70
	IF ~~ THEN REPLY @71 DO ~SetGlobal("FrennedanVersammlung","GLOBAL",1)~ GOTO frenn26
	IF ~~ THEN REPLY @72 DO ~SetGlobal("FrennedanVersammlung","GLOBAL",2)~ GOTO frenn27
END


IF ~~ THEN BEGIN 60
	SAY @73
	IF ~~ THEN EXTERN ~frdrow03~ 15
END


IF ~~ THEN BEGIN 61
	SAY @74
	COPY_TRANS PLAYER1 25
END


IF ~~ THEN BEGIN 62
	SAY @75
	COPY_TRANS PLAYER1 33
END


IF ~~ THEN BEGIN 63
	SAY @76
	IF ~~ THEN REPLY @77 GOTO 64
	IF ~~ THEN REPLY @78 GOTO 65
	IF ~~ THEN REPLY @79 GOTO 64
END


IF ~~ THEN BEGIN 64
	SAY @80
	IF ~ReputationLT(Player1,10)~ DO ~LeaveParty() ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
	IF ~ReputationGT(Player1,9)~ DO ~LeaveParty() ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT
END


IF ~~ THEN BEGIN 65
	SAY @81
	IF ~ReputationLT(Player1,10)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100a")~ EXIT
	IF ~ReputationGT(Player1,9)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut100b")~ EXIT
END


IF ~Global("FrennedanUnterreich","GLOBAL",8)~ THEN BEGIN frenn28
	SAY @82
	=
	@83
	IF ~~ THEN DO ~SetGlobal("FrennedanSpeicher","GLOBAL",3) SetGlobal("FMorph","GLOBAL",1) SetGlobal("FrennedanUnterreich","GLOBAL",9) ReallyForceSpellRES("fraufw02",Myself) SetGlobal("FrennedanAufwertung","GLOBAL",0) ReallyForceSpellRES("fren10",Myself)~ EXIT
END


IF ~Global("FrennedanTalkHC","GLOBAL",2)~ THEN BEGIN frenn29
	SAY @84
	IF ~~ THEN REPLY @85 GOTO frenn30
	IF ~~ THEN REPLY @86 GOTO frenn31
	IF ~~ THEN REPLY @87 GOTO frenn30
END


IF ~~ THEN BEGIN frenn30
	SAY @88
	IF ~~ THEN REPLY @89 GOTO frenn32
	IF ~~ THEN REPLY @90 GOTO frenn32
	IF ~~ THEN REPLY @91  GOTO frenn33
END


IF ~~ THEN BEGIN frenn31
	SAY @92
	IF ~~ THEN DO ~SetGlobal("FrennedanTalkHC","GLOBAL",100)~ EXIT
END


IF ~~ THEN BEGIN frenn32
	SAY @93
	IF ~~ THEN GOTO frenn34
END


IF ~~ THEN BEGIN frenn33
	SAY @94 
	IF ~~ THEN GOTO frenn34
END


IF ~~ THEN BEGIN frenn34
	SAY @95
	IF ~~ THEN DO ~SetGlobal("FrennedanTalkHC","GLOBAL",3)~ EXIT
END


IF ~Global("FrennedanTalkHC","GLOBAL",5)~ THEN BEGIN frenn35
	SAY @96
	IF ~~ THEN REPLY @97 GOTO frenn36
	IF ~~ THEN REPLY @98 GOTO frenn36
	IF ~~ THEN REPLY @99 GOTO frenn36
END


IF ~~ THEN BEGIN frenn36
	SAY @100
	IF ~~ THEN GOTO frenn37
END


IF ~~ THEN BEGIN frenn37
	SAY @101
	IF ~~ THEN REPLY @102 GOTO frenn38
	IF ~~ THEN REPLY @103 GOTO frenn31
END


IF ~~ THEN BEGIN frenn38
	SAY @104
	IF ~~ THEN GOTO frenn39
END


IF ~~ THEN BEGIN frenn39
	SAY @105
	IF ~~ THEN GOTO frenn40
END


IF ~~ THEN BEGIN frenn40
	SAY @106
	IF ~~ THEN GOTO frenn41
END


IF ~~ THEN BEGIN frenn41
	SAY @107
	IF ~~ THEN GOTO frenn42
END


IF ~~ THEN BEGIN frenn42
	SAY @108
	IF ~~ THEN DO ~SetGlobal("FrennedanTalkHC","GLOBAL",6)~ EXIT
END


APPEND ~EDWINJ~
	IF ~~ THEN BEGIN frened00
	SAY @109 = @110
	IF ~~ THEN EXTERN ~frenJ~ frenn11
	END

	IF ~~ THEN BEGIN frened01
	SAY @111
	IF ~~ THEN EXTERN ~frenJ~ frenn12
	END

	IF ~~ THEN BEGIN frened02
	SAY @112
	IF ~~ THEN EXIT
	END
END


APPEND ~VICONJ~
	IF ~Global("FrennedanInteractViconia","GLOBAL",2)~ THEN BEGIN frvic00
	SAY @113
	IF ~~ THEN EXTERN ~frenJ~ frenn22
	END

	IF ~~ THEN BEGIN frvic01
	SAY @114
	IF ~~ THEN EXTERN ~frenJ~ frenn23
	END

	IF ~~ THEN BEGIN frvic02
	SAY @115
	IF ~~ THEN EXTERN ~frenJ~ frenn24
	END
END

ALTER_TRANS UDSILVER BEGIN 34 END BEGIN 0 END BEGIN "ACTION" ~SetGlobal("spoke2","LOCALS",1) SetGlobal("FrennedanUnterreich","GLOBAL",5)~ END


ALTER_TRANS UDIMRAE BEGIN 4 END BEGIN 0 END BEGIN "TRIGGER" ~!InParty("frendan")~ END
EXTEND_TOP UDIMRAE 4
     IF ~InParty("frendan") !Dead("frendan")~ THEN EXTERN ~UDSOLA01~ 1 //frsola00
END


APPEND ~UDSOLA01~
	IF ~~ THEN BEGIN frsola00
	SAY @116
	IF ~~ THEN GOTO 30
	END
END 


ALTER_TRANS UDPHAE01 BEGIN 95 END BEGIN 0 END BEGIN "ACTION" ~SetGlobal("FrennedanHandlung","GLOBAL",1)~ END

ALTER_TRANS c6ELHAN2 BEGIN 54 END BEGIN 0 END BEGIN "ACTION" ~ActionOverride("c6warsa1",ReallyForceSpell(Myself,DRYAD_TELEPORT)) ActionOverride("c6warsa2",ReallyForceSpell(Myself,DRYAD_TELEPORT)) SetGlobal("ElhanFinishedSpeaking","GLOBAL",1) SetGlobal("FrennedanUnterreich","GLOBAL",7)~ END
ALTER_TRANS c6ELHAN2 BEGIN 63 END BEGIN 0 END BEGIN "ACTION" ~ForceSpell("Viconia",FLASHY_1) ActionOverride("c6warsa1",ReallyForceSpell(Myself,DRYAD_TELEPORT)) ActionOverride("c6warsa2",ReallyForceSpell(Myself,DRYAD_TELEPORT)) SetGlobal("ElhanFinishedSpeaking","GLOBAL",1) SetGlobal("FrennedanUnterreich","GLOBAL",7)~ END
	

INTERJECT_COPY_TRANS EDWIN 0 einmi00
== frenJ IF ~InParty("frendan") !Dead("frendan")~ THEN
  @117
== EDWIN IF ~InParty("frendan") !Dead("frendan")~ THEN
  @118
END


INTERJECT_COPY_TRANS RIBALD 0 einmi01
== frenJ IF ~InParty("frendan") Global("FrennedanEinmisch01","GLOBAL",0) !Global("FMorpH","GLOBAL",1) !Dead("frendan")~ THEN
  @119
== RIBALD IF ~InParty("frendan") Global("FrennedanEinmisch01","GLOBAL",0) !Global("FMorph","GLOBAL",1) !Dead("frendan")~ THEN
  @120
== frenJ IF ~InParty("frendan") Global("FrennedanEinmisch01","GLOBAL",0) !Global("FMorph","GLOBAL",1) !Dead("frendan")~ THEN
  @121 DO ~SetGlobal("FrennedanEinmisch01","GLOBAL",1)~
END


INTERJECT_COPY_TRANS BODHI 1 einmi02
== frenJ IF ~InParty("frendan") !Global("FMorph","GLOBAL",1) !Dead("frendan")~ THEN
  @122
== BODHI IF ~InParty("frendan") !Global("FMorph","GLOBAL",1) !Dead("frendan")~ THEN
  @123
== frenJ IF ~InParty("frendan") !Global("FMorph","GLOBAL",1) !Dead("frendan")~ THEN
  @124
== BODHI IF ~InParty("frendan") !Global("FMorph","GLOBAL",1) !Dead("frendan")~ THEN
  @125 = @126
END


INTERJECT_COPY_TRANS BODHI 6 einmi03
== frenJ IF ~InParty("frendan") !Dead("frendan")~ THEN
  @127
END


INTERJECT_COPY_TRANS INSPECT 9 einmi04
== frenJ IF ~InParty("frendan") !Dead("frendan")~ THEN
  @128
END


INTERJECT_COPY_TRANS PPBODHI3 10 einmi05
== frenJ IF ~InParty("frendan") !Dead("frendan")~ THEN
  @129
END


INTERJECT_COPY_TRANS PPDILI 0 einmi06
== frenJ IF ~InParty("frendan") !Dead("frendan")~ THEN
  @130
== PPDILI IF ~InParty("frendan") !Dead("frendan")~ THEN
  @131
== frenJ IF ~InParty("frendan") !Dead("frendan")~ THEN
  @132
== PPDILI IF ~InParty("frendan") !Dead("frendan")~ THEN
  @133
END


INTERJECT_COPY_TRANS PPIRENI1 33 einmi07
== frenJ IF ~InParty("frendan") !Dead("frendan")~ THEN
  @134
END


INTERJECT_COPY_TRANS PPBODHI4 1 einmi08
== frenJ IF ~InParty("frendan") !Dead("frendan")~ THEN
  @135
== PPBODHI4 IF ~InParty("frendan") !Dead("frendan")~ THEN
  @136
END


INTERJECT_COPY_TRANS UDDOOR01 3 einmi09
== UDDOOR01 IF ~InParty("frendan") !Dead("frendan") !Name("Frennedan",LastTalkedToBy())~ THEN
  @137
== frenJ IF ~InParty("frendan") !Dead("frendan") !Name("Frennedan",LastTalkedToBy())~ THEN
  @138
== UDDOOR01 IF ~InParty("frendan") !Dead("frendan") !Name("Frennedan",LastTalkedToBy())~ THEN
  @139 = @140
END


APPEND PLAYER1
	IF ~~ THEN BEGIN Frbaum
	SAY @141
	IF ~~ THEN REPLY @142 EXTERN frenJ 62
	IF ~~ THEN REPLY @143 EXTERN frenJ 62
	END
END


EXTEND_BOTTOM PLAYER1 25
	IF ~IsValidForPartyDialog("frendan")~ THEN EXTERN frenJ 61
END


EXTEND_BOTTOM PLAYER1 33
	IF ~IsValidForPartyDialog("frendan")~ THEN EXTERN PLAYER1 Frbaum
END


INTERJECT_COPY_TRANS RERAK01 5 einmi10
== frenJ IF ~InParty("frendan") !Dead("frendan")~ THEN
  @144
== RERAK01 IF ~InParty("frendan") !Dead("frendan")~ THEN
  @145
== frenJ IF ~InParty("frendan") !Dead("frendan")~ THEN
  @146
== RERAK01 IF ~InParty("frendan") !Dead("frendan")~ THEN
  @147
END


INTERJECT_COPY_TRANS PPIRENI2 35 einmi11
== frenJ IF ~InParty("frendan") !Dead("frendan")~ THEN
  @148
== PPIRENI2 IF ~InParty("frendan") !Dead("frendan")~ THEN
  @149
END


INTERJECT_COPY_TRANS PLAYER1 5 einmi12
== frenJ IF ~InParty("frendan") !Dead("frendan")~ THEN
  @150
END


INTERJECT_COPY_TRANS C6BODHI 1 eimi13
== frenJ IF ~InParty("frendan") !Dead("frendan")~ THEN
  @151
== C6BODHI IF ~InParty("frendan") !Dead("frendan")~ THEN
  @152
END


INTERJECT_COPY_TRANS ARAN 3 einmi14
== frenJ IF ~InParty("frendan") !Dead("frendan")~ THEN
  @153
== ARAN IF ~InParty("frendan") !Dead("frendan")~ THEN
  @154
END


INTERJECT_COPY_TRANS PPARAN2 3 einmi15
== frenJ IF ~InParty("frendan") !Dead("frendan")~ THEN
  @129
== PPSAEM IF ~InParty("frendan") !Dead("frendan")~ THEN
  @155
END


INTERJECT_COPY_TRANS PPSAEM 6 einmi16
== frenJ IF ~InParty("frendan") !Dead("frendan")~ THEN
  @156
== PPSAEM IF ~InParty("frendan") !Dead("frendan")~ THEN
  @157
== frenJ IF ~InParty("frendan") !Dead("frendan")~ THEN
  @158
== PPSAEM IF ~InParty("frendan") !Dead("frendan")~ THEN
  @159
END


INTERJECT_COPY_TRANS SUJON 14 einmi17
== frenJ IF ~InParty("frendan") !Dead("frendan")~ THEN
  @160
END


INTERJECT_COPY_TRANS HELLJON 7 einmi18
== HELLJON IF ~InParty("frendan") !Dead("frendan")~ THEN
  @161
== frenJ IF ~InParty("frendan") !Dead("frendan")~ THEN
  @162
== HELLJON IF ~InParty("frendan") !Dead("frendan")~ THEN
  @163
END


ALTER_TRANS SUELLE2 BEGIN 18 END BEGIN 0 END BEGIN "TRIGGER" ~!IsValidForPartyDialogue("frendan") ReputationLT(Player1,10)~ END
ALTER_TRANS SUELLE2 BEGIN 18 END BEGIN 1 END BEGIN "TRIGGER" ~!IsValidForPartyDialogue("frendan") ReputationGT(Player1,9)~ END
EXTEND_TOP SUELLE2 18
		IF ~IsValidForPartyDialogue("frendan")~ THEN EXTERN ~frenJ~ 63
END
