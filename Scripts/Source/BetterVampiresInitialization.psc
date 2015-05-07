ScriptName BetterVampiresInitialization extends Quest conditional

Spell Property BetterVampiresMenuOptionsSpell Auto
Perk Property VampireFeed Auto
GlobalVariable Property VampireMenuSpell Auto
GlobalVariable Property VampireRank Auto
GlobalVariable Property VampireNoLevelNeededForRank Auto
GlobalVariable Property VampireStageGlobal Auto
GlobalVariable Property VampireRankProgression Auto
GlobalVariable Property PlayerIsVampire Auto
GlobalVariable Property GameDaysPassed Auto
GlobalVariable Property VampireLastTimeFed Auto
GlobalVariable Property BetterVampiresUseHotkey Auto
GlobalVariable Property BetterVampiresHotkey Auto

Quest Property BetterVampiresConfig Auto

EVENT OnInit()

	If VampireMenuSpell.GetValue() == 0
		Game.GetPlayer().AddSpell(BetterVampiresMenuOptionsSpell, abVerbose = False)
	ElseIf VampireMenuSpell.GetValue() == 10000
		Game.GetPlayer().RemoveSpell(BetterVampiresMenuOptionsSpell)		
	EndIf	
	
	If Game.GetPlayer().HasPerk(VampireFeed) == False
		Game.GetPlayer().AddPerk(VampireFeed)	
	EndIf
	
	If BetterVampiresUseHotkey.GetValue() == 0
		RegisterForSingleUpdate(0.25)
	EndIf		
	
EndEvent

Function EnableUpdate()

	If BetterVampiresUseHotkey.GetValue() == 0
		RegisterForSingleUpdate(0.25)
	EndIf

EndFunction

Event OnUpdate()

	Bool VampireStatusKeyPressed ; = False
	Int VampireStatusKey = BetterVampiresHotkey.GetValue() as Int ; 47 or V is default

	If VampireStatusKeyPressed != Input.IsKeyPressed(VampireStatusKey) && BetterVampiresUseHotkey.GetValue() == 0
	
		VampireStatusKeyPressed = !VampireStatusKeyPressed
		
		If VampireStatusKeyPressed

			If 	PlayerIsVampire.GetValue() == 1
			
				If VampireStageGlobal.GetValue() == 1
					Debug.Notification("Stage 1: Fully Fed Vampire")		
				ElseIf VampireStageGlobal.GetValue() == 2
					Debug.Notification("Stage 2: Stirring Blood Lust Vampire")	
				ElseIf VampireStageGlobal.GetValue() == 3
					Debug.Notification("Stage 3: Unbearable Blood Lust Vampire")
				ElseIf VampireStageGlobal.GetValue() == 4
					Debug.Notification("Stage 4: Blood Starved Vampire")
				Else
					Debug.Notification(" - Please Feed to Update - ")			
				EndIf
				
				If VampireStageGlobal.GetValue() == 1 || VampireStageGlobal.GetValue() == 2 || VampireStageGlobal.GetValue() == 3 || VampireStageGlobal.GetValue() == 4
					Float TimeElapsed = (GameDaysPassed.GetValue() - VampireLastTimeFed.GetValue())*24
					Int TimeElapsedHours = Math.Floor((GameDaysPassed.GetValue() - VampireLastTimeFed.GetValue())*24)		
					;Int TimeElapsedMinutes = Math.Floor((TimeElapsed - TimeElapsedHours)*60)
						Debug.Notification("You last fed your hunger "+TimeElapsedHours+" hours ago.")
						;_VampireLastTimeFedOID_T = AddTextOption(TimeElapsedHours+" hours and "+TimeElapsedMinutes+" minutes ago.", "")			
				EndIf		
			
			Else
			
				Debug.Notification("Skyrim does not have PlayerIsVampire = 1")
				Debug.Notification("You are not flagged as a Vampire")
			
			EndIf
					
			If 	PlayerIsVampire.GetValue() == 1		
			
				If VampireRank.GetValue() == 10000
					Debug.Notification("Rank 1: Vampiris Natus")
				ElseIf VampireRank.GetValue() == 20000
					Debug.Notification("Rank 2: Vampiris Apparitor")
				ElseIf VampireRank.GetValue() == 30000
					Debug.Notification("Rank 3: Vampiris Oppidanus")
				ElseIf VampireRank.GetValue() == 40000
					Debug.Notification("Rank 4: Vampiris Plebian")
				ElseIf VampireRank.GetValue() == 50000
					Debug.Notification("Rank 5: Vampiris Patrician")
				ElseIf VampireRank.GetValue() >= 60000
					Debug.Notification("Rank 6: Vampiris Praeceptor")
				Else
					Debug.Notification(" - Please Feed to Update - ")			
				EndIf
				
				Int NecksBittenForRank = Game.QueryStat("Necks Bitten")
				
				If VampireRankProgression.GetValue() == 0
					If VampireRank.GetValue() == 10000
						Int NecksBittenRemaining = 50 - NecksBittenForRank
						Int PlayerLevelsRemaining = 10 - Game.GetPlayer().GetLevel()
						If NecksBittenRemaining > 0
							Debug.Notification(NecksBittenRemaining+" more feedings required for next rank.")
						EndIf	
						If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
							Debug.Notification(PlayerLevelsRemaining+" more levels required for next rank.")
						EndIf					
					EndIf
					If VampireRank.GetValue() == 20000
						Int NecksBittenRemaining = 125 - NecksBittenForRank
						Int PlayerLevelsRemaining = 20 - Game.GetPlayer().GetLevel()
						If NecksBittenRemaining > 0
							Debug.Notification(NecksBittenRemaining+" more feedings required for next rank.")
						EndIf	
						If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
							Debug.Notification(PlayerLevelsRemaining+" more levels required for next rank.")
						EndIf					
					EndIf
					If VampireRank.GetValue() == 30000
						Int NecksBittenRemaining = 250 - NecksBittenForRank
						Int PlayerLevelsRemaining = 30 - Game.GetPlayer().GetLevel()
						If NecksBittenRemaining > 0
							Debug.Notification(NecksBittenRemaining+" more feedings required for next rank.")
						EndIf	
						If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
							Debug.Notification(PlayerLevelsRemaining+" more levels required for next rank.")
						EndIf					
					EndIf
					If VampireRank.GetValue() == 40000
						Int NecksBittenRemaining = 500 - NecksBittenForRank
						Int PlayerLevelsRemaining = 40 - Game.GetPlayer().GetLevel()
						If NecksBittenRemaining > 0
							Debug.Notification(NecksBittenRemaining+" more feedings required for next rank.")
						EndIf	
						If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
							Debug.Notification(PlayerLevelsRemaining+" more levels required for next rank.")
						EndIf					
					EndIf
					If VampireRank.GetValue() == 50000
						Int NecksBittenRemaining = 1000 - NecksBittenForRank
						Int PlayerLevelsRemaining = 50 - Game.GetPlayer().GetLevel()
						If NecksBittenRemaining > 0
							Debug.Notification(NecksBittenRemaining+" more feedings required for next rank.")
						EndIf	
						If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
							Debug.Notification(PlayerLevelsRemaining+" more levels required for next rank.")
						EndIf					
					EndIf
					If VampireRank.GetValue() >= 60000
						Debug.Notification("You are among the strongest of Vampires.")
					EndIf			
				EndIf
				
				If VampireRankProgression.GetValue() == 10000
					If VampireRank.GetValue() == 10000
						Int NecksBittenRemaining = 40 - NecksBittenForRank
						Int PlayerLevelsRemaining = 10 - Game.GetPlayer().GetLevel()
						If NecksBittenRemaining > 0
							Debug.Notification(NecksBittenRemaining+" more feedings required for next rank.")
						EndIf	
						If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
							Debug.Notification(PlayerLevelsRemaining+" more levels required for next rank.")
						EndIf					
					EndIf
					If VampireRank.GetValue() == 20000
						Int NecksBittenRemaining = 80 - NecksBittenForRank
						Int PlayerLevelsRemaining = 15 - Game.GetPlayer().GetLevel()
						If NecksBittenRemaining > 0
							Debug.Notification(NecksBittenRemaining+" more feedings required for next rank.")
						EndIf	
						If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
							Debug.Notification(PlayerLevelsRemaining+" more levels required for next rank.")
						EndIf					
					EndIf
					If VampireRank.GetValue() == 30000
						Int NecksBittenRemaining = 140 - NecksBittenForRank
						Int PlayerLevelsRemaining = 20 - Game.GetPlayer().GetLevel()
						If NecksBittenRemaining > 0
							Debug.Notification(NecksBittenRemaining+" more feedings required for next rank.")
						EndIf	
						If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
							Debug.Notification(PlayerLevelsRemaining+" more levels required for next rank.")
						EndIf					
					EndIf
					If VampireRank.GetValue() == 40000
						Int NecksBittenRemaining = 240 - NecksBittenForRank
						Int PlayerLevelsRemaining = 25 - Game.GetPlayer().GetLevel()
						If NecksBittenRemaining > 0
							Debug.Notification(NecksBittenRemaining+" more feedings required for next rank.")
						EndIf	
						If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
							Debug.Notification(PlayerLevelsRemaining+" more levels required for next rank.")
						EndIf					
					EndIf
					If VampireRank.GetValue() == 50000
						Int NecksBittenRemaining = 400 - NecksBittenForRank
						Int PlayerLevelsRemaining = 30 - Game.GetPlayer().GetLevel()
						If NecksBittenRemaining > 0
							Debug.Notification(NecksBittenRemaining+" more feedings required for next rank.")
						EndIf	
						If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
							Debug.Notification(PlayerLevelsRemaining+" more levels required for next rank.")
						EndIf					
					EndIf
					If VampireRank.GetValue() >= 60000
						Debug.Notification("You are among the strongest of Vampires.")
					EndIf		
				EndIf		
		
			EndIf
			
		EndIf
	
	EndIf
	
	If BetterVampiresUseHotkey.GetValue() == 0
		RegisterForSingleUpdate(0.25)
	EndIf	
	
EndEvent
