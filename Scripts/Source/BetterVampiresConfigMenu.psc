scriptname BetterVampiresConfigMenu extends SKI_ConfigBase

Race Property DLC1VampireBeastRace Auto

Actor Property Player Auto

Faction Property VampirePCFaction  Auto  
Faction Property VampirePCFamily  Auto 
Faction Property DummyFaction Auto

GlobalVariable Property GameDaysPassed Auto
GlobalVariable Property VampireSunEffects Auto 
GlobalVariable Property VampireSunDamage Auto 
GlobalVariable Property VampireSunDamageSpecial Auto 
GlobalVariable Property VampireProgression Auto 
GlobalVariable Property CreateVampire Auto 
GlobalVariable Property VampireStageHated Auto
GlobalVariable Property VampireHunters Auto
GlobalVariable Property VampireRank Auto
GlobalVariable Property VampireRankProgression Auto
GlobalVariable Property VampireUpdateGameTime Auto
GlobalVariable Property VeilOfFearUseCount Auto
GlobalVariable Property VeilOfFearResetCounter Auto
GlobalVariable Property VampireStageGlobal Auto
GlobalVariable Property VampireNightEye Auto
GlobalVariable Property VampireCustomRace Auto
GlobalVariable Property VampireRevealAuras Auto
GlobalVariable Property VampireFeedOffDead Auto
GlobalVariable Property VampireDynamicStages Auto
GlobalVariable Property RECASTVampireBlink Auto
GlobalVariable Property RECASTVampireMistwalker Auto
GlobalVariable Property RECASTVampireUnholyGrasp Auto
GlobalVariable Property VampireLightLevel Auto
GlobalVariable Property VampireLightLevelPenalties Auto
GlobalVariable Property VampireLightLevelRegen Auto
GlobalVariable Property VampireVictimAppearance Auto
GlobalVariable Property VampireVictimSkills Auto

Globalvariable Property VampireVampireDrain Auto
Globalvariable Property VampireVampiresServant Auto
Globalvariable Property VampireStrength Auto
Globalvariable Property VampireSunDamage2 Auto	
Globalvariable Property VampireFearsEmbrace Auto
Globalvariable Property VampireDomination Auto
Globalvariable Property VampireVampiricMindBlast Auto
Globalvariable Property VampireDeflectLightandShadow Auto	
Globalvariable Property VampireMortalsMask Auto
GlobalVariable Property VampireMortalsMaskActive Auto
Globalvariable Property VampireRevealAuras2 Auto
Globalvariable Property VampirePraestareSanguinare Auto
Globalvariable Property VampireFrostCloud Auto	
Globalvariable Property VampireIceFlesh Auto		
Globalvariable Property VampireCallCreature Auto		
Globalvariable Property VampireUnholyGrasp Auto			
Globalvariable Property VampireSanguinemReddere Auto		
Globalvariable Property VampireCombatBonus Auto	
Globalvariable Property VampireInvokeFog Auto		
Globalvariable Property VampireMistwalker Auto			
Globalvariable Property VampireBlinkAttack Auto			
Globalvariable Property VampireSidestepReflexes Auto	
Globalvariable Property VampireFallingDamageReduction2 Auto	
GlobalVariable Property VampireNoLevelNeededForRank Auto
Globalvariable Property VampireFoodPotionHealing Auto
GlobalVariable Property VampireNoFoodVar Auto
GlobalVariable Property VampireNoPotionsVar Auto
GlobalVariable Property VampireNoHealingVar Auto
GlobalVariable Property VampireBottledBlood Auto
GlobalVariable Property VampireExtractBlood Auto
GlobalVariable Property VampireLordFearEffect Auto
GlobalVariable Property VampireStatusMessages Auto
GlobalVariable Property VampirePraestareRemoveAllFactions Auto
GlobalVariable Property VampireExtractingBlood Auto
GlobalVariable Property VampireNoRedScreen Auto
GlobalVariable Property VampireMenuSpell Auto
GlobalVariable Property VampireJumpingBonus Auto
GlobalVariable Property VampireSpeed Auto
GlobalVariable Property VampireSneakFeed Auto
GlobalVariable Property VampireNecksBittenDiscovered Auto
GlobalVariable Property VampireSeduction Auto
GlobalVariable Property VampireTollereSanguinare Auto
GlobalVariable Property VampireForceFeed Auto
GlobalVariable Property VampireNoDrowning Auto
GlobalVariable Property VampireTurnToAshes Auto
GlobalVariable Property VampireLastTimeFed Auto
GlobalVariable Property VampireHuntersRevertVL Auto
GlobalVariable Property VampireCannotTurnVL Auto
GlobalVariable Property VampireBloodPotionSatiation Auto
GlobalVariable Property UsingBetterVampiresScripts Auto
GlobalVariable Property BetterVampiresUseHotkey Auto
GlobalVariable Property BetterVampiresHotkey Auto
GlobalVariable Property VampireRankAbilitiesSatiation Auto
GlobalVariable Property VampireFireWeakness Auto
GlobalVariable Property VampireFrostResistance Auto
GlobalVariable Property VampireAmaranthFeed Auto
GlobalVariable Property VampirePraeceptorPerks Auto

GlobalVariable Property VampireDawnguardInstalled Auto
Actor Property DLC1Durak Auto
Actor Property VigilantCarcette Auto
Actor Property DLC1Harkon Auto

Perk Property VampireFeedCustomRace2 Auto
Perk Property VampireFallingDamageReduction Auto
Perk Property VampireQuickReflexesPerk01 Auto
Perk Property VampireQuickReflexesPerk02 Auto
Perk Property VampireQuickReflexesPerk03 Auto
Perk Property VampireQuickReflexesPerk04 Auto
Perk Property VampireQuickReflexesPerk05 Auto
Perk Property VampireFeed Auto
Perk Property VampireNoFoodPerk Auto
Perk Property VampireNoPotionPerk Auto
Perk Property VampireNoHealingPerk Auto
Perk Property VampireExtractBloodPotions Auto
Perk Property VampireAmaranth Auto
 
GlobalVariable Property PlayerIsVampire Auto
Quest Property PlayerVampireQuest Auto
Quest Property BetterVampiresConfig Auto
BetterVampiresInitialization Property BetterVampiresInitializationQuest  Auto  
Spell Property WerewolfImmunity Auto
Spell Property DiseaseSanguinareVampiris Auto
MagicEffect Property DisDamageHealthVampire Auto
Spell Property DiseaseAtaxia auto
Spell Property DiseaseBoneBreakFever Auto
Spell Property DiseaseBrainRot Auto
Spell Property DiseaseRattles Auto
Spell Property DiseaseRockjoint auto
Spell Property DiseaseWitbane Auto

Keyword Property ActorTypeUndead Auto
Keyword Property Vampire Auto

; PRIVATE VARIABLES -------------------------------------------------------------------------------

;OIDs (T:Text B:Toggle S:Slider M:Menu, C:Color, K:Key)

Int _PlayerIsVampireOID_T
Int _PlayerHasUndeadKeywordOID_T
Int _PlayerHasVampireKeywordOID_T
Int _UsingBetterVampiresScriptsOID_T
Int _LightLevelOID_T
Int _PlayerIsInInteriorOID_T
Int _VampireStageOID_T
Int _VampireLastTimeFedOID_T
Int _VampireRankOID_T
Int _VampireStatisticsOID_T
Int _VampireFactionsOID_T

Int _StageProgressionOID_T
Int _StageTimingOID_T
Int _StageHatedOID_T
Int _RankProgressionOID_T
Int _RankAbilitiesSatiationOID_T
Int _SunEffectsOID_T
Int _SunDamageOID_T
Int _SunDamageSpecialOID_T
Int _FeedOffDeadOID_T
Int _SneakFeedOID_T
Int _ForceFeedOID_T
Int _HuntersOID_T
Int _LightLevelPenaltiesOID_T
Int _LightLevelRegenOID_T
Int _VictimAppearanceOID_T
Int _VictimSkillsOID_T
Int _FoodPotionHealingOID_T
Int _ExtractBloodOID_T
Int _VampireAmaranthFeedOID_T
Int _VampirePraeceptorPerksOID_T
Int _ResetBetterVampiresOID_T
Int _CustomRaceOID_T
Int _ResetSanguinareVampirisOID_T
Int _BetterVampiresCleaningStepsOID_T

;Spells
Int _VampireMenuSpellOID_B
Int _VampireDrainOID_B
Int _VampiresServantOID_B
Int _VampireFearsEmbraceOID_B
Int _VampireDominationOID_B
Int _VampireVampiricMindBlastOID_B
Int _VampireDeflectLightandShadowOID_B
Int _VampireRevealAuras2OID_B
Int _VampireFrostCloudOID_B
Int _VampireIceFleshOID_B
Int _VampireMortalsMaskOID_B
Int _VampireTollereSanguinareOID_B
;Abilities
Int _VampireSeductionOID_B
Int _VampirePraestareSanguinareOID_B
Int _VampireCallCreatureOID_B
Int _VampireUnholyGraspOID_B
Int _VampireSanguinemReddereOID_B
Int _VampireInvokeFogOID_B
Int _VampireMistwalkerOID_B
Int _VampireBlinkAttackOID_B
Int _VampireSidestepReflexesOID_B
Int _VampireFallingDamageReduction2OID_B
Int _VampireJumpingBonusOID_B
Int _VampireSpeedOID_B
Int _VampireNoDrowningOID_B
;Gameplay
Int _BetterVampiresUseHotkeyOID_B
Int _BetterVampiresHotkeyOID_K
Int _VampireStrengthOID_B
Int _VampireFireWeaknessOID_B
Int _VampireFrostResistanceOID_B
Int _VampireSunDamage2OID_B
Int _VampireCombatBonusOID_B
Int _VampireLordFearEffectOID_B
Int _VampireStatusMessagesOID_B
Int _VampireNoLevelNeededForRankOID_B
Int _VampireNoRedScreenOID_B
Int _VampirePraestareRemoveAllFactionsOID_B
Int _VampireTurnToAshesOID_B
Int _VampireHuntersRevertVLOID_B
Int _VampireBloodPotionSatiationOID_B
Int _VampireMortalsMaskVisualsOID_B

;Spells
Bool _VampireMenuSpellState
Bool _VampireDrainState
Bool _VampiresServantState
Bool _VampireFearsEmbraceState
Bool _VampireDominationState
Bool _VampireVampiricMindBlastState
Bool _VampireDeflectLightandShadowState
Bool _VampireRevealAuras2State
Bool _VampireFrostCloudState
Bool _VampireIceFleshState
Bool _VampireMortalsMaskState
Bool _VampireTollereSanguinareState
;Abilities
Bool _VampireSeductionState
Bool _VampirePraestareSanguinareState
Bool _VampireCallCreatureState
Bool _VampireUnholyGraspState
Bool _VampireSanguinemReddereState
Bool _VampireInvokeFogState
Bool _VampireMistwalkerState
Bool _VampireBlinkAttackState
Bool _VampireSidestepReflexesState
Bool _VampireFallingDamageReduction2State
Bool _VampireJumpingBonusState
Bool _VampireSpeedState
Bool _VampireNoDrowningState
;Gameplay
Bool _BetterVampiresUseHotkeyState
Bool _VampireStrengthState
Bool _VampireFireWeaknessState
Bool _VampireFrostResistanceState
Bool _VampireSunDamage2State
Bool _VampireCombatBonusState
Bool _VampireLordFearEffectState
Bool _VampireStatusMessagesState
Bool _VampireNoLevelNeededForRankState
Bool _VampireNoRedScreenState
Bool _VampirePraestareRemoveAllFactionsState
Bool _VampireTurnToAshesState
Bool _VampireHuntersRevertVLState
Bool _VampireBloodPotionSatiationState
Bool _VampireMortalsMaskVisualsState


; INITIALIZATION ----------------------------------------------------------------------------------

; @overrides SKI_ConfigBase
Event OnConfigInit()

	Pages = new string[7]
	Pages[0] = "STATUS"	
	Pages[1] = "General Options"
	Pages[2] = "Miscellaneous Options"
	Pages[3] = "Troubleshooting and Cleanup"
	Pages[4] = "Rank Progression Chart"
	Pages[5] = "Normal Progression Chart"
	Pages[6] = "Reverse Progression Chart"	
	
EndEvent

; -------------------------------------------------------

; @implements SKI_ConfigBase
Event OnPageReset(string a_page)

	; Load custom logo in DDS format
	If (a_page == "")
		; Image size 256x256
		;X offset = 376 - (height / 2) = 258
		;Y offset = 223 - (width / 2) = 95
		LoadCustomContent("SkyUI/BV/BetterVampires.dds", 154, 60)
		Return
	Else
		UnloadCustomContent()
	EndIf

	
;---------------	
	

	If (a_page == "STATUS")
		SetCursorFillMode(TOP_TO_BOTTOM)
		AddHeaderOption("Game Settings")
		If 	PlayerIsVampire.GetValue() == 1
			_PlayerIsVampireOID_T = AddTextOption("Flagged as a Vampire: PlayerIsVampire=1", "")
		ElseIf PlayerIsVampire.GetValue() == 0
			_PlayerIsVampireOID_T = AddTextOption("NOT flagged as a Vampire: PlayerIsVampire=0", "")		
		EndIf

		If Game.GetPlayer().HasKeyword(ActorTypeUndead)
			_PlayerHasUndeadKeywordOID_T = AddTextOption("Have the keyword: ActorTypeUndead", "")
		Else
			_PlayerHasUndeadKeywordOID_T = AddTextOption("DON'T have the keyword: ActorTypeUndead", "")
		EndIf
		
		If Game.GetPlayer().HasKeyword(Vampire)
			_PlayerHasVampireKeywordOID_T = AddTextOption("Have the keyword: Vampire", "")
		Else
			_PlayerHasVampireKeywordOID_T = AddTextOption("DON'T have the keyword: Vampire", "")
		EndIf
		
		If 	UsingBetterVampiresScripts.GetValue() == 1
			_UsingBetterVampiresScriptsOID_T = AddTextOption("BV Scripts: Monitoring... (OnUpdateGameTime)", "")
		ElseIf 	UsingBetterVampiresScripts.GetValue() == 2
			_UsingBetterVampiresScriptsOID_T = AddTextOption("BV Scripts: Transformed (VampireChange)", "")
		ElseIf 	UsingBetterVampiresScripts.GetValue() == 3
			_UsingBetterVampiresScriptsOID_T = AddTextOption("BV Scripts: Just Fed (VampireFeed)", "")
		ElseIf 	UsingBetterVampiresScripts.GetValue() == 4
			_UsingBetterVampiresScriptsOID_T = AddTextOption("BV Scripts: Stage/Rank Set (VampireProgression)", "")
		Else
			_UsingBetterVampiresScriptsOID_T = AddTextOption("NOT using Better Vampires Scripts", "")		
		EndIf		
		
		SetCursorPosition(1)			
		AddHeaderOption("Light Level")
		If Game.GetPlayer().IsInInterior()
			_PlayerIsInInteriorOID_T = AddTextOption("You are in an interior area.", "")
			Int CurrentLightLevel = Math.Floor(Game.GetPlayer().GetLightLevel())
			_LightLevelOID_T = AddTextOption("Current Light Level is: "+CurrentLightLevel, "")			
		Else
			_PlayerIsInInteriorOID_T = AddTextOption("You are in an exterior area.", "")
			Int CurrentLightLevel = Math.Floor(Game.GetPlayer().GetLightLevel())
			If CurrentLightLevel > 60
				_LightLevelOID_T = AddTextOption("WARNING! Current Light Level is: "+CurrentLightLevel, "")
			Else
				_LightLevelOID_T = AddTextOption("Current Light Level is: "+CurrentLightLevel, "")	
			EndIf
		EndIf

		
		SetCursorPosition(12)			
		AddHeaderOption("Satiation")
		If 	PlayerIsVampire.GetValue() == 1
			If VampireStageGlobal.GetValue() == 1
				_VampireStageOID_T = AddTextOption("Stage 1: Fully Fed Vampire", "")		
			ElseIf VampireStageGlobal.GetValue() == 2
				_VampireStageOID_T = AddTextOption("Stage 2: Stirring Blood Lust Vampire", "")	
			ElseIf VampireStageGlobal.GetValue() == 3
				_VampireStageOID_T = AddTextOption("Stage 3: Unbearable Blood Lust Vampire", "")
			ElseIf VampireStageGlobal.GetValue() == 4
				_VampireStageOID_T = AddTextOption("Stage 4: Blood Starved Vampire", "")
			Else
				_VampireStageOID_T = AddTextOption(" - Please Feed to Update - ", "")			
			EndIf
			If VampireStageGlobal.GetValue() == 1 || VampireStageGlobal.GetValue() == 2 || VampireStageGlobal.GetValue() == 3 || VampireStageGlobal.GetValue() == 4
				Float TimeElapsed = (GameDaysPassed.GetValue() - VampireLastTimeFed.GetValue())*24
				Int TimeElapsedHours = Math.Floor((GameDaysPassed.GetValue() - VampireLastTimeFed.GetValue())*24)		
				;Int TimeElapsedMinutes = Math.Floor((TimeElapsed - TimeElapsedHours)*60)
					_VampireLastTimeFedOID_T = AddTextOption("You last fed your hunger "+TimeElapsedHours+" hours ago.", "")
					;_VampireLastTimeFedOID_T = AddTextOption(TimeElapsedHours+" hours and "+TimeElapsedMinutes+" minutes ago.", "")			
			EndIf		
		EndIf
		
		
		SetCursorPosition(13)			
		AddHeaderOption("Vampire Rank")
		If 	PlayerIsVampire.GetValue() == 1		
			If VampireRank.GetValue() == 10000
				_VampireRankOID_T = AddTextOption("Rank 1: Vampiris Natus", "")
			ElseIf VampireRank.GetValue() == 20000
				_VampireRankOID_T = AddTextOption("Rank 2: Vampiris Apparitor", "")
			ElseIf VampireRank.GetValue() == 30000
				_VampireRankOID_T = AddTextOption("Rank 3: Vampiris Oppidanus", "")
			ElseIf VampireRank.GetValue() == 40000
				_VampireRankOID_T = AddTextOption("Rank 4: Vampiris Plebian", "")
			ElseIf VampireRank.GetValue() == 50000
				_VampireRankOID_T = AddTextOption("Rank 5: Vampiris Patrician", "")
			ElseIf VampireRank.GetValue() >= 60000
				_VampireRankOID_T = AddTextOption("Rank 6: Vampiris Praeceptor", "")
			Else
				_VampireRankOID_T = AddTextOption(" - Please Feed to Update - ", "")			
			EndIf
			
			Int NecksBittenForRank = Game.QueryStat("Necks Bitten")
			
			If VampireRankProgression.GetValue() == 0
				If VampireRank.GetValue() == 10000
					Int NecksBittenRemaining = 50 - NecksBittenForRank
					Int PlayerLevelsRemaining = 10 - Game.GetPlayer().GetLevel()
					If NecksBittenRemaining > 0
						_VampireRankOID_T = AddTextOption(NecksBittenRemaining+" more feedings required for next rank.", "")
					EndIf	
					If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
						_VampireRankOID_T = AddTextOption(PlayerLevelsRemaining+" more levels required for next rank.", "")
					EndIf					
				EndIf
				If VampireRank.GetValue() == 20000
					Int NecksBittenRemaining = 125 - NecksBittenForRank
					Int PlayerLevelsRemaining = 20 - Game.GetPlayer().GetLevel()
					If NecksBittenRemaining > 0
						_VampireRankOID_T = AddTextOption(NecksBittenRemaining+" more feedings required for next rank.", "")
					EndIf	
					If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
						_VampireRankOID_T = AddTextOption(PlayerLevelsRemaining+" more levels required for next rank.", "")
					EndIf					
				EndIf
				If VampireRank.GetValue() == 30000
					Int NecksBittenRemaining = 250 - NecksBittenForRank
					Int PlayerLevelsRemaining = 30 - Game.GetPlayer().GetLevel()
					If NecksBittenRemaining > 0
						_VampireRankOID_T = AddTextOption(NecksBittenRemaining+" more feedings required for next rank.", "")
					EndIf	
					If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
						_VampireRankOID_T = AddTextOption(PlayerLevelsRemaining+" more levels required for next rank.", "")
					EndIf					
				EndIf
				If VampireRank.GetValue() == 40000
					Int NecksBittenRemaining = 500 - NecksBittenForRank
					Int PlayerLevelsRemaining = 40 - Game.GetPlayer().GetLevel()
					If NecksBittenRemaining > 0
						_VampireRankOID_T = AddTextOption(NecksBittenRemaining+" more feedings required for next rank.", "")
					EndIf	
					If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
						_VampireRankOID_T = AddTextOption(PlayerLevelsRemaining+" more levels required for next rank.", "")
					EndIf					
				EndIf
				If VampireRank.GetValue() == 50000
					Int NecksBittenRemaining = 1000 - NecksBittenForRank
					Int PlayerLevelsRemaining = 50 - Game.GetPlayer().GetLevel()
					If NecksBittenRemaining > 0
						_VampireRankOID_T = AddTextOption(NecksBittenRemaining+" more feedings required for next rank.", "")
					EndIf	
					If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
						_VampireRankOID_T = AddTextOption(PlayerLevelsRemaining+" more levels required for next rank.", "")
					EndIf					
				EndIf
				If VampireRank.GetValue() >= 60000
					_VampireRankOID_T = AddTextOption("You are among the strongest of Vampires.", "")
				EndIf			
			EndIf
			
			If VampireRankProgression.GetValue() == 10000
				If VampireRank.GetValue() == 10000
					Int NecksBittenRemaining = 40 - NecksBittenForRank
					Int PlayerLevelsRemaining = 10 - Game.GetPlayer().GetLevel()
					If NecksBittenRemaining > 0
						_VampireRankOID_T = AddTextOption(NecksBittenRemaining+" more feedings required for next rank.", "")
					EndIf	
					If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
						_VampireRankOID_T = AddTextOption(PlayerLevelsRemaining+" more levels required for next rank.", "")
					EndIf					
				EndIf
				If VampireRank.GetValue() == 20000
					Int NecksBittenRemaining = 80 - NecksBittenForRank
					Int PlayerLevelsRemaining = 15 - Game.GetPlayer().GetLevel()
					If NecksBittenRemaining > 0
						_VampireRankOID_T = AddTextOption(NecksBittenRemaining+" more feedings required for next rank.", "")
					EndIf	
					If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
						_VampireRankOID_T = AddTextOption(PlayerLevelsRemaining+" more levels required for next rank.", "")
					EndIf					
				EndIf
				If VampireRank.GetValue() == 30000
					Int NecksBittenRemaining = 140 - NecksBittenForRank
					Int PlayerLevelsRemaining = 20 - Game.GetPlayer().GetLevel()
					If NecksBittenRemaining > 0
						_VampireRankOID_T = AddTextOption(NecksBittenRemaining+" more feedings required for next rank.", "")
					EndIf	
					If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
						_VampireRankOID_T = AddTextOption(PlayerLevelsRemaining+" more levels required for next rank.", "")
					EndIf					
				EndIf
				If VampireRank.GetValue() == 40000
					Int NecksBittenRemaining = 240 - NecksBittenForRank
					Int PlayerLevelsRemaining = 25 - Game.GetPlayer().GetLevel()
					If NecksBittenRemaining > 0
						_VampireRankOID_T = AddTextOption(NecksBittenRemaining+" more feedings required for next rank.", "")
					EndIf	
					If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
						_VampireRankOID_T = AddTextOption(PlayerLevelsRemaining+" more levels required for next rank.", "")
					EndIf					
				EndIf
				If VampireRank.GetValue() == 50000
					Int NecksBittenRemaining = 400 - NecksBittenForRank
					Int PlayerLevelsRemaining = 30 - Game.GetPlayer().GetLevel()
					If NecksBittenRemaining > 0
						_VampireRankOID_T = AddTextOption(NecksBittenRemaining+" more feedings required for next rank.", "")
					EndIf	
					If PlayerLevelsRemaining > 0 && VampireNoLevelNeededForRank.GetValue() == 0
						_VampireRankOID_T = AddTextOption(PlayerLevelsRemaining+" more levels required for next rank.", "")
					EndIf					
				EndIf
				If VampireRank.GetValue() >= 60000
					_VampireRankOID_T = AddTextOption("You are among the strongest of Vampires.", "")
				EndIf		
			EndIf
			
		EndIf	
		
		SetCursorPosition(20)			
		AddHeaderOption("Vampire Statistics")
			If Game.GetPlayer().GetAV("WeaponSpeedMult") == 0
				_VampireStatisticsOID_T = AddTextOption("Weapon Speed = 100%", "")
			Else	
				_VampireStatisticsOID_T = AddTextOption("Weapon Speed = "+Math.Floor(Game.GetPlayer().GetAV("WeaponSpeedMult")*100)+"%", "")
			EndIf
			SetCursorPosition(23)
			_VampireStatisticsOID_T = AddTextOption("Movement Speed = "+Math.Floor(Game.GetPlayer().GetAV("SpeedMult"))+"%", "")
			SetCursorPosition(24)
			_VampireStatisticsOID_T = AddTextOption("Jump Height = "+Math.Floor(((Game.GetGameSettingFloat("fJumpHeightMin"))/76)*100)+"%", "")			
			SetCursorPosition(25)
			If Game.GetPlayer().GetAV("HealRateMult") < 0
				_VampireStatisticsOID_T = AddTextOption("Health Regen = 0%", "")
			Else
				_VampireStatisticsOID_T = AddTextOption("Health Regen = "+Math.Floor(Game.GetPlayer().GetAV("HealRateMult"))+"%", "")
			EndIf
			SetCursorPosition(26)
			If Game.GetPlayer().GetAV("StaminaRateMult") < 0
				_VampireStatisticsOID_T = AddTextOption("Stamina Regen = 0%", "")
			Else
				_VampireStatisticsOID_T = AddTextOption("Stamina Regen = "+Math.Floor(Game.GetPlayer().GetAV("StaminaRateMult"))+"%", "")
			EndIf	
			SetCursorPosition(27)
			If Game.GetPlayer().GetAV("MagickaRateMult") < 0
				_VampireStatisticsOID_T = AddTextOption("Magicka Regen = 0%", "")			
			Else
			_VampireStatisticsOID_T = AddTextOption("Magicka Regen = "+Math.Floor(Game.GetPlayer().GetAV("MagickaRateMult"))+"%", "")
			EndIf
			
		SetCursorPosition(30)			
		AddHeaderOption("Faction Relations")
			If Game.GetPlayer().IsInFaction(VampirePCFaction)
				_VampireFactionsOID_T = AddTextOption("You are in the HATED VampirePCFaction", "")
			Else
				_VampireFactionsOID_T = AddTextOption("You are NOT in the hated VampirePCFaction", "")
			EndIf
			SetCursorPosition(33)
			If Game.GetPlayer().GetFactionReaction(VigilantCarcette) == 0
				_VampireFactionsOID_T = AddTextOption("The Vigilants are neutral toward you", "")
			ElseIf Game.GetPlayer().GetFactionReaction(VigilantCarcette) == 1
				_VampireFactionsOID_T = AddTextOption("The Vigilants are your enemies", "")
			ElseIf Game.GetPlayer().GetFactionReaction(VigilantCarcette) == 2
				_VampireFactionsOID_T = AddTextOption("The Vigilants are your allies", "")
			ElseIf Game.GetPlayer().GetFactionReaction(VigilantCarcette) == 3
				_VampireFactionsOID_T = AddTextOption("The Vigilants are your friends", "")					
			EndIf
			SetCursorPosition(34)			
			If VampireDawnguardInstalled.GetValue() == 10000	
				If Game.GetPlayer().GetFactionReaction(DLC1Harkon) == 0
					_VampireFactionsOID_T = AddTextOption("The Vampire Lords are neutral toward you", "")
				ElseIf Game.GetPlayer().GetFactionReaction(DLC1Harkon) == 1
					_VampireFactionsOID_T = AddTextOption("The Vampire Lords are your enemies", "")
				ElseIf Game.GetPlayer().GetFactionReaction(DLC1Harkon) == 2
					_VampireFactionsOID_T = AddTextOption("The Vampire Lords are your allies", "")
				ElseIf Game.GetPlayer().GetFactionReaction(DLC1Harkon) == 3
					_VampireFactionsOID_T = AddTextOption("The Vampire Lords are your friends", "")					
				EndIf
			EndIf
			SetCursorPosition(35)
			If VampireDawnguardInstalled.GetValue() == 10000	
				If Game.GetPlayer().GetFactionReaction(DLC1Durak) == 0
					_VampireFactionsOID_T = AddTextOption("The Dawnguard are neutral toward you", "")
				ElseIf Game.GetPlayer().GetFactionReaction(DLC1Durak) == 1
					_VampireFactionsOID_T = AddTextOption("The Dawnguard are your enemies", "")
				ElseIf Game.GetPlayer().GetFactionReaction(DLC1Durak) == 2
					_VampireFactionsOID_T = AddTextOption("The Dawnguard are your allies", "")
				ElseIf Game.GetPlayer().GetFactionReaction(DLC1Durak) == 3
					_VampireFactionsOID_T = AddTextOption("The Dawnguard are your friends", "")					
				EndIf
			EndIf				
			
	EndIf		
			
	If (a_page == "General Options")
	
		SetCursorFillMode(TOP_TO_BOTTOM)
		
		AddHeaderOption("Stage Progression")
		If VampireProgression.GetValue() == 0
			_StageProgressionOID_T = AddTextOption("", "Normal Progression")
		ElseIf VampireProgression.GetValue() == 10000
			_StageProgressionOID_T = AddTextOption("", "Reverse Progression")
		EndIf
		
		SetCursorPosition(1)		
		AddHeaderOption("Dynamic Stages")
		If VampireDynamicStages.GetValue() == 0
			_StageTimingOID_T = AddTextOption("", "Every 24 hours")
		ElseIf VampireDynamicStages.GetValue() == 10000
			_StageTimingOID_T = AddTextOption("", "Stages speed up")
		ElseIf VampireDynamicStages.GetValue() == 20000
			_StageTimingOID_T = AddTextOption("", "Only 2 Stages")			
		EndIf
		
		SetCursorPosition(4)		
		AddHeaderOption("Stage Hated")
		If VampireStageHated.GetValue() == 0
			_StageHatedOID_T = AddTextOption("", "Never Hated")
		ElseIf VampireStageHated.GetValue() == 10000
			_StageHatedOID_T = AddTextOption("", "Stage 4 Hated")
		ElseIf VampireStageHated.GetValue() == 20000
			_StageHatedOID_T = AddTextOption("", "Stage 1 Hated")			
		EndIf
		
		SetCursorPosition(5)		
		AddHeaderOption("Rank Progression")
		If VampireRankProgression.GetValue() == 0
			_RankProgressionOID_T = AddTextOption("", "Normal Ranks")
		ElseIf VampireRankProgression.GetValue() == 10000
			_RankProgressionOID_T = AddTextOption("", "Easier Ranks")
		EndIf		
		
		SetCursorPosition(8)		
		AddHeaderOption("Stage and Rank Connection")
		If VampireRankAbilitiesSatiation.GetValue() == 0
			_RankAbilitiesSatiationOID_T = AddTextOption("", "Abilities Not Affected by Hunger")
		ElseIf VampireRankAbilitiesSatiation.GetValue() == 10000
			_RankAbilitiesSatiationOID_T = AddTextOption("", "Hunger Affects Abilities")
		EndIf		
		
		SetCursorPosition(9)		
		AddHeaderOption("Sun Visual Effects")
		If VampireSunEffects.GetValue() == 0
			_SunEffectsOID_T = AddTextOption("", "Off")
		ElseIf VampireSunEffects.GetValue() == 10000
			_SunEffectsOID_T = AddTextOption("", "On")
		EndIf	

		SetCursorPosition(12)		
		AddHeaderOption("Sun Damage")
		If VampireSunDamage.GetValue() == 0
			_SunDamageOID_T = AddTextOption("", "No Damage")
		ElseIf VampireSunDamage.GetValue() == 10000
			_SunDamageOID_T = AddTextOption("", "Slight Damage")
		ElseIf VampireSunDamage.GetValue() == 20000
			_SunDamageOID_T = AddTextOption("", "Hardcore Damage")			
		EndIf

		SetCursorPosition(13)		
		AddHeaderOption("Specialized Sun Damage")
		If VampireSunDamage.GetValue() == 0
			_SunDamageSpecialOID_T = AddTextOption("", "No Specialized Damage")
		EndIf
		If VampireSunDamage.GetValue() > 0
			If VampireSunDamageSpecial.GetValue() == 0
				_SunDamageSpecialOID_T = AddTextOption("", "Damage at Every Stage")
			ElseIf VampireSunDamageSpecial.GetValue() == 10000
				_SunDamageSpecialOID_T = AddTextOption("", "Exempt at Stage 1")
			ElseIf VampireSunDamageSpecial.GetValue() == 20000
				_SunDamageSpecialOID_T = AddTextOption("", "Only at Stage 4")			
			EndIf
		EndIf
		
		SetCursorPosition(16)		
		AddHeaderOption("Corpse Feeding")
		If VampireFeedOffDead.GetValue() == 0
			_FeedOffDeadOID_T = AddTextOption("", "Basic Feeding")
		ElseIf VampireFeedOffDead.GetValue() == 10000
			_FeedOffDeadOID_T = AddTextOption("", "Advanced Feeding")
		ElseIf VampireFeedOffDead.GetValue() == 20000
			_FeedOffDeadOID_T = AddTextOption("", "Off")			
		EndIf		

		SetCursorPosition(17)		
		AddHeaderOption("Sneak Feeding")
		If VampireSneakFeed.GetValue() == 0
			_SneakFeedOID_T = AddTextOption("", "On")
		ElseIf VampireSneakFeed.GetValue() == 10000
			_SneakFeedOID_T = AddTextOption("", "Off")
		EndIf
		
		SetCursorPosition(20)		
		AddHeaderOption("Force Feeding")
		If VampireForceFeed.GetValue() == 0
			_ForceFeedOID_T = AddTextOption("", "On")
		ElseIf VampireForceFeed.GetValue() == 10000
			_ForceFeedOID_T = AddTextOption("", "Off")
		EndIf		

		SetCursorPosition(21)		
		AddHeaderOption("Vampire Hunters")
		If VampireHunters.GetValue() == 0
			_HuntersOID_T = AddTextOption("", "No Hunters")
		ElseIf VampireHunters.GetValue() == 10000
			_HuntersOID_T = AddTextOption("", "Solo Hunters")
		ElseIf VampireHunters.GetValue() == 20000
			_HuntersOID_T = AddTextOption("", "Hunter Pairs")
		ElseIf VampireHunters.GetValue() == 30000
			_HuntersOID_T = AddTextOption("", "Hunter Triads")
		ElseIf VampireHunters.GetValue() == 40000
			_HuntersOID_T = AddTextOption("", "Random Hunters")				
		EndIf
		
		SetCursorPosition(24)		
		AddHeaderOption("Light Level Penalties")
		If VampireLightLevelPenalties.GetValue() == 0
			_LightLevelPenaltiesOID_T = AddTextOption("", "Penalties Enforced")
		ElseIf VampireLightLevelPenalties.GetValue() == 10000
			_LightLevelPenaltiesOID_T = AddTextOption("", "No Penalties")
		EndIf		
		
		SetCursorPosition(25)		
		AddHeaderOption("Daytime Shadows Regen")
		If VampireLightLevelRegen.GetValue() == 0
			_LightLevelRegenOID_T = AddTextOption("", "Regen in Low Light")
		ElseIf VampireLightLevelRegen.GetValue() == 10000
			_LightLevelRegenOID_T = AddTextOption("", "No Regen")
		EndIf

		SetCursorPosition(28)		
		AddHeaderOption("Turned Victim Appearance")
		If VampireVictimAppearance.GetValue() == 0
			_VictimAppearanceOID_T = AddTextOption("", "Appearance Will Change")
		ElseIf VampireVictimAppearance.GetValue() == 10000
			_VictimAppearanceOID_T = AddTextOption("", "No Change")
		EndIf		
		
		SetCursorPosition(29)		
		AddHeaderOption("Turned Victim Skills")
		If VampireVictimSkills.GetValue() == 0
			_VictimSkillsOID_T = AddTextOption("", "Victim Mirrors Your Skills")
		ElseIf VampireVictimSkills.GetValue() == 10000
			_VictimSkillsOID_T = AddTextOption("", "Victim Keeps Own Skills")
		EndIf		
		
		SetCursorPosition(32)		
		AddHeaderOption("Healing, Potions, and Food")
		If VampireFoodPotionHealing.GetValue() == 0
			_FoodPotionHealingOID_T = AddTextOption("", "Normal Effectiveness")
		ElseIf VampireFoodPotionHealing.GetValue() == 10000
			_FoodPotionHealingOID_T = AddTextOption("", "Only Blood Can Heal")
		EndIf		
		
		SetCursorPosition(33)		
		AddHeaderOption("Extract Blood Potions")
		If VampireExtractBlood.GetValue() == 0
			_ExtractBloodOID_T = AddTextOption("", "No Extraction")
		ElseIf VampireExtractBlood.GetValue() == 10000
			_ExtractBloodOID_T = AddTextOption("", "Extract Blood")
		EndIf

		SetCursorPosition(36)		
		AddHeaderOption("Amaranth Feeding")
		If VampireAmaranthFeed.GetValue() == 0
			_VampireAmaranthFeedOID_T = AddTextOption("", "Feed On Other Vampires")
		ElseIf VampireAmaranthFeed.GetValue() == 10000
			_VampireAmaranthFeedOID_T = AddTextOption("", "No Feeding On Vampires")
		EndIf

		SetCursorPosition(37)		
		AddHeaderOption("Praeceptor Perk Bonuses")
		If VampirePraeceptorPerks.GetValue() == 0
			_VampirePraeceptorPerksOID_T = AddTextOption("", "Feeding Adds Perk Points")
		ElseIf VampirePraeceptorPerks.GetValue() == 10000
			_VampirePraeceptorPerksOID_T = AddTextOption("", "No Perks From Feeding")
		EndIf		
		
	EndIf	
		
;---------------
		
		
	If (a_page == "Miscellaneous Options")
		SetCursorFillMode(LEFT_TO_RIGHT)
		
		AddHeaderOption("Gameplay")	
		AddEmptyOption()
		AddEmptyOption()
		AddEmptyOption()		

		If BetterVampiresUseHotkey.GetValue() == 0
			_BetterVampiresUseHotkeyState = True			
			_BetterVampiresUseHotkeyOID_B = AddToggleOption("Use Hotkey to Display Status", _BetterVampiresUseHotkeyState)
		ElseIf BetterVampiresUseHotkey.GetValue() == 10000
			_BetterVampiresUseHotkeyState = False
			_BetterVampiresUseHotkeyOID_B = AddToggleOption("Use Hotkey to Display Status", _BetterVampiresUseHotkeyState)
		EndIf	

		Int BetterVampiresHotkeyInt = BetterVampiresHotkey.GetValue() as Int
		_BetterVampiresHotkeyOID_K = AddKeyMapOption("Status Hotkey", BetterVampiresHotkeyInt)		

		If VampireFrostResistance.GetValue() == 0
			_VampireFrostResistanceState = True		
			_VampireFrostResistanceOID_B = AddToggleOption("Vampire Frost Resistance", _VampireFrostResistanceState)
		ElseIf VampireFrostResistance.GetValue() == 10000
			_VampireFrostResistanceState = False			
			_VampireFrostResistanceOID_B = AddToggleOption("Vampire Frost Resistance", _VampireFrostResistanceState)
		EndIf
		
		If VampireFireWeakness.GetValue() == 0
			_VampireFireWeaknessState = True		
			_VampireFireWeaknessOID_B = AddToggleOption("Vampire Fire Weakness", _VampireFireWeaknessState)
		ElseIf VampireFireWeakness.GetValue() == 10000
			_VampireFireWeaknessState = False			
			_VampireFireWeaknessOID_B = AddToggleOption("Vampire Fire Weakness", _VampireFireWeaknessState)
		EndIf		
		
		If VampireStrength.GetValue() == 0
			_VampireStrengthState = True		
			_VampireStrengthOID_B = AddToggleOption("Vampire Strengths (Indoors or at Night)", _VampireStrengthState)
		ElseIf VampireStrength.GetValue() == 10000
			_VampireStrengthState = False			
			_VampireStrengthOID_B = AddToggleOption("Vampire Strengths (Indoors or at Night)", _VampireStrengthState)
		EndIf			
		
		If VampireSunDamage2.GetValue() == 0
			_VampireSunDamage2State = True		
			_VampireSunDamage2OID_B = AddToggleOption("Vampire Weaknesses (Outdoors During Day)", _VampireSunDamage2State)
		ElseIf VampireSunDamage2.GetValue() == 10000
			_VampireSunDamage2State = False			
			_VampireSunDamage2OID_B = AddToggleOption("Vampire Weaknesses (Outdoors During Day", _VampireSunDamage2State)
		EndIf	

		If VampireCombatBonus.GetValue() == 0
			_VampireCombatBonusState = True		
			_VampireCombatBonusOID_B = AddToggleOption("Vampire Combat Bonuses", _VampireCombatBonusState)
		ElseIf VampireCombatBonus.GetValue() == 10000
			_VampireCombatBonusState = False			
			_VampireCombatBonusOID_B = AddToggleOption("Vampire Combat Bonuses", _VampireCombatBonusState)
		EndIf	

		If VampireLordFearEffect.GetValue() == 0
			_VampireLordFearEffectState = True		
			_VampireLordFearEffectOID_B = AddToggleOption("Fear Effect When Becoming Vampire Lord", _VampireLordFearEffectState)
		ElseIf VampireLordFearEffect.GetValue() == 10000
			_VampireLordFearEffectState = False			
			_VampireLordFearEffectOID_B = AddToggleOption("Fear Effect When Becoming Vampire Lord", _VampireLordFearEffectState)
		EndIf	

		If VampireStatusMessages.GetValue() == 0
			_VampireStatusMessagesState = True		
			_VampireStatusMessagesOID_B = AddToggleOption("Display Status Messages", _VampireStatusMessagesState)
		ElseIf VampireStatusMessages.GetValue() == 10000
			_VampireStatusMessagesState = False			
			_VampireStatusMessagesOID_B = AddToggleOption("Display Status Messages", _VampireStatusMessagesState)
		EndIf	

		If VampireNoLevelNeededForRank.GetValue() == 0
			_VampireNoLevelNeededForRankState = True		
			_VampireNoLevelNeededForRankOID_B = AddToggleOption("Level is Required for Rank Progression", _VampireNoLevelNeededForRankState)
		ElseIf VampireNoLevelNeededForRank.GetValue() == 10000
			_VampireNoLevelNeededForRankState = False			
			_VampireNoLevelNeededForRankOID_B = AddToggleOption("Level is Required for Rank Progression", _VampireNoLevelNeededForRankState)
		EndIf	

		If VampireNoRedScreen.GetValue() == 0
			_VampireNoRedScreenState = True		
			_VampireNoRedScreenOID_B = AddToggleOption("Red Screen Fade After Feeding", _VampireNoRedScreenState)
		ElseIf VampireNoRedScreen.GetValue() == 10000
			_VampireNoRedScreenState = False			
			_VampireNoRedScreenOID_B = AddToggleOption("Red Screen Fade After Feeding", _VampireNoRedScreenState)
		EndIf	

		If VampirePraestareRemoveAllFactions.GetValue() == 0
			_VampirePraestareRemoveAllFactionsState = True		
			_VampirePraestareRemoveAllFactionsOID_B = AddToggleOption("Victims Keep Factions When Turned", _VampirePraestareRemoveAllFactionsState)
		ElseIf VampirePraestareRemoveAllFactions.GetValue() == 10000
			_VampirePraestareRemoveAllFactionsState = False			
			_VampirePraestareRemoveAllFactionsOID_B = AddToggleOption("Victims Keep Factions When Turned", _VampirePraestareRemoveAllFactionsState)
		EndIf			

		If VampireTurnToAshes.GetValue() == 0
			_VampireTurnToAshesState = True		
			_VampireTurnToAshesOID_B = AddToggleOption("You Will Turn to Ash Upon Death", _VampireTurnToAshesState)
		ElseIf VampireTurnToAshes.GetValue() == 10000
			_VampireTurnToAshesState = False			
			_VampireTurnToAshesOID_B = AddToggleOption("You Will Turn to Ash Upon Death", _VampireTurnToAshesState)
		EndIf

		If VampireBloodPotionSatiation.GetValue() == 0
			_VampireBloodPotionSatiationState = False		
			_VampireBloodPotionSatiationOID_B = AddToggleOption("Blood Potions Will Affect Satiation", _VampireBloodPotionSatiationState)
		ElseIf VampireBloodPotionSatiation.GetValue() == 10000
			_VampireBloodPotionSatiationState = True			
			_VampireBloodPotionSatiationOID_B = AddToggleOption("Blood Potions Will Affect Satiation", _VampireBloodPotionSatiationState)
		EndIf
		
		If VampireHuntersRevertVL.GetValue() == 0
			_VampireHuntersRevertVLState = False		
			_VampireHuntersRevertVLOID_B = AddToggleOption("Vampire Hunters Force You Out of VL form", _VampireHuntersRevertVLState)
		ElseIf VampireHuntersRevertVL.GetValue() == 10000
			_VampireHuntersRevertVLState = True			
			_VampireHuntersRevertVLOID_B = AddToggleOption("Vampire Hunters Force You Out of VL form", _VampireHuntersRevertVLState)
		EndIf				
		
		If VampireMortalsMask.GetValue() < 20000
			_VampireMortalsMaskVisualsState = False		
			_VampireMortalsMaskVisualsOID_B = AddToggleOption("Mortal's Mask Makes Visual Changes", _VampireMortalsMaskVisualsState)
		ElseIf VampireMortalsMask.GetValue() == 20000
			_VampireMortalsMaskVisualsState = True			
			_VampireMortalsMaskVisualsOID_B = AddToggleOption("Mortal's Mask Makes Visual Changes", _VampireMortalsMaskVisualsState)
		EndIf	
				
		AddEmptyOption()
		AddEmptyOption()		
		
		AddHeaderOption("Spells and Abilities")	
		AddEmptyOption()
		AddEmptyOption()
		AddEmptyOption()		
		
		If VampireMenuSpell.GetValue() == 0
			_VampireMenuSpellState = True		
			_VampireMenuSpellOID_B = AddToggleOption("SPELL: Mod Configuration Spell (obsolete)", _VampireMenuSpellState)
		ElseIf VampireMenuSpell.GetValue() == 10000
			_VampireMenuSpellState = False			
			_VampireMenuSpellOID_B = AddToggleOption("SPELL: Mod Configuration Spell (obsolete)", _VampireMenuSpellState)
		EndIf		
		
		If VampireVampireDrain.GetValue() == 0
			_VampireDrainState = True		
			_VampireDrainOID_B = AddToggleOption("SPELL: Vampire Drain", _VampireDrainState)
		ElseIf VampireVampireDrain.GetValue() == 10000
			_VampireDrainState = False			
			_VampireDrainOID_B = AddToggleOption("SPELL: Vampire Drain", _VampireDrainState)
		EndIf
		
		If VampireVampiresServant.GetValue() == 0
			_VampiresServantState = True		
			_VampiresServantOID_B = AddToggleOption("SPELL: Vampire's Servant", _VampiresServantState)
		ElseIf VampireVampiresServant.GetValue() == 10000
			_VampiresServantState = False			
			_VampiresServantOID_B = AddToggleOption("SPELL: Vampire's Servant", _VampiresServantState)
		EndIf

		If VampireFearsEmbrace.GetValue() == 0
			_VampireFearsEmbraceState = True		
			_VampireFearsEmbraceOID_B = AddToggleOption("SPELL: Fear's Embrace", _VampireFearsEmbraceState)
		ElseIf VampireFearsEmbrace.GetValue() == 10000
			_VampireFearsEmbraceState = False			
			_VampireFearsEmbraceOID_B = AddToggleOption("SPELL: Fear's Embrace", _VampireFearsEmbraceState)
		EndIf

		If VampireDomination.GetValue() == 0
			_VampireDominationState = True		
			_VampireDominationOID_B = AddToggleOption("SPELL: Domination", _VampireDominationState)
		ElseIf VampireDomination.GetValue() == 10000
			_VampireDominationState = False			
			_VampireDominationOID_B = AddToggleOption("SPELL: Domination", _VampireDominationState)
		EndIf	

		If VampireVampiricMindBlast.GetValue() == 0
			_VampireVampiricMindBlastState = True		
			_VampireVampiricMindBlastOID_B = AddToggleOption("SPELL: Vampiric Mind Blast", _VampireVampiricMindBlastState)
		ElseIf VampireVampiricMindBlast.GetValue() == 10000
			_VampireVampiricMindBlastState = False			
			_VampireVampiricMindBlastOID_B = AddToggleOption("SPELL: Vampiric Mind Blast", _VampireVampiricMindBlastState)
		EndIf			

		If VampireDeflectLightandShadow.GetValue() == 0
			_VampireDeflectLightandShadowState = True		
			_VampireDeflectLightandShadowOID_B = AddToggleOption("SPELL: Deflect Light and Shadow", _VampireDeflectLightandShadowState)
		ElseIf VampireDeflectLightandShadow.GetValue() == 10000
			_VampireDeflectLightandShadowState = False			
			_VampireDeflectLightandShadowOID_B = AddToggleOption("SPELL: Deflect Light and Shadow", _VampireDeflectLightandShadowState)
		EndIf

		If VampireRevealAuras2.GetValue() == 0
			_VampireRevealAuras2State = True		
			_VampireRevealAuras2OID_B = AddToggleOption("SPELL: Reveal Auras", _VampireRevealAuras2State)
		ElseIf VampireRevealAuras2.GetValue() == 10000
			_VampireRevealAuras2State = False			
			_VampireRevealAuras2OID_B = AddToggleOption("SPELL: Reveal Auras", _VampireRevealAuras2State)
		EndIf		

		If VampireFrostCloud.GetValue() == 0
			_VampireFrostCloudState = True		
			_VampireFrostCloudOID_B = AddToggleOption("SPELL: Frost Cloud", _VampireFrostCloudState)
		ElseIf VampireFrostCloud.GetValue() == 10000
			_VampireFrostCloudState = False			
			_VampireFrostCloudOID_B = AddToggleOption("SPELL: Frost Cloud", _VampireFrostCloudState)
		EndIf

		If VampireIceFlesh.GetValue() == 0
			_VampireIceFleshState = True		
			_VampireIceFleshOID_B = AddToggleOption("SPELL: Ice Flesh", _VampireIceFleshState)
		ElseIf VampireIceFlesh.GetValue() == 10000
			_VampireIceFleshState = False			
			_VampireIceFleshOID_B = AddToggleOption("SPELL: Ice Flesh", _VampireIceFleshState)
		EndIf		

		If VampireMortalsMask.GetValue() == 0 || VampireMortalsMask.GetValue() == 20000
			_VampireMortalsMaskState = True		
			_VampireMortalsMaskOID_B = AddToggleOption("SPELL: Mortal's Mask", _VampireMortalsMaskState)
		ElseIf VampireMortalsMask.GetValue() == 10000
			_VampireMortalsMaskState = False			
			_VampireMortalsMaskOID_B = AddToggleOption("SPELL: Mortal's Mask", _VampireMortalsMaskState)
		EndIf		
		
		If VampireTollereSanguinare.GetValue() == 0
			_VampireTollereSanguinareState = True		
			_VampireTollereSanguinareOID_B = AddToggleOption("SPELL: Tollere Sanguinare", _VampireTollereSanguinareState)
		ElseIf VampireTollereSanguinare.GetValue() == 10000
			_VampireTollereSanguinareState = False			
			_VampireTollereSanguinareOID_B = AddToggleOption("SPELL: Tollere Sanguinare", _VampireTollereSanguinareState)
		EndIf		

		If VampireSeduction.GetValue() == 0
			_VampireSeductionState = True		
			_VampireSeductionOID_B = AddToggleOption("ABILITY: Vampire's Seduction", _VampireSeductionState)
		ElseIf VampireSeduction.GetValue() == 10000
			_VampireSeductionState = False			
			_VampireSeductionOID_B = AddToggleOption("ABILITY: Vampire's Seduction", _VampireSeductionState)
		EndIf
		
		If VampirePraestareSanguinare.GetValue() == 0
			_VampirePraestareSanguinareState = True		
			_VampirePraestareSanguinareOID_B = AddToggleOption("ABILITY: Praestare Sanguinare", _VampirePraestareSanguinareState)
		ElseIf VampirePraestareSanguinare.GetValue() == 10000
			_VampirePraestareSanguinareState = False			
			_VampirePraestareSanguinareOID_B = AddToggleOption("ABILITY: Praestare Sanguinare", _VampirePraestareSanguinareState)
		EndIf

		If VampireCallCreature.GetValue() == 0
			_VampireCallCreatureState = True		
			_VampireCallCreatureOID_B = AddToggleOption("ABILITY: Call Creature", _VampireCallCreatureState)
		ElseIf VampireCallCreature.GetValue() == 10000
			_VampireCallCreatureState = False			
			_VampireCallCreatureOID_B = AddToggleOption("ABILITY: Call Creature", _VampireCallCreatureState)
		EndIf

		If VampireUnholyGrasp.GetValue() == 0
			_VampireUnholyGraspState = True		
			_VampireUnholyGraspOID_B = AddToggleOption("ABILITY: Unholy Grasp", _VampireUnholyGraspState)
		ElseIf VampireUnholyGrasp.GetValue() == 10000
			_VampireUnholyGraspState = False			
			_VampireUnholyGraspOID_B = AddToggleOption("ABILITY: Unholy Grasp", _VampireUnholyGraspState)
		EndIf		
		
		If VampireSanguinemReddere.GetValue() == 0
			_VampireSanguinemReddereState = True		
			_VampireSanguinemReddereOID_B = AddToggleOption("ABILITY: Sanguinem Reddere", _VampireSanguinemReddereState)
		ElseIf VampireSanguinemReddere.GetValue() == 10000
			_VampireSanguinemReddereState = False			
			_VampireSanguinemReddereOID_B = AddToggleOption("ABILITY: Sanguinem Reddere", _VampireSanguinemReddereState)
		EndIf

		If VampireInvokeFog.GetValue() == 0
			_VampireInvokeFogState = True		
			_VampireInvokeFogOID_B = AddToggleOption("ABILITY: Invoke Fog", _VampireInvokeFogState)
		ElseIf VampireInvokeFog.GetValue() == 10000
			_VampireInvokeFogState = False			
			_VampireInvokeFogOID_B = AddToggleOption("ABILITY: Invoke Fog", _VampireInvokeFogState)
		EndIf

		If VampireMistwalker.GetValue() == 0
			_VampireMistwalkerState = True		
			_VampireMistwalkerOID_B = AddToggleOption("ABILITY: Mistwalker", _VampireMistwalkerState)
		ElseIf VampireMistwalker.GetValue() == 10000
			_VampireMistwalkerState = False			
			_VampireMistwalkerOID_B = AddToggleOption("ABILITY: Mistwalker", _VampireMistwalkerState)
		EndIf

		If VampireBlinkAttack.GetValue() == 0
			_VampireBlinkAttackState = True		
			_VampireBlinkAttackOID_B = AddToggleOption("ABILITY: Blink Attack", _VampireBlinkAttackState)
		ElseIf VampireBlinkAttack.GetValue() == 10000
			_VampireBlinkAttackState = False			
			_VampireBlinkAttackOID_B = AddToggleOption("ABILITY: Blink Attack", _VampireBlinkAttackState)
		EndIf

		If VampireSidestepReflexes.GetValue() == 0
			_VampireSidestepReflexesState = True		
			_VampireSidestepReflexesOID_B = AddToggleOption("ABILITY: Sidestep Reflexes", _VampireSidestepReflexesState)
		ElseIf VampireSidestepReflexes.GetValue() == 10000
			_VampireSidestepReflexesState = False			
			_VampireSidestepReflexesOID_B = AddToggleOption("ABILITY: Sidestep Reflexes", _VampireSidestepReflexesState)
		EndIf

		If VampireFallingDamageReduction2.GetValue() == 0
			_VampireFallingDamageReduction2State = True		
			_VampireFallingDamageReduction2OID_B = AddToggleOption("ABILITY: Falling Damage Reduction", _VampireFallingDamageReduction2State)
		ElseIf VampireFallingDamageReduction2.GetValue() == 10000
			_VampireFallingDamageReduction2State = False			
			_VampireFallingDamageReduction2OID_B = AddToggleOption("ABILITY: Falling Damage Reduction", _VampireFallingDamageReduction2State)
		EndIf

		If VampireJumpingBonus.GetValue() == 0
			_VampireJumpingBonusState = True		
			_VampireJumpingBonusOID_B = AddToggleOption("ABILITY: Jumping Bonus", _VampireJumpingBonusState)
		ElseIf VampireJumpingBonus.GetValue() == 10000
			_VampireJumpingBonusState = False			
			_VampireJumpingBonusOID_B = AddToggleOption("ABILITY: Jumping Bonus", _VampireJumpingBonusState)
		EndIf

		If VampireSpeed.GetValue() == 0
			_VampireSpeedState = True		
			_VampireSpeedOID_B = AddToggleOption("ABILITY: Movement Speed Bonus", _VampireSpeedState)
		ElseIf VampireSpeed.GetValue() == 10000
			_VampireSpeedState = False			
			_VampireSpeedOID_B = AddToggleOption("ABILITY: Movement Speed Bonus", _VampireSpeedState)
		EndIf

		If VampireNoDrowning.GetValue() == 0
			_VampireNoDrowningState = True		
			_VampireNoDrowningOID_B = AddToggleOption("ABILITY: Vampires Cannot Drown", _VampireNoDrowningState)
		ElseIf VampireNoDrowning.GetValue() == 10000
			_VampireNoDrowningState = False			
			_VampireNoDrowningOID_B = AddToggleOption("ABILITY: Vampires Cannot Drown", _VampireNoDrowningState)
		EndIf
		
	EndIf

;---------------

		
	
	If (a_page == "Troubleshooting and Cleanup")
		SetCursorFillMode(TOP_TO_BOTTOM)
	
		AddHeaderOption("Reset/Clear Better Vampires Mod")
		_ResetBetterVampiresOID_T = AddTextOption("", "Click to Clear")

		SetCursorPosition(6)	
		AddHeaderOption("Fix Feeding for a Custom Race")
		_CustomRaceOID_T = AddTextOption("", "Click to Fix")	
	
		SetCursorPosition(12)	
		AddHeaderOption("Reset Sanguinare Vampiris")
		_ResetSanguinareVampirisOID_T = AddTextOption("", "Click to Reset")		

		SetCursorPosition(1)	
		AddHeaderOption("Steps to Upgrade/Fix Issues")
		;_BetterVampiresCleaningStepsOID_T = AddTextOption("(steps take about 5 minutes in total)", "")			
		AddEmptyOption()		
		_BetterVampiresCleaningStepsOID_T = AddTextOption("1) Rest/Wait for 24 hr in the Game", "")	
		_BetterVampiresCleaningStepsOID_T = AddTextOption("2) Reset/Clear Better Vampires Mod", "")
		_BetterVampiresCleaningStepsOID_T = AddTextOption("3) Reset Sanguinare Vampiris", "")		
		_BetterVampiresCleaningStepsOID_T = AddTextOption("4) Make a New Save (not a quick save)", "")
		_BetterVampiresCleaningStepsOID_T = AddTextOption("5) Uninstall and Delete My Old Version", "")
		_BetterVampiresCleaningStepsOID_T = AddTextOption("6) Start Game and Load Save From 4)", "")
		_BetterVampiresCleaningStepsOID_T = AddTextOption("7) Make a New Save (not a quick save)", "")
		_BetterVampiresCleaningStepsOID_T = AddTextOption("8) Install My Newest Version", "")
		_BetterVampiresCleaningStepsOID_T = AddTextOption("9) Load Your 'Clean' Save From 6)", "")
		_BetterVampiresCleaningStepsOID_T = AddTextOption("10) Wait 3 Days and Turn to Vampire", "")

	EndIf	
		
	If (a_page == "Rank Progression Chart")
		; Image size 256x256
		;X offset = 376 - (height / 2) = 258
		;Y offset = 223 - (width / 2) = 95
		LoadCustomContent("SkyUI/BV/RankProgression.dds", 0, 0)
		Return
	Else
		UnloadCustomContent()
	EndIf
		
	If (a_page == "Normal Progression Chart")
		; Image size 256x256
		;X offset = 376 - (height / 2) = 258
		;Y offset = 223 - (width / 2) = 95
		LoadCustomContent("SkyUI/BV/NormalProgression.dds", 0, 0)
		Return
	Else
		UnloadCustomContent()
	EndIf
	
	If (a_page == "Reverse Progression Chart")	
		; Image size 256x256
		;X offset = 376 - (height / 2) = 258
		;Y offset = 223 - (width / 2) = 95
		LoadCustomContent("SkyUI/BV/ReverseProgression.dds", 0, 0)
		Return
	Else
		UnloadCustomContent()
	EndIf
		

		
EndEvent

; -------------------------------------------------------

; @implements SKI_ConfigBase
Event OnOptionSelect(int a_option)

	If(a_option == _StageProgressionOID_T)
		Int StageProgressionCounter = 1
		If (VampireProgression.GetValue() == 0 && StageProgressionCounter == 1)
			SetTextOptionValue(a_option, "Reverse Progression")
			VampireProgression.SetValue(10000)
			StageProgressionCounter = 0
		ElseIf (VampireProgression.GetValue() == 10000 && StageProgressionCounter == 1)
			SetTextOptionValue(a_option, "Normal Progression")
			VampireProgression.SetValue(0)	
			StageProgressionCounter = 0			
		EndIf
	EndIf
	
	If(a_option == _StageTimingOID_T)
		Int StageTimingCounter = 1
		If (VampireDynamicStages.GetValue() == 0 && StageTimingCounter == 1)
			SetTextOptionValue(a_option, "Stages Speed Up")
			VampireDynamicStages.SetValue(10000)
			StageTimingCounter = 0
		ElseIf (VampireDynamicStages.GetValue() == 10000 && StageTimingCounter == 1)
			SetTextOptionValue(a_option, "Only 2 Stages")
			VampireDynamicStages.SetValue(20000)	
			StageTimingCounter = 0			
		ElseIf (VampireDynamicStages.GetValue() == 20000 && StageTimingCounter == 1)
			SetTextOptionValue(a_option, "Every 24 hours")
			VampireDynamicStages.SetValue(0)	
			StageTimingCounter = 0				
		EndIf
	EndIf	

	If(a_option == _StageHatedOID_T)
		Int StageHatedCounter = 1
		If (VampireStageHated.GetValue() == 0 && StageHatedCounter == 1)
			SetTextOptionValue(a_option, "Stage 4 Hated")
			VampireStageHated.SetValue(10000)
			StageHatedCounter = 0
		ElseIf (VampireStageHated.GetValue() == 10000 && StageHatedCounter == 1)
			SetTextOptionValue(a_option, "Stage 1 Hated")
			VampireStageHated.SetValue(20000)	
			StageHatedCounter = 0			
		ElseIf (VampireStageHated.GetValue() == 20000 && StageHatedCounter == 1)
			SetTextOptionValue(a_option, "Never Hated")
			VampireStageHated.SetValue(0)	
			StageHatedCounter = 0				
		EndIf
	EndIf	

	If(a_option == _RankProgressionOID_T)
		Int RankProgressionCounter = 1
		If (VampireRankProgression.GetValue() == 0 && RankProgressionCounter == 1)
			SetTextOptionValue(a_option, "Easier Ranks")
			VampireRankProgression.SetValue(10000)
			RankProgressionCounter = 0
		ElseIf (VampireRankProgression.GetValue() == 10000 && RankProgressionCounter == 1)
			SetTextOptionValue(a_option, "Normal Ranks")
			VampireRankProgression.SetValue(0)	
			RankProgressionCounter = 0			
		EndIf
	EndIf	
	
	If(a_option == _RankAbilitiesSatiationOID_T)
		Int RankAbilitiesSatiationCounter = 1
		If (VampireRankAbilitiesSatiation.GetValue() == 0 && RankAbilitiesSatiationCounter == 1)
			SetTextOptionValue(a_option, "Hunger Affects Abilities")
			VampireRankAbilitiesSatiation.SetValue(10000)
			RankAbilitiesSatiationCounter = 0
		ElseIf (VampireRankAbilitiesSatiation.GetValue() == 10000 && RankAbilitiesSatiationCounter == 1)
			SetTextOptionValue(a_option, "Abilities Not Affected by Hunger")
			VampireRankAbilitiesSatiation.SetValue(0)	
			RankAbilitiesSatiationCounter = 0			
		EndIf
	EndIf		
	
	If(a_option == _SunEffectsOID_T)
		Int SunEffectsCounter = 1
		If (VampireSunEffects.GetValue() == 0 && SunEffectsCounter == 1)
			SetTextOptionValue(a_option, "On")
			VampireSunEffects.SetValue(10000)
			SunEffectsCounter = 0
		ElseIf (VampireSunEffects.GetValue() == 10000 && SunEffectsCounter == 1)
			SetTextOptionValue(a_option, "Off")
			VampireSunEffects.SetValue(0)	
			SunEffectsCounter = 0			
		EndIf
	EndIf		

	If(a_option == _SunDamageOID_T)
		Int SunDamageCounter = 1
		If (VampireSunDamage.GetValue() == 0 && SunDamageCounter == 1)
			SetTextOptionValue(a_option, "Slight Damage")
			SetTextOptionValue(_SunDamageSpecialOID_T, "Damage at Every Stage")			
			VampireSunDamage.SetValue(10000)
			VampireSunDamageSpecial.SetValue(0)				
			SunDamageCounter = 0
		ElseIf (VampireSunDamage.GetValue() == 10000 && SunDamageCounter == 1)
			SetTextOptionValue(a_option, "Hardcore Damage")
			SetTextOptionValue(_SunDamageSpecialOID_T, "Damage at Every Stage")				
			VampireSunDamage.SetValue(20000)
			VampireSunDamageSpecial.SetValue(0)				
			SunDamageCounter = 0			
		ElseIf (VampireSunDamage.GetValue() == 20000 && SunDamageCounter == 1)
			SetTextOptionValue(a_option, "No Damage")
			SetTextOptionValue(_SunDamageSpecialOID_T, "No Specialized Damage")			
			VampireSunDamage.SetValue(0)
			VampireSunDamageSpecial.SetValue(0)			
			SunDamageCounter = 0				
		EndIf
	EndIf	
	
	If(a_option == _SunDamageSpecialOID_T)
		Int SunDamageSpecialCounter = 1
		If (VampireSunDamageSpecial.GetValue() == 0 && VampireSunDamage.GetValue() > 0 && SunDamageSpecialCounter == 1)
			SetTextOptionValue(a_option, "Exempt at Stage 1")
			VampireSunDamageSpecial.SetValue(10000)
			SunDamageSpecialCounter = 0
		ElseIf (VampireSunDamageSpecial.GetValue() == 10000 && VampireSunDamage.GetValue() > 0 && SunDamageSpecialCounter == 1)
			SetTextOptionValue(a_option, "Only at Stage 4")
			VampireSunDamageSpecial.SetValue(20000)	
			SunDamageSpecialCounter = 0			
		ElseIf (VampireSunDamageSpecial.GetValue() == 20000 && VampireSunDamage.GetValue() > 0 && SunDamageSpecialCounter == 1)
			SetTextOptionValue(a_option, "Damage at Every Stage")
			VampireSunDamageSpecial.SetValue(0)	
			SunDamageSpecialCounter = 0				
		EndIf
	EndIf	

	If(a_option == _FeedOffDeadOID_T)
		Int FeedOffDeadCounter = 1
		If (VampireFeedOffDead.GetValue() == 0 && FeedOffDeadCounter == 1)
			SetTextOptionValue(a_option, "Advanced Feeding")
			VampireFeedOffDead.SetValue(10000)
			FeedOffDeadCounter = 0
		ElseIf (VampireFeedOffDead.GetValue() == 10000 && FeedOffDeadCounter == 1)
			SetTextOptionValue(a_option, "Off")
			VampireFeedOffDead.SetValue(20000)	
			FeedOffDeadCounter = 0			
		ElseIf (VampireFeedOffDead.GetValue() == 20000 && FeedOffDeadCounter == 1)
			SetTextOptionValue(a_option, "Basic Feeding")
			VampireFeedOffDead.SetValue(0)	
			FeedOffDeadCounter = 0				
		EndIf
	EndIf	

	If(a_option == _SneakFeedOID_T)
		Int SneakFeedCounter = 1
		If (VampireSneakFeed.GetValue() == 0 && SneakFeedCounter == 1)
			SetTextOptionValue(a_option, "Off")
			VampireSneakFeed.SetValue(10000)
			SneakFeedCounter = 0
		ElseIf (VampireSneakFeed.GetValue() == 10000 && SneakFeedCounter == 1)
			SetTextOptionValue(a_option, "On")
			VampireSneakFeed.SetValue(0)	
			SneakFeedCounter = 0			
		EndIf
	EndIf

	If(a_option == _ForceFeedOID_T)
		Int ForceFeedCounter = 1
		If (VampireForceFeed.GetValue() == 0 && ForceFeedCounter == 1)
			SetTextOptionValue(a_option, "Off")
			VampireForceFeed.SetValue(10000)
			ForceFeedCounter = 0
		ElseIf (VampireForceFeed.GetValue() == 10000 && ForceFeedCounter == 1)
			SetTextOptionValue(a_option, "On")
			VampireForceFeed.SetValue(0)	
			ForceFeedCounter = 0			
		EndIf
	EndIf	

	If(a_option == _HuntersOID_T)
		Int HunterCounter = 1
		If (VampireHunters.GetValue() == 0 && HunterCounter == 1)
			SetTextOptionValue(a_option, "Solo Hunters")
			VampireHunters.SetValue(10000)
			HunterCounter = 0
		ElseIf (VampireHunters.GetValue() == 10000 && HunterCounter == 1)
			SetTextOptionValue(a_option, "Hunter Pairs")
			VampireHunters.SetValue(20000)	
			HunterCounter = 0
		ElseIf (VampireHunters.GetValue() == 20000 && HunterCounter == 1)
			SetTextOptionValue(a_option, "Hunter Triads")
			VampireHunters.SetValue(30000)	
			HunterCounter = 0	
		ElseIf (VampireHunters.GetValue() == 30000 && HunterCounter == 1)
			SetTextOptionValue(a_option, "Random Hunters")
			VampireHunters.SetValue(40000)	
			HunterCounter = 0
		ElseIf (VampireHunters.GetValue() == 40000 && HunterCounter == 1)
			SetTextOptionValue(a_option, "No Hunters")
			VampireHunters.SetValue(0)	
			HunterCounter = 0			
		EndIf
	EndIf
	
	If(a_option == _LightLevelPenaltiesOID_T)
		Int LightLevelPenaltiesCounter = 1
		If (VampireLightLevelPenalties.GetValue() == 0 && LightLevelPenaltiesCounter == 1)
			SetTextOptionValue(a_option, "No Penalties")
			VampireLightLevelPenalties.SetValue(10000)
			LightLevelPenaltiesCounter = 0
		ElseIf (VampireLightLevelPenalties.GetValue() == 10000 && LightLevelPenaltiesCounter == 1)
			SetTextOptionValue(a_option, "Penalties Enforced")
			VampireLightLevelPenalties.SetValue(0)	
			LightLevelPenaltiesCounter = 0			
		EndIf
	EndIf	
	
	If(a_option == _LightLevelRegenOID_T)
		Int LightLevelRegenCounter = 1
		If (VampireLightLevelRegen.GetValue() == 0 && LightLevelRegenCounter == 1)
			SetTextOptionValue(a_option, "No Regen")
			VampireLightLevelRegen.SetValue(10000)
			LightLevelRegenCounter = 0
		ElseIf (VampireLightLevelRegen.GetValue() == 10000 && LightLevelRegenCounter == 1)
			SetTextOptionValue(a_option, "Regen in Low Light")
			VampireLightLevelRegen.SetValue(0)	
			LightLevelRegenCounter = 0			
		EndIf
	EndIf

	If(a_option == _VictimAppearanceOID_T)
		Int VictimAppearanceCounter = 1
		If (VampireVictimAppearance.GetValue() == 0 && VictimAppearanceCounter == 1)
			SetTextOptionValue(a_option, "No Change")
			VampireVictimAppearance.SetValue(10000)
			VictimAppearanceCounter = 0
		ElseIf (VampireVictimAppearance.GetValue() == 10000 && VictimAppearanceCounter == 1)
			SetTextOptionValue(a_option, "Appearance Will Change")
			VampireVictimAppearance.SetValue(0)	
			VictimAppearanceCounter = 0			
		EndIf
	EndIf
	
	If(a_option == _VictimSkillsOID_T)
		Int VictimSkillsCounter = 1
		If (VampireVictimSkills.GetValue() == 0 && VictimSkillsCounter == 1)
			SetTextOptionValue(a_option, "Victim Keeps Own Skills")
			VampireVictimSkills.SetValue(10000)
			VictimSkillsCounter = 0
		ElseIf (VampireVictimSkills.GetValue() == 10000 && VictimSkillsCounter == 1)
			SetTextOptionValue(a_option, "Victim Mirrors Your Skills")
			VampireVictimSkills.SetValue(0)	
			VictimSkillsCounter = 0			
		EndIf
	EndIf	

	If(a_option == _FoodPotionHealingOID_T)
		Int FoodPotionHealingCounter = 1
		If (VampireFoodPotionHealing.GetValue() == 0 && FoodPotionHealingCounter == 1)
			SetTextOptionValue(a_option, "Only Blood Can Heal")
			VampireFoodPotionHealing.SetValue(10000)
			FoodPotionHealingCounter = 0
		ElseIf (VampireFoodPotionHealing.GetValue() == 10000 && FoodPotionHealingCounter == 1)
			SetTextOptionValue(a_option, "Normal Effectiveness")
			VampireFoodPotionHealing.SetValue(0)	
			FoodPotionHealingCounter = 0			
		EndIf
	EndIf	
	
	If(a_option == _ExtractBloodOID_T)
		Int ExtractBloodCounter = 1
		If (VampireExtractBlood.GetValue() == 0 && ExtractBloodCounter == 1)
			SetTextOptionValue(a_option, "Extract Blood")
			VampireExtractBlood.SetValue(10000)
			Game.GetPlayer().AddPerk(VampireExtractBloodPotions)			
			ExtractBloodCounter = 0
		ElseIf (VampireExtractBlood.GetValue() == 10000 && ExtractBloodCounter == 1)
			SetTextOptionValue(a_option, "No Extraction")
			VampireExtractBlood.SetValue(0)	
			Game.GetPlayer().RemovePerk(VampireExtractBloodPotions)			
			ExtractBloodCounter = 0				
		EndIf
	EndIf
	
	If(a_option == _VampireAmaranthFeedOID_T)
		Int VampireAmaranthFeedCounter = 1
		If (VampireAmaranthFeed.GetValue() == 0 && VampireAmaranthFeedCounter == 1)
			SetTextOptionValue(a_option, "No Feeding On Vampires")
			VampireAmaranthFeed.SetValue(10000)
			Game.GetPlayer().RemovePerk(VampireAmaranth)			
			VampireAmaranthFeedCounter = 0
		ElseIf (VampireAmaranthFeed.GetValue() == 10000 && VampireAmaranthFeedCounter == 1)
			SetTextOptionValue(a_option, "Feed On Other Vampires")
			VampireAmaranthFeed.SetValue(0)	
			Game.GetPlayer().AddPerk(VampireAmaranth)			
			VampireAmaranthFeedCounter = 0				
		EndIf
	EndIf

	If(a_option == _VampirePraeceptorPerksOID_T)
		Int VampirePraeceptorPerksCounter = 1
		If (VampirePraeceptorPerks.GetValue() == 0 && VampirePraeceptorPerksCounter == 1)
			SetTextOptionValue(a_option, "No Perks From Feeding")
			VampirePraeceptorPerks.SetValue(10000)
			VampirePraeceptorPerksCounter = 0
		ElseIf (VampirePraeceptorPerks.GetValue() == 10000 && VampirePraeceptorPerksCounter == 1)
			SetTextOptionValue(a_option, "Feeding Adds Perk Points")
			VampirePraeceptorPerks.SetValue(0)	
			VampirePraeceptorPerksCounter = 0				
		EndIf
	EndIf	
	
	
;---------------	
		
	
	If (a_option == _BetterVampiresUseHotkeyOID_B)
		Int BetterVampiresUseHotkeyCounter = 1
		If (BetterVampiresUseHotkey.GetValue() == 0 && BetterVampiresUseHotkeyCounter == 1)
			BetterVampiresUseHotkey.SetValue(10000)
			BetterVampiresUseHotkeyCounter = 0
		ElseIf (BetterVampiresUseHotkey.GetValue() == 10000 && BetterVampiresUseHotkeyCounter == 1)
			BetterVampiresUseHotkey.SetValue(0)
			BetterVampiresInitializationQuest.EnableUpdate()
			BetterVampiresUseHotkeyCounter = 0
		EndIf	
		_BetterVampiresUseHotkeyState = !_BetterVampiresUseHotkeyState
		SetToggleOptionValue(a_option, _BetterVampiresUseHotkeyState)
	EndIf

	If (a_option == _VampireFrostResistanceOID_B)
		Int VampireFrostResistanceCounter = 1
		If (VampireFrostResistance.GetValue() == 0 && VampireFrostResistanceCounter == 1)
			VampireFrostResistance.SetValue(10000)
			VampireFrostResistanceCounter = 0
		ElseIf (VampireFrostResistance.GetValue() == 10000 && VampireFrostResistanceCounter == 1)
			VampireFrostResistance.SetValue(0)
			VampireFrostResistanceCounter = 0
		EndIf	
		_VampireFrostResistanceState = !_VampireFrostResistanceState
		SetToggleOptionValue(a_option, _VampireFrostResistanceState)
	EndIf

	If (a_option == _VampireFireWeaknessOID_B)
		Int VampireFireWeaknessCounter = 1
		If (VampireFireWeakness.GetValue() == 0 && VampireFireWeaknessCounter == 1)
			VampireFireWeakness.SetValue(10000)
			VampireFireWeaknessCounter = 0
		ElseIf (VampireFireWeakness.GetValue() == 10000 && VampireFireWeaknessCounter == 1)
			VampireFireWeakness.SetValue(0)
			VampireFireWeaknessCounter = 0
		EndIf	
		_VampireFireWeaknessState = !_VampireFireWeaknessState
		SetToggleOptionValue(a_option, _VampireFireWeaknessState)
	EndIf	
	
	If (a_option == _VampireStrengthOID_B)
		Int VampireStrengthCounter = 1
		If (VampireStrength.GetValue() == 0 && VampireStrengthCounter == 1)
			VampireStrength.SetValue(10000)
			VampireStrengthCounter = 0
		ElseIf (VampireStrength.GetValue() == 10000 && VampireStrengthCounter == 1)
			VampireStrength.SetValue(0)
			VampireStrengthCounter = 0
		EndIf	
		_VampireStrengthState = !_VampireStrengthState
		SetToggleOptionValue(a_option, _VampireStrengthState)
	EndIf	
	
	If (a_option == _VampireSunDamage2OID_B)
		Int VampireSunDamage2Counter = 1
		If (VampireSunDamage2.GetValue() == 0 && VampireSunDamage2Counter == 1)
			VampireSunDamage2.SetValue(10000)
			VampireSunDamage2Counter = 0
		ElseIf (VampireSunDamage2.GetValue() == 10000 && VampireSunDamage2Counter == 1)
			VampireSunDamage2.SetValue(0)
			VampireSunDamage2Counter = 0
		EndIf	
		_VampireSunDamage2State = !_VampireSunDamage2State
		SetToggleOptionValue(a_option, _VampireSunDamage2State)
	EndIf

	If (a_option == _VampireCombatBonusOID_B)
		Int VampireCombatBonusCounter = 1
		If (VampireCombatBonus.GetValue() == 0 && VampireCombatBonusCounter == 1)
			VampireCombatBonus.SetValue(10000)
			VampireCombatBonusCounter = 0
		ElseIf (VampireCombatBonus.GetValue() == 10000 && VampireCombatBonusCounter == 1)
			VampireCombatBonus.SetValue(0)
			VampireCombatBonusCounter = 0
		EndIf	
		_VampireCombatBonusState = !_VampireCombatBonusState
		SetToggleOptionValue(a_option, _VampireCombatBonusState)
	EndIf

	If (a_option == _VampireLordFearEffectOID_B)
		Int VampireLordFearEffectCounter = 1
		If (VampireLordFearEffect.GetValue() == 0 && VampireLordFearEffectCounter == 1)
			VampireLordFearEffect.SetValue(10000)
			VampireLordFearEffectCounter = 0
		ElseIf (VampireLordFearEffect.GetValue() == 10000 && VampireLordFearEffectCounter == 1)
			VampireLordFearEffect.SetValue(0)
			VampireLordFearEffectCounter = 0
		EndIf	
		_VampireLordFearEffectState = !_VampireLordFearEffectState
		SetToggleOptionValue(a_option, _VampireLordFearEffectState)
	EndIf

	If (a_option == _VampireStatusMessagesOID_B)
		Int VampireStatusMessagesCounter = 1
		If (VampireStatusMessages.GetValue() == 0 && VampireStatusMessagesCounter == 1)
			VampireStatusMessages.SetValue(10000)
			VampireStatusMessagesCounter = 0
		ElseIf (VampireStatusMessages.GetValue() == 10000 && VampireStatusMessagesCounter == 1)
			VampireStatusMessages.SetValue(0)
			VampireStatusMessagesCounter = 0
		EndIf	
		_VampireStatusMessagesState = !_VampireStatusMessagesState
		SetToggleOptionValue(a_option, _VampireStatusMessagesState)
	EndIf

	If (a_option == _VampireNoLevelNeededForRankOID_B)
		Int VampireNoLevelNeededForRankCounter = 1
		If (VampireNoLevelNeededForRank.GetValue() == 0 && VampireNoLevelNeededForRankCounter == 1)
			VampireNoLevelNeededForRank.SetValue(10000)
			VampireNoLevelNeededForRankCounter = 0
		ElseIf (VampireNoLevelNeededForRank.GetValue() == 10000 && VampireNoLevelNeededForRankCounter == 1)
			VampireNoLevelNeededForRank.SetValue(0)
			VampireNoLevelNeededForRankCounter = 0
		EndIf	
		_VampireNoLevelNeededForRankState = !_VampireNoLevelNeededForRankState
		SetToggleOptionValue(a_option, _VampireNoLevelNeededForRankState)
	EndIf

	If (a_option == _VampireNoRedScreenOID_B)
		Int VampireNoRedScreenCounter = 1
		If (VampireNoRedScreen.GetValue() == 0 && VampireNoRedScreenCounter == 1)
			VampireNoRedScreen.SetValue(10000)
			VampireNoRedScreenCounter = 0
		ElseIf (VampireNoRedScreen.GetValue() == 10000 && VampireNoRedScreenCounter == 1)
			VampireNoRedScreen.SetValue(0)
			VampireNoRedScreenCounter = 0
		EndIf	
		_VampireNoRedScreenState = !_VampireNoRedScreenState
		SetToggleOptionValue(a_option, _VampireNoRedScreenState)
	EndIf	

	If (a_option == _VampirePraestareRemoveAllFactionsOID_B)
		Int VampirePraestareRemoveAllFactionsCounter = 1
		If (VampirePraestareRemoveAllFactions.GetValue() == 0 && VampirePraestareRemoveAllFactionsCounter == 1)
			VampirePraestareRemoveAllFactions.SetValue(10000)
			VampirePraestareRemoveAllFactionsCounter = 0
		ElseIf (VampirePraestareRemoveAllFactions.GetValue() == 10000 && VampirePraestareRemoveAllFactionsCounter == 1)
			VampirePraestareRemoveAllFactions.SetValue(0)
			VampirePraestareRemoveAllFactionsCounter = 0
		EndIf	
		_VampirePraestareRemoveAllFactionsState = !_VampirePraestareRemoveAllFactionsState
		SetToggleOptionValue(a_option, _VampirePraestareRemoveAllFactionsState)
	EndIf
	
	If (a_option == _VampireTurnToAshesOID_B)
		Int VampireTurnToAshesCounter = 1
		If (VampireTurnToAshes.GetValue() == 0 && VampireTurnToAshesCounter == 1)
			VampireTurnToAshes.SetValue(10000)
			VampireTurnToAshesCounter = 0
		ElseIf (VampireTurnToAshes.GetValue() == 10000 && VampireTurnToAshesCounter == 1)
			VampireTurnToAshes.SetValue(0)
			VampireTurnToAshesCounter = 0
		EndIf	
		_VampireTurnToAshesState = !_VampireTurnToAshesState
		SetToggleOptionValue(a_option, _VampireTurnToAshesState)
	EndIf	

	If (a_option == _VampireBloodPotionSatiationOID_B)
		Int VampireBloodPotionSatiationCounter = 1
		If (VampireBloodPotionSatiation.GetValue() == 0 && VampireBloodPotionSatiationCounter == 1)
			VampireBloodPotionSatiation.SetValue(10000)
			VampireBloodPotionSatiationCounter = 0
		ElseIf (VampireBloodPotionSatiation.GetValue() == 10000 && VampireBloodPotionSatiationCounter == 1)
			VampireBloodPotionSatiation.SetValue(0)
			VampireBloodPotionSatiationCounter = 0
		EndIf	
		_VampireBloodPotionSatiationState = !_VampireBloodPotionSatiationState
		SetToggleOptionValue(a_option, _VampireBloodPotionSatiationState)
	EndIf	
	
	If (a_option == _VampireHuntersRevertVLOID_B)
		Int VampireHuntersRevertVLCounter = 1
		If (VampireHuntersRevertVL.GetValue() == 0 && VampireHuntersRevertVLCounter == 1)
			VampireHuntersRevertVL.SetValue(10000)
			VampireHuntersRevertVLCounter = 0
		ElseIf (VampireHuntersRevertVL.GetValue() == 10000 && VampireHuntersRevertVLCounter == 1)
			VampireHuntersRevertVL.SetValue(0)
			VampireHuntersRevertVLCounter = 0
		EndIf	
		_VampireHuntersRevertVLState = !_VampireHuntersRevertVLState
		SetToggleOptionValue(a_option, _VampireHuntersRevertVLState)
	EndIf	
	
	If (a_option == _VampireMortalsMaskVisualsOID_B)
		If VampireMortalsMask.GetValue() == 10000
		Else
			Int VampireMortalsMaskVisualsCounter = 1
			If (VampireMortalsMask.GetValue() == 0 && VampireMortalsMaskVisualsCounter == 1)
				VampireMortalsMask.SetValue(20000)
				VampireMortalsMaskVisualsCounter = 0
			ElseIf (VampireMortalsMask.GetValue() == 20000 && VampireMortalsMaskVisualsCounter == 1)
				VampireMortalsMask.SetValue(0)
				VampireMortalsMaskVisualsCounter = 0
			EndIf	
			_VampireMortalsMaskVisualsState = !_VampireMortalsMaskVisualsState
			SetToggleOptionValue(a_option, _VampireMortalsMaskVisualsState)
		EndIf	
	EndIf
	
	
;---------------
	

	If (a_option == _VampireMenuSpellOID_B)
		Int VampireMenuSpellCounter = 1
		If (VampireMenuSpell.GetValue() == 0 && VampireMenuSpellCounter == 1)
			VampireMenuSpell.SetValue(10000)
			Game.GetPlayer().Removespell (BetterVampiresMenuOptionsSpell)			
			VampireMenuSpellCounter = 0
		ElseIf (VampireMenuSpell.GetValue() == 10000 && VampireMenuSpellCounter == 1)
			VampireMenuSpell.SetValue(0)
			Game.GetPlayer().Addspell (BetterVampiresMenuOptionsSpell, abVerbose = False)
			VampireMenuSpellCounter = 0
		EndIf	
		_VampireMenuSpellState = !_VampireMenuSpellState
		SetToggleOptionValue(a_option, _VampireMenuSpellState)
	EndIf
	
	If (a_option == _VampireDrainOID_B)
		Int VampireDrainCounter = 1
		If (VampireVampireDrain.GetValue() == 0 && VampireDrainCounter == 1)
			VampireVampireDrain.SetValue(10000)
			VampireDrainCounter = 0
		ElseIf (VampireVampireDrain.GetValue() == 10000 && VampireDrainCounter == 1)
			VampireVampireDrain.SetValue(0)
			VampireDrainCounter = 0
		EndIf	
		_VampireDrainState = !_VampireDrainState
		SetToggleOptionValue(a_option, _VampireDrainState)
	EndIf
	
	If (a_option == _VampireSeductionOID_B)
		Int VampireSeductionCounter = 1
		If (VampireSeduction.GetValue() == 0 && VampireSeductionCounter == 1)
			VampireSeduction.SetValue(10000)
			VampireSeductionCounter = 0
		ElseIf (VampireSeduction.GetValue() == 10000 && VampireSeductionCounter == 1)
			VampireSeduction.SetValue(0)
			VampireSeductionCounter = 0
		EndIf	
		_VampireSeductionState = !_VampireSeductionState
		SetToggleOptionValue(a_option, _VampireSeductionState)
	EndIf	
	
	If (a_option == _VampiresServantOID_B)
		Int VampiresServantCounter = 1
		If (VampireVampiresServant.GetValue() == 0 && VampiresServantCounter == 1)
			VampireVampiresServant.SetValue(10000)
			VampiresServantCounter = 0
		ElseIf (VampireVampiresServant.GetValue() == 10000 && VampiresServantCounter == 1)
			VampireVampiresServant.SetValue(0)
			VampiresServantCounter = 0
		EndIf	
		_VampiresServantState = !_VampiresServantState
		SetToggleOptionValue(a_option, _VampiresServantState)
	EndIf	
	
	If (a_option == _VampireFearsEmbraceOID_B)
		Int VampireFearsEmbraceCounter = 1
		If (VampireFearsEmbrace.GetValue() == 0 && VampireFearsEmbraceCounter == 1)
			VampireFearsEmbrace.SetValue(10000)
			VampireFearsEmbraceCounter = 0
		ElseIf (VampireFearsEmbrace.GetValue() == 10000 && VampireFearsEmbraceCounter == 1)
			VampireFearsEmbrace.SetValue(0)
			VampireFearsEmbraceCounter = 0
		EndIf	
		_VampireFearsEmbraceState = !_VampireFearsEmbraceState
		SetToggleOptionValue(a_option, _VampireFearsEmbraceState)
	EndIf

	If (a_option == _VampireDominationOID_B)
		Int VampireDominationCounter = 1
		If (VampireDomination.GetValue() == 0 && VampireDominationCounter == 1)
			VampireDomination.SetValue(10000)
			VampireDominationCounter = 0
		ElseIf (VampireDomination.GetValue() == 10000 && VampireDominationCounter == 1)
			VampireDomination.SetValue(0)
			VampireDominationCounter = 0
		EndIf	
		_VampireDominationState = !_VampireDominationState
		SetToggleOptionValue(a_option, _VampireDominationState)
	EndIf	
	
	If (a_option == _VampireVampiricMindBlastOID_B)
		Int VampireVampiricMindBlastCounter = 1
		If (VampireVampiricMindBlast.GetValue() == 0 && VampireVampiricMindBlastCounter == 1)
			VampireVampiricMindBlast.SetValue(10000)
			VampireVampiricMindBlastCounter = 0
		ElseIf (VampireVampiricMindBlast.GetValue() == 10000 && VampireVampiricMindBlastCounter == 1)
			VampireVampiricMindBlast.SetValue(0)
			VampireVampiricMindBlastCounter = 0
		EndIf	
		_VampireVampiricMindBlastState = !_VampireVampiricMindBlastState
		SetToggleOptionValue(a_option, _VampireVampiricMindBlastState)
	EndIf
	
	If (a_option == _VampireDeflectLightandShadowOID_B)
		Int VampireDeflectLightandShadowCounter = 1
		If (VampireDeflectLightandShadow.GetValue() == 0 && VampireDeflectLightandShadowCounter == 1)
			VampireDeflectLightandShadow.SetValue(10000)
			VampireDeflectLightandShadowCounter = 0
		ElseIf (VampireDeflectLightandShadow.GetValue() == 10000 && VampireDeflectLightandShadowCounter == 1)
			VampireDeflectLightandShadow.SetValue(0)
			VampireDeflectLightandShadowCounter = 0
		EndIf	
		_VampireDeflectLightandShadowState = !_VampireDeflectLightandShadowState
		SetToggleOptionValue(a_option, _VampireDeflectLightandShadowState)
	EndIf

	If (a_option == _VampireRevealAuras2OID_B)
		Int VampireRevealAuras2Counter = 1
		If (VampireRevealAuras2.GetValue() == 0 && VampireRevealAuras2Counter == 1)
			VampireRevealAuras2.SetValue(10000)
			VampireRevealAuras2Counter = 0
		ElseIf (VampireRevealAuras2.GetValue() == 10000 && VampireRevealAuras2Counter == 1)
			VampireRevealAuras2.SetValue(0)
			VampireRevealAuras2Counter = 0
		EndIf	
		_VampireRevealAuras2State = !_VampireRevealAuras2State
		SetToggleOptionValue(a_option, _VampireRevealAuras2State)
	EndIf

	If (a_option == _VampireFrostCloudOID_B)
		Int VampireFrostCloudCounter = 1
		If (VampireFrostCloud.GetValue() == 0 && VampireFrostCloudCounter == 1)
			VampireFrostCloud.SetValue(10000)
			VampireFrostCloudCounter = 0
		ElseIf (VampireFrostCloud.GetValue() == 10000 && VampireFrostCloudCounter == 1)
			VampireFrostCloud.SetValue(0)
			VampireFrostCloudCounter = 0
		EndIf	
		_VampireFrostCloudState = !_VampireFrostCloudState
		SetToggleOptionValue(a_option, _VampireFrostCloudState)
	EndIf

	If (a_option == _VampireIceFleshOID_B)
		Int VampireIceFleshCounter = 1
		If (VampireIceFlesh.GetValue() == 0 && VampireIceFleshCounter == 1)
			VampireIceFlesh.SetValue(10000)
			VampireIceFleshCounter = 0
		ElseIf (VampireIceFlesh.GetValue() == 10000 && VampireIceFleshCounter == 1)
			VampireIceFlesh.SetValue(0)
			VampireIceFleshCounter = 0
		EndIf	
		_VampireIceFleshState = !_VampireIceFleshState
		SetToggleOptionValue(a_option, _VampireIceFleshState)
	EndIf	

	If (a_option == _VampireMortalsMaskOID_B)
		Int VampireMortalsMaskCounter = 1
		If (VampireMortalsMask.GetValue() == 0 && VampireMortalsMaskCounter == 1)
			VampireMortalsMask.SetValue(10000)
			SetToggleOptionValue(_VampireMortalsMaskVisualsOID_B, False)			
			VampireMortalsMaskCounter = 0			
		ElseIf (VampireMortalsMask.GetValue() == 10000 && VampireMortalsMaskCounter == 1)
			VampireMortalsMask.SetValue(0)
			VampireMortalsMaskCounter = 0
		ElseIf (VampireMortalsMask.GetValue() == 20000 && VampireMortalsMaskCounter == 1)
			VampireMortalsMask.SetValue(10000)
			SetToggleOptionValue(_VampireMortalsMaskVisualsOID_B, False)			
			VampireMortalsMaskCounter = 0		
		EndIf
		_VampireMortalsMaskState = !_VampireMortalsMaskState
		SetToggleOptionValue(a_option, _VampireMortalsMaskState)		
	EndIf	

	If (a_option == _VampireTollereSanguinareOID_B)
		Int VampireTollereSanguinareCounter = 1
		If (VampireTollereSanguinare.GetValue() == 0 && VampireTollereSanguinareCounter == 1)
			VampireTollereSanguinare.SetValue(10000)
			VampireTollereSanguinareCounter = 0
		ElseIf (VampireTollereSanguinare.GetValue() == 10000 && VampireTollereSanguinareCounter == 1)
			VampireTollereSanguinare.SetValue(0)
			VampireTollereSanguinareCounter = 0
		EndIf	
		_VampireTollereSanguinareState = !_VampireTollereSanguinareState
		SetToggleOptionValue(a_option, _VampireTollereSanguinareState)
	EndIf	
	
	If (a_option == _VampirePraestareSanguinareOID_B)
		Int VampirePraestareSanguinareCounter = 1
		If (VampirePraestareSanguinare.GetValue() == 0 && VampirePraestareSanguinareCounter == 1)
			VampirePraestareSanguinare.SetValue(10000)
			VampirePraestareSanguinareCounter = 0
		ElseIf (VampirePraestareSanguinare.GetValue() == 10000 && VampirePraestareSanguinareCounter == 1)
			VampirePraestareSanguinare.SetValue(0)
			VampirePraestareSanguinareCounter = 0
		EndIf	
		_VampirePraestareSanguinareState = !_VampirePraestareSanguinareState
		SetToggleOptionValue(a_option, _VampirePraestareSanguinareState)
	EndIf
	
	If (a_option == _VampireCallCreatureOID_B)
		Int VampireCallCreatureCounter = 1
		If (VampireCallCreature.GetValue() == 0 && VampireCallCreatureCounter == 1)
			VampireCallCreature.SetValue(10000)
			VampireCallCreatureCounter = 0
		ElseIf (VampireCallCreature.GetValue() == 10000 && VampireCallCreatureCounter == 1)
			VampireCallCreature.SetValue(0)
			VampireCallCreatureCounter = 0
		EndIf	
		_VampireCallCreatureState = !_VampireCallCreatureState
		SetToggleOptionValue(a_option, _VampireCallCreatureState)
	EndIf

	If (a_option == _VampireUnholyGraspOID_B)
		Int VampireUnholyGraspCounter = 1
		If (VampireUnholyGrasp.GetValue() == 0 && VampireUnholyGraspCounter == 1)
			VampireUnholyGrasp.SetValue(10000)
			VampireUnholyGraspCounter = 0
		ElseIf (VampireUnholyGrasp.GetValue() == 10000 && VampireUnholyGraspCounter == 1)
			VampireUnholyGrasp.SetValue(0)
			VampireUnholyGraspCounter = 0
		EndIf	
		_VampireUnholyGraspState = !_VampireUnholyGraspState
		SetToggleOptionValue(a_option, _VampireUnholyGraspState)
	EndIf

	If (a_option == _VampireSanguinemReddereOID_B)
		Int VampireSanguinemReddereCounter = 1
		If (VampireSanguinemReddere.GetValue() == 0 && VampireSanguinemReddereCounter == 1)
			VampireSanguinemReddere.SetValue(10000)
			VampireSanguinemReddereCounter = 0
		ElseIf (VampireSanguinemReddere.GetValue() == 10000 && VampireSanguinemReddereCounter == 1)
			VampireSanguinemReddere.SetValue(0)
			VampireSanguinemReddereCounter = 0
		EndIf	
		_VampireSanguinemReddereState = !_VampireSanguinemReddereState
		SetToggleOptionValue(a_option, _VampireSanguinemReddereState)
	EndIf

	If (a_option == _VampireInvokeFogOID_B)
		Int VampireInvokeFogCounter = 1
		If (VampireInvokeFog.GetValue() == 0 && VampireInvokeFogCounter == 1)
			VampireInvokeFog.SetValue(10000)
			VampireInvokeFogCounter = 0
		ElseIf (VampireInvokeFog.GetValue() == 10000 && VampireInvokeFogCounter == 1)
			VampireInvokeFog.SetValue(0)
			VampireInvokeFogCounter = 0
		EndIf	
		_VampireInvokeFogState = !_VampireInvokeFogState
		SetToggleOptionValue(a_option, _VampireInvokeFogState)
	EndIf

	If (a_option == _VampireMistwalkerOID_B)
		Int VampireMistwalkerCounter = 1
		If (VampireMistwalker.GetValue() == 0 && VampireMistwalkerCounter == 1)
			VampireMistwalker.SetValue(10000)
			VampireMistwalkerCounter = 0
		ElseIf (VampireMistwalker.GetValue() == 10000 && VampireMistwalkerCounter == 1)
			VampireMistwalker.SetValue(0)
			VampireMistwalkerCounter = 0
		EndIf	
		_VampireMistwalkerState = !_VampireMistwalkerState
		SetToggleOptionValue(a_option, _VampireMistwalkerState)
	EndIf

	If (a_option == _VampireBlinkAttackOID_B)
		Int VampireBlinkAttackCounter = 1
		If (VampireBlinkAttack.GetValue() == 0 && VampireBlinkAttackCounter == 1)
			VampireBlinkAttack.SetValue(10000)
			VampireBlinkAttackCounter = 0
		ElseIf (VampireBlinkAttack.GetValue() == 10000 && VampireBlinkAttackCounter == 1)
			VampireBlinkAttack.SetValue(0)
			VampireBlinkAttackCounter = 0
		EndIf	
		_VampireBlinkAttackState = !_VampireBlinkAttackState
		SetToggleOptionValue(a_option, _VampireBlinkAttackState)
	EndIf

	If (a_option == _VampireSidestepReflexesOID_B)
		Int VampireSidestepReflexesCounter = 1
		If (VampireSidestepReflexes.GetValue() == 0 && VampireSidestepReflexesCounter == 1)
			VampireSidestepReflexes.SetValue(10000)
			VampireSidestepReflexesCounter = 0
		ElseIf (VampireSidestepReflexes.GetValue() == 10000 && VampireSidestepReflexesCounter == 1)
			VampireSidestepReflexes.SetValue(0)
			VampireSidestepReflexesCounter = 0
		EndIf	
		_VampireSidestepReflexesState = !_VampireSidestepReflexesState
		SetToggleOptionValue(a_option, _VampireSidestepReflexesState)
	EndIf

	If (a_option == _VampireFallingDamageReduction2OID_B)
		Int VampireFallingDamageReduction2Counter = 1
		If (VampireFallingDamageReduction2.GetValue() == 0 && VampireFallingDamageReduction2Counter == 1)
			VampireFallingDamageReduction2.SetValue(10000)
			VampireFallingDamageReduction2Counter = 0
		ElseIf (VampireFallingDamageReduction2.GetValue() == 10000 && VampireFallingDamageReduction2Counter == 1)
			VampireFallingDamageReduction2.SetValue(0)
			VampireFallingDamageReduction2Counter = 0
		EndIf	
		_VampireFallingDamageReduction2State = !_VampireFallingDamageReduction2State
		SetToggleOptionValue(a_option, _VampireFallingDamageReduction2State)
	EndIf

	If (a_option == _VampireJumpingBonusOID_B)
		Int VampireJumpingBonusCounter = 1
		If (VampireJumpingBonus.GetValue() == 0 && VampireJumpingBonusCounter == 1)
			VampireJumpingBonus.SetValue(10000)
			VampireJumpingBonusCounter = 0
		ElseIf (VampireJumpingBonus.GetValue() == 10000 && VampireJumpingBonusCounter == 1)
			VampireJumpingBonus.SetValue(0)
			VampireJumpingBonusCounter = 0
		EndIf	
		_VampireJumpingBonusState = !_VampireJumpingBonusState
		SetToggleOptionValue(a_option, _VampireJumpingBonusState)
	EndIf

	If (a_option == _VampireSpeedOID_B)
		Int VampireSpeedCounter = 1
		If (VampireSpeed.GetValue() == 0 && VampireSpeedCounter == 1)
			VampireSpeed.SetValue(10000)
			VampireSpeedCounter = 0
		ElseIf (VampireSpeed.GetValue() == 10000 && VampireSpeedCounter == 1)
			VampireSpeed.SetValue(0)
			VampireSpeedCounter = 0
		EndIf	
		_VampireSpeedState = !_VampireSpeedState
		SetToggleOptionValue(a_option, _VampireSpeedState)
	EndIf		
	
	If (a_option == _VampireNoDrowningOID_B)
		Int VampireNoDrowningCounter = 1
		If (VampireNoDrowning.GetValue() == 0 && VampireNoDrowningCounter == 1)
			VampireNoDrowning.SetValue(10000)
			VampireNoDrowningCounter = 0
		ElseIf (VampireNoDrowning.GetValue() == 10000 && VampireNoDrowningCounter == 1)
			VampireNoDrowning.SetValue(0)
			VampireNoDrowningCounter = 0
		EndIf	
		_VampireNoDrowningState = !_VampireNoDrowningState
		SetToggleOptionValue(a_option, _VampireNoDrowningState)
	EndIf

	
	
;---------------
	
	
	
	If(a_option == _ResetBetterVampiresOID_T)
		SetTextOptionValue(a_option, "Exit Menus to Reset Mod")

		utility.wait(0.1)
		Player = Game.GetPlayer()

		If Game.GetPlayer().GetRace() == DLC1VampireBeastRace
			Debug.Notification("You cannot reset this mod while in Vampire Lord Form.")
		Else	
			Debug.Notification("Clearing and resetting mod, please wait ...")
			BetterVampiresInitializationQuest.Stop()			
			VampireSunEffects.SetValue(0)	
			VampireSunDamage.SetValue(0)
			VampireSunDamageSpecial.SetValue(0)				
			VampireProgression.SetValue(0)	
			CreateVampire.SetValue(0)	
			VampireStageHated.SetValue(0)	
			VampireHunters.SetValue(0)	
			VampireRank.SetValue(0)		
			VampireRankProgression.SetValue(0)	
			VampireUpdateGameTime.SetValue(0)	
			VeilOfFearUseCount.SetValue(0)	
			VeilOfFearResetCounter.SetValue(0)
			VampireStageGlobal.SetValue(0)
			VampireNightEye.SetValue(0)
			VampireCustomRace.SetValue(0)
			VampireRevealAuras.SetValue(0)	
			VampireFeedOffDead.SetValue(0)
			VampireDynamicStages.SetValue(0)
			RECASTVampireBlink.SetValue(0)
			RECASTVampireMistwalker.SetValue(0)
			RECASTVampireUnholyGrasp.SetValue(0)
			VampireLightLevel.SetValue(0)
			VampireLightLevelPenalties.SetValue(0)	
			VampireLightLevelRegen.SetValue(0)	
			VampireVictimAppearance.SetValue(0)	
			VampireFoodPotionHealing.SetValue(0)	
			VampireBottledBlood.SetValue(0)	
			VampireExtractBlood.SetValue(0)
			VampireExtractingBlood.SetValue(0)	
			VampireNoRedScreen.SetValue(0)

			VampireVampireDrain.SetValue(0)
			VampireVampiresServant.SetValue(0)
			VampireStrength.SetValue(0)
			VampireSunDamage2.SetValue(0)	
			VampireFearsEmbrace.SetValue(0)
			VampireDomination.SetValue(0)
			VampireVampiricMindBlast.SetValue(0)
			VampireDeflectLightandShadow.SetValue(0)
			VampireMortalsMask.SetValue(0)
			VampireMortalsMaskActive.SetValue(0)
			VampireRevealAuras2.SetValue(0)
			VampirePraestareSanguinare.SetValue(0)
			VampireFrostCloud.SetValue(0)	
			VampireIceFlesh.SetValue(0)		
			VampireCallCreature.SetValue(0)	
			VampireUnholyGrasp.SetValue(0)			
			VampireSanguinemReddere.SetValue(0)		
			VampireCombatBonus.SetValue(0)
			VampireInvokeFog.SetValue(0)	
			VampireMistwalker.SetValue(0)			
			VampireBlinkAttack.SetValue(0)		
			VampireSidestepReflexes.SetValue(0)	
			VampireFallingDamageReduction2.SetValue(0)
			VampireNoFoodVar.SetValue(0)		
			VampireNoPotionsVar.SetValue(0)		
			VampireNoHealingVar.SetValue(0)
			VampireLordFearEffect.SetValue(0)				
			VampireNoLevelNeededForRank.SetValue(0)
			VampireStatusMessages.SetValue(0)
			VampirePraestareRemoveAllFactions.SetValue(0)
			VampireMenuSpell.SetValue(0)
			VampireJumpingBonus.SetValue(0)
			VampireSpeed.SetValue(0)
			VampireVictimSkills.SetValue(0)	
			VampireSneakFeed.SetValue(0)
			VampireNecksBittenDiscovered.SetValue(0)
			VampireSeduction.SetValue(0)
			VampireTollereSanguinare.SetValue(0)			
			VampireForceFeed.SetValue(0)
			VampireNoDrowning.SetValue(0)
			VampireTurnToAshes.SetValue(0)
			VampireHuntersRevertVL.SetValue(0)
			VampireBloodPotionSatiation.SetValue(0)				
			VampireCannotTurnVL.SetValue(0)
			UsingBetterVampiresScripts.SetValue(0)			
			BetterVampiresUseHotkey.SetValue(0)
			BetterVampiresHotkey.SetValue(47)
			VampireRankAbilitiesSatiation.SetValue(0)
			VampireFireWeakness.SetValue(0)
			VampireFrostResistance.SetValue(0)
			VampireAmaranthFeed.SetValue(0)
			VampirePraeceptorPerks.SetValue(0)		
			
			Player.RemoveFromFaction(VampirePCFaction)
			Player.RemoveFromFaction(VampirePCFamily)
			Player.RemoveFromFaction(DummyFaction)
			Player.SetAttackActorOnSight(False)

			;Dispel all abilities
			Player.DispelSpell(VampireVampirism)
			Player.DispelSpell(VampireTurnToAshPile)	
			Player.DispelSpell(ABVampireSkills)
			Player.DispelSpell(ABVampireSkills02)
			Player.DispelSpell(AbVampire01)
			Player.DispelSpell(AbVampire02)
			Player.DispelSpell(AbVampire03)
			Player.DispelSpell(AbVampire04)
			Player.DispelSpell(AbVampire05)	
			Player.DispelSpell(AbVampire01b)
			Player.DispelSpell(AbVampire02b)
			Player.DispelSpell(AbVampire03b)
			Player.DispelSpell(AbVampire04b)
			Player.DispelSpell(AbVampire05b)
			Player.DispelSpell(VampireDrain01)
			Player.DispelSpell(VampireDrain02)
			Player.DispelSpell(VampireDrain03)
			Player.DispelSpell(VampireDrain04)
			Player.DispelSpell(VampireDrain05)	
			Player.DispelSpell(VampireDrain06)
			Player.DispelSpell(VampireDrain07)
			Player.DispelSpell(VampireDrain08)
			Player.DispelSpell(VampireDrain09)
			Player.DispelSpell(VampireDrain10)	
			Player.DispelSpell(VampireDrain11)
			Player.DispelSpell(VampireDrain12)
			Player.DispelSpell(VampireDrain13)	
			Player.DispelSpell(VampireRaiseThrall01)
			Player.DispelSpell(VampireRaiseThrall02)
			Player.DispelSpell(VampireRaiseThrall03)
			Player.DispelSpell(VampireRaiseThrall04)
			Player.DispelSpell(VampireRaiseThrall05)
			Player.DispelSpell(VampireStrength01)
			Player.DispelSpell(VampireStrength02)
			Player.DispelSpell(VampireStrength03)
			Player.DispelSpell(VampireStrength04)
			Player.DispelSpell(VampireStrength05)	
			Player.DispelSpell(VampireSunDamage01)
			Player.DispelSpell(VampireSunDamage02)
			Player.DispelSpell(VampireSunDamage03)
			Player.DispelSpell(VampireSunDamage04)
			Player.DispelSpell(VampireSunDamage05)	

			Player.DispelSpell(VampireBurnInSun10)
			Player.DispelSpell(VampireBurnInSun09)
			Player.DispelSpell(VampireBurnInSun08)
			Player.DispelSpell(VampireBurnInSun07)
			Player.DispelSpell(VampireBurnInSun06)		
			Player.DispelSpell(VampireBurnInSun05)
			Player.DispelSpell(VampireBurnInSun04)
			Player.DispelSpell(VampireBurnInSun03)
			Player.DispelSpell(VampireBurnInSun02)
			Player.DispelSpell(VampireBurnInSun01)		

			Player.DispelSpell(VampireSleep)
			Player.DispelSpell(VampireSleep2)	
			Player.DispelSpell(VampireSleep3)
			Player.DispelSpell(VampireCharm)
			Player.DispelSpell(VampireCharm2)	
			Player.DispelSpell(VampireCloak)
			Player.DispelSpell(VampireInvisibilityPC)
			Player.DispelSpell(VampireInvisibilityRecast)
			Player.DispelSpell(VampireCharisma01) 	
			Player.DispelSpell(VampireCharisma02) 		
			Player.DispelSpell(VampireHuntersSight)
			Player.DispelSpell(VampireDetectAll)
			Player.DispelSpell(VampireDetectAll02)
			Player.DispelSpell(VampireDetectAll03)
			Player.DispelSpell(VampireDetectAll04)	
			Player.DispelSpell(CreateNPCVampireSpell)
			Player.DispelSpell(TurnOnCreateNPCVampire)

			Player.DispelSpell(VampireRemoveHateSpell)	

			Player.DispelSpell(VampireRankCombatBonusSpell01)
			Player.DispelSpell(VampireRankCombatBonusSpell02)
			Player.DispelSpell(VampireRankCombatBonusSpell03)
			Player.DispelSpell(VampireRankCombatBonusSpell04)
			Player.DispelSpell(VampireRankCombatBonusSpell05)	
			Player.DispelSpell(VampireRankCombatBonusSpell06)		
			Player.DispelSpell(VampireRankInvokeFogSpell01)
			Player.DispelSpell(VampireRankInvokeFogSpell02)
			Player.DispelSpell(VampireRankInvokeFogSpell03)
			Player.DispelSpell(VampireRankInvokeFogSpell04)
			Player.DispelSpell(VampireRankInvokeFogSpell05)
			Player.DispelSpell(VampireRankMistFormSpell)
			Player.DispelSpell(VampireRankBlinkAttackSpell)
			Player.DispelSpell(VampireQuickReflexesSpell01)
			Player.DispelSpell(VampireQuickReflexesSpell02)
			Player.DispelSpell(VampireQuickReflexesSpell03)
			Player.DispelSpell(VampireQuickReflexesSpell04)
			Player.DispelSpell(VampireQuickReflexesSpell05)	
			Player.DispelSpell(VampireJumpBonusSpell)

			;Remove all abilities
			Player.RemoveSpell(VampireVampirism)
			Player.RemoveSpell(VampireTurnToAshPile)	
			Player.RemoveSpell(ABVampireSkills)
			Player.RemoveSpell(ABVampireSkills02)
			Player.RemoveSpell(AbVampire01)
			Player.RemoveSpell(AbVampire02)
			Player.RemoveSpell(AbVampire03)
			Player.RemoveSpell(AbVampire04)
			Player.RemoveSpell(AbVampire05)	
			Player.RemoveSpell(AbVampire01b)
			Player.RemoveSpell(AbVampire02b)
			Player.RemoveSpell(AbVampire03b)
			Player.RemoveSpell(AbVampire04b)
			Player.RemoveSpell(AbVampire05b)
			Player.RemoveSpell(VampireDrain01)
			Player.RemoveSpell(VampireDrain02)
			Player.RemoveSpell(VampireDrain03)
			Player.RemoveSpell(VampireDrain04)
			Player.RemoveSpell(VampireDrain05)	
			Player.RemoveSpell(VampireDrain06)
			Player.RemoveSpell(VampireDrain07)
			Player.RemoveSpell(VampireDrain08)
			Player.RemoveSpell(VampireDrain09)
			Player.RemoveSpell(VampireDrain10)	
			Player.RemoveSpell(VampireDrain11)
			Player.RemoveSpell(VampireDrain12)
			Player.RemoveSpell(VampireDrain13)
			Player.RemoveSpell(VampireRaiseThrall01)
			Player.RemoveSpell(VampireRaiseThrall02)
			Player.RemoveSpell(VampireRaiseThrall03)
			Player.RemoveSpell(VampireRaiseThrall04)
			Player.RemoveSpell(VampireRaiseThrall05)
			Player.RemoveSpell(VampireStrength01)
			Player.RemoveSpell(VampireStrength02)
			Player.RemoveSpell(VampireStrength03)
			Player.RemoveSpell(VampireStrength04)
			Player.RemoveSpell(VampireStrength05)	
			Player.RemoveSpell(VampireSunDamage01)
			Player.RemoveSpell(VampireSunDamage02)
			Player.RemoveSpell(VampireSunDamage03)
			Player.RemoveSpell(VampireSunDamage04)
			Player.RemoveSpell(VampireSunDamage05)	

			Player.RemoveSpell(VampireBurnInSun10)
			Player.RemoveSpell(VampireBurnInSun09)
			Player.RemoveSpell(VampireBurnInSun08)
			Player.RemoveSpell(VampireBurnInSun07)
			Player.RemoveSpell(VampireBurnInSun06)		
			Player.RemoveSpell(VampireBurnInSun05)
			Player.RemoveSpell(VampireBurnInSun04)
			Player.RemoveSpell(VampireBurnInSun03)
			Player.RemoveSpell(VampireBurnInSun02)
			Player.RemoveSpell(VampireBurnInSun01)		

			Player.RemoveSpell(VampireSleep)
			Player.RemoveSpell(VampireSleep2)	
			Player.RemoveSpell(VampireSleep3)
			Player.RemoveSpell(VampireCharm)
			Player.RemoveSpell(VampireCharm2)	
			Player.RemoveSpell(VampireCloak)
			Player.RemoveSpell(VampireInvisibilityPC)
			Player.RemoveSpell(VampireInvisibilityRecast)
			Player.RemoveSpell(VampireCharisma01) 	
			Player.RemoveSpell(VampireCharisma02) 		
			Player.RemoveSpell(VampireHuntersSight)
			Player.RemoveSpell(VampireDetectAll)
			Player.RemoveSpell(VampireDetectAll02)
			Player.RemoveSpell(VampireDetectAll03)
			Player.RemoveSpell(VampireDetectAll04)		
			Player.RemoveSpell(CreateNPCVampireSpell)
			Player.RemoveSpell(TurnOnCreateNPCVampire)
			Player.RemoveSpell(CureNPCVampire)			

			Player.RemoveSpell(VampireRemoveHateSpell)	

			Player.RemoveSpell(VampireRankFrostCloud01)
			Player.RemoveSpell(VampireRankFrostCloud02)
			Player.RemoveSpell(VampireRankFrostCloud03)
			Player.RemoveSpell(VampireRankFrostCloud04)
			Player.RemoveSpell(VampireRankFrostCloud05)
			Player.RemoveSpell(VampireRankFrostCloud06)
			Player.RemoveSpell(VampireRankIceFleshSpell01)
			Player.RemoveSpell(VampireRankIceFleshSpell02)
			Player.RemoveSpell(VampireRankIceFleshSpell03)
			Player.RemoveSpell(VampireRankIceFleshSpell04)
			Player.RemoveSpell(VampireRankIceFleshSpell05)
			Player.RemoveSpell(VampireRankIceFleshSpell06)
			Player.RemoveSpell(VampireRankSummonCreatureSpell)
			Player.RemoveSpell(VampireRankTelekinesis2)
			Player.RemoveSpell(SanguinemReddereVampireSpell)
			Player.RemoveSpell(VampireRankCombatBonusSpell01)
			Player.RemoveSpell(VampireRankCombatBonusSpell02)
			Player.RemoveSpell(VampireRankCombatBonusSpell03)
			Player.RemoveSpell(VampireRankCombatBonusSpell04)
			Player.RemoveSpell(VampireRankCombatBonusSpell05)	
			Player.RemoveSpell(VampireRankCombatBonusSpell06)		
			Player.RemoveSpell(VampireRankInvokeFogSpell01)
			Player.RemoveSpell(VampireRankInvokeFogSpell02)
			Player.RemoveSpell(VampireRankInvokeFogSpell03)
			Player.RemoveSpell(VampireRankInvokeFogSpell04)
			Player.RemoveSpell(VampireRankInvokeFogSpell05)
			Player.RemoveSpell(VampireRankMistFormSpell)
			Player.RemoveSpell(VampireRankBlinkAttackSpell)
			Player.RemoveSpell(VampireQuickReflexesSpell01)
			Player.RemoveSpell(VampireQuickReflexesSpell02)
			Player.RemoveSpell(VampireQuickReflexesSpell03)
			Player.RemoveSpell(VampireQuickReflexesSpell04)
			Player.RemoveSpell(VampireQuickReflexesSpell05)
			Player.RemoveSpell(VampireJumpBonusSpell)

			;Player.RemovePerk(VampireFeedCustomRace2)				
			Player.RemovePerk(VampireFallingDamageReduction)
			Player.RemovePerk(VampireQuickReflexesPerk01)
			Player.RemovePerk(VampireQuickReflexesPerk02)
			Player.RemovePerk(VampireQuickReflexesPerk03)
			Player.RemovePerk(VampireQuickReflexesPerk04)
			Player.RemovePerk(VampireQuickReflexesPerk05)
			;Player.RemovePerk(VampireFeed)
			Player.RemovePerk(VampireNoFoodPerk)
			Player.RemovePerk(VampireNoPotionPerk)
			Player.RemovePerk(VampireNoHealingPerk)				
			Player.RemovePerk(VampireExtractBloodPotions)
			Player.RemovePerk(VampireAmaranth)			
		
			Player.UnequipAll()
			utility.wait(1.0)	

			Player.SetActorValue("SpeedMult", 0)
			Player.SetActorValue("SpeedMult", 100)	
			Player.SetActorValue("WeaponSpeedMult", 0)

			;Utility.SetIniFloat("fInAirFallingCharGravityMult:Havok",1.35)
			;Game.SetGameSettingFloat("fJumpHeightMin",76.00)

			utility.wait(1.0)
			Debug.Notification("All Spells/Variables/Abilities Removed - Please feed if you want to restore")
			utility.wait(1.0)
			BetterVampiresConfig.Stop()
			utility.wait(1.0)					
			BetterVampiresConfig.Start()	
			Debug.Notification("P.S. Equipment was removed while resetting actor values ... put some clothes on")

			Player.SetAlpha(1)		
		EndIf

	EndIf
		
		
	If(a_option == _CustomRaceOID_T)
		SetTextOptionValue(a_option, "Exit Menus to Fix Feeding")

		utility.Wait(0.1)
		Player = Game.GetPlayer()		
			
		If Game.GetPlayer().GetRace() == DLC1VampireBeastRace
			Debug.Notification("You cannot flag yourself as a Custom Race while in Vampire Lord Form.")
		Else	
			Player.RemoveSpell(DiseaseBoneBreakFever)
			Player.RemoveSpell(DiseaseAtaxia )			
			Player.RemoveSpell(DiseaseBrainRot )
			Player.RemoveSpell(DiseaseRattles )
			Player.RemoveSpell(DiseaseRockjoint )
			Player.RemoveSpell(DiseaseWitbane )

			PlayerVampireQuest.SetStage(10)
			utility.Wait(3.0)			
			PlayerVampireQuest.Reset()
			Debug.Notification("Vampire quest script has been reset ... please wait.")
			utility.Wait(3.0)
			Game.GetPlayer().RemoveSpell(WerewolfImmunity)
			While (Game.GetPlayer().HasMagicEffect(DisDamageHealthVampire)) == False
				Game.GetPlayer().AddSpell(DiseaseSanguinareVampiris, abVerbose = False)
			EndWhile
			Debug.Notification("You have now been infected with Sanguinare Vampiris.")
			utility.Wait(3.0)
			VampireCustomRace.SetValue(10000)
			Player.AddPerk(VampireFeedCustomRace2)
			Debug.Notification("You will not have any changes made to your custom race's appearance.")			
			utility.Wait(3.0)
			Debug.Notification("You are now ready to become a Vampire normally - please rest for 3 days.")
		EndIf					
			
	EndIf
	
	If(a_option == _ResetSanguinareVampirisOID_T)
		SetTextOptionValue(a_option, "Exit Menus to Cure and Reinfect")

		utility.Wait(0.1)
		Player = Game.GetPlayer()
		
		If Game.GetPlayer().GetRace() == DLC1VampireBeastRace
			Debug.Notification("You cannot reset Sanguinare Vampiris while in Vampire Lord Form.")
		Else	
			If 	PlayerIsVampire.GetValue() == 1
				Debug.Notification("Skyrim had PlayerIsVampire = 1")
			Else
				Debug.Notification("Skyrim did not have PlayerIsVampire = 1  You were not flagged as a Vampire.")
			EndIf
			PlayerVampireQuest.SetStage(10)
			Debug.Notification("Vampirism is cured ... please wait.")
			utility.Wait(3.0)
			PlayerVampireQuest.Reset()
			Debug.Notification("Vampire quest script has been reset ... please wait.")
			utility.Wait(3.0)
			Game.GetPlayer().RemoveSpell(WerewolfImmunity)
			While (Game.GetPlayer().HasMagicEffect(DisDamageHealthVampire)) == False
				Game.GetPlayer().AddSpell(DiseaseSanguinareVampiris, abVerbose = False)
			EndWhile
			;PlayerIsVampire.SetValue(1)
			Debug.Notification("You have now been reinfected with Sanguinare Vampiris.")
			utility.Wait(3.0)
			Debug.Notification("You can use cure disease to stay mortal, or rest for 3 days to become a Vampire.")				
		EndIf		
		
	EndIf	
	
	
EndEvent

; -------------------------------------------------------

Event OnOptionKeyMapChange(Int option, Int keyCode, String conflictControl, String conflictName)

	If (option == _BetterVampiresHotkeyOID_K)
		bool continue = true
		If (conflictControl != "")
			String msg
			If (conflictName != "")
				msg = "This key is already mapped to:\n" + conflictControl + "\n(" + conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n" + conflictControl + "\n\nAre you sure you want to continue?"
			EndIf

			continue = ShowMessage(msg, true, "$Yes", "$No")
		EndIf

		If (continue)
			Int BetterVampiresHotkeyInt = keyCode
			SetKeymapOptionValue(_BetterVampiresHotkeyOID_K, BetterVampiresHotkeyInt)
			BetterVampiresHotkey.SetValue(BetterVampiresHotkeyInt)
		EndIf
	EndIf
	
EndEvent

; -------------------------------------------------------
; @implements SKI_ConfigBase
Event OnOptionHighlight(int option)

	If (option == _PlayerIsVampireOID_T)	
		SetInfoText("You are flagged as a vampire and this value is set to 1 after Sanguinare Vampiris runs its course.\nIt then calls the VampireChange section of PlayerVampireQuest to turn you and set this variable.\nYou cannot just change your race to become a functioning vampire.")	
	EndIf	
	
	If (option == _PlayerHasUndeadKeywordOID_T)	
		SetInfoText("Your vampire race, be it vanilla or custom, must have these keywords\nto function properly and allow you to feed on others.")	
	EndIf

	If (option == _PlayerHasVampireKeywordOID_T)	
		SetInfoText("Your vampire race, be it vanilla or custom, must have these keywords\nto function properly and allow you to feed on others.")	
	EndIf	
	
	If (option == _UsingBetterVampiresScriptsOID_T)	
		SetInfoText("Better Vampires' main script will change a global variable to inform you if your\ngame is using its script and it can tell you what section of the script\njust processed or is currently running.")	
	EndIf			

	If (option == _LightLevelOID_T)	
		SetInfoText("Depending on how you have customized this mod, some abilities will not be functional during the light of day.\nIf sun damage is enabled, it will also depend on light levels (light levels can be increased by torches, spells, etc. too).\nSun weakness or damage occurs in an exterior cell, between 06:00-19:00, with the light level reaching 60 or more.")	
	EndIf
	
	If (option == _StageProgressionOID_T)
		If VampireProgression.GetValue() == 0
			SetInfoText("You will be stronger as a Vampire when starving and overtaken by Sanguinare Vampiris.\n(Normal Progression is Default)")
		ElseIf VampireProgression.GetValue() == 10000
			SetInfoText("You will be stronger as a Vampire when you are fully fed and engorged with the blood of your victims.\n(Normal Progression is Default)")		
		EndIf
	EndIf
	
	If (option == _StageTimingOID_T)
		If VampireDynamicStages.GetValue() == 0
			SetInfoText("You will advance a stage of vampirism every 24 hours that you do not feed.\n(Every 24 hours is Default)")
		ElseIf VampireDynamicStages.GetValue() == 10000
			SetInfoText("Your hunger will speed up as you go without blood and stages will become shorter and shorter.\n(Stage 1 -> 12hr -> Stage 2 -> 6hr -> Stage 3 -> 3hr -> Stage 4)\n(Every 24 hours is Default)")		
		ElseIf VampireDynamicStages.GetValue() == 20000
			SetInfoText("You will experience only two stages of vampirism - fully fed, or starving after one day.\n(Every 24 hours is Default)")				
		EndIf
	EndIf	
	
	If (option == _StageHatedOID_T)
		If VampireStageHated.GetValue() == 0
			SetInfoText("You will not be hated at any stage of your vampirism.\n(Never Hated is Default)\n Please become fully fed and then starve yourself to stage 4 to have this kick in fully.")
		ElseIf VampireStageHated.GetValue() == 10000
			SetInfoText("You will be hated when you are starving and maddened by blood lust.\n(Never Hated is Default)\n Please become fully fed and then starve yourself to stage 4 to have this kick in fully.")		
		ElseIf VampireStageHated.GetValue() == 20000
			SetInfoText("You will be hated when you are fully fed.\n(Never Hated is Default)\n Please starve yourself to stage 4 and then become fully fed to have this kick in fully.")				
		EndIf
	EndIf	

	If (option == _RankProgressionOID_T)
		If VampireRankProgression.GetValue() == 0
			SetInfoText("You will advance through your Vampiric ranks by bathing in the blood of countless victims.\n(Normal Rank Progression is Default)")
		ElseIf VampireRankProgression.GetValue() == 10000
			SetInfoText("You prefer an easier path to greatness (fewer victims required for ranks).\n(Normal Rank Progression is Default)")		
		EndIf
	EndIf
	
	If (option == _RankAbilitiesSatiationOID_T)
		If VampireRankAbilitiesSatiation.GetValue() == 0
			SetInfoText("Your rank abilities, once you have access to them, will be unaffected by your stage of satiation.\n(Abilities Not Affected by Hunger is Default)")
		ElseIf VampireRankAbilitiesSatiation.GetValue() == 10000
			SetInfoText("Your rank abilities, once you have access to them, will depend upon your satiation.\nMore and more abilities will become unavailable as you become weaker.\n(Abilities Not Affected by Hunger is Default)")		
		EndIf
	EndIf	
	
	If (option == _SunEffectsOID_T)
		If VampireSunEffects.GetValue() == 0
			SetInfoText("You will see no change to your appearance while in direct sunlight.\n(Off is Default)")
		ElseIf VampireSunEffects.GetValue() == 10000
			SetInfoText("You will see your exposed skin char and blacken in the punishing light of day.\n(Off is Default)")		
		EndIf
	EndIf	
	
	If (option == _SunDamageOID_T)
		If VampireSunDamage.GetValue() == 0
			SetInfoText("The direct light of the sun causes no damage to you whatsoever.\n(No Damage is Default)")
		ElseIf VampireSunDamage.GetValue() == 10000
			SetInfoText("The direct light of the sun causes some damage to your body.\n(No Damage is Default)")		
		ElseIf VampireSunDamage.GetValue() == 20000
			SetInfoText("The direct light of the sun threatens to turn you to ash in moments.\n(No Damage is Default)")				
		EndIf
	EndIf	
	
	If (option == _SunDamageSpecialOID_T)
		If  VampireSunDamage.GetValue() == 0
			SetInfoText("Sun Damage is currently OFF, so choices here are disabled.\nYou cannot choose specialized sun damage UNLESS you enable sun damage first.")
		EndIf	
		If VampireSunDamageSpecial.GetValue() == 0 && VampireSunDamage.GetValue() > 0
			SetInfoText("IF you take damage in the direct light of the sun, you will suffer regardless of your satiation.\n(Damage at Every Stage is Default)")
		ElseIf VampireSunDamageSpecial.GetValue() == 10000 && VampireSunDamage.GetValue() > 0
			SetInfoText("IF you take damage in the direct light of the sun, you will be exempt when fully fed.\n(Damage at Every Stage is Default)")		
		ElseIf VampireSunDamageSpecial.GetValue() == 20000 && VampireSunDamage.GetValue() > 0
			SetInfoText("IF you take damage in the direct light of the sun, you will ONLY take damage when starving.\n(Damage at Every Stage is Default)")				
		EndIf
	EndIf	
	
	If (option == _FeedOffDeadOID_T)
		If VampireFeedOffDead.GetValue() == 0
			SetInfoText("You will be able to drain those recently killed of what little blood they have left to receive a bit of nourishment.\n(Basic Feeding is Default)")
		ElseIf VampireFeedOffDead.GetValue() == 10000
			SetInfoText("You will be able to drain those recently killed of what little blood they have left to advance your vampirism.\n(Basic Feeding is Default)")		
		ElseIf VampireFeedOffDead.GetValue() == 20000
			SetInfoText("You will be unable to feed off of corpses.\n(Basic Feeding is Default)")				
		EndIf
	EndIf	

	If (option == _SneakFeedOID_T)
		If VampireSneakFeed.GetValue() == 0
			SetInfoText("You will be able to sneak behind unsuspecting victims and feed upon them.\nYou will usually be able to kill your victim outright, but sometimes they may escape your grasp or fight back.\n(On is Default)")
		ElseIf VampireSneakFeed.GetValue() == 10000
			SetInfoText("You will be unable to sneak behind a victim and feed upon them.\n(On is Default)")		
		EndIf
	EndIf

	If (option == _ForceFeedOID_T)
		If VampireForceFeed.GetValue() == 0
			SetInfoText("You will be able to force feed upon a weakened and bleeding out victim.\nThis is a kill move - your victim will die unless they are set to be essential.\n(On is Default)")
		ElseIf VampireForceFeed.GetValue() == 10000
			SetInfoText("You will be unable to force feed upon a bleeding out victim.\n(On is Default)")		
		EndIf
	EndIf	
	
	If (option == _HuntersOID_T)
		If VampireHunters.GetValue() == 0
			SetInfoText("This mod will not add any additional Vampire Hunters.\n(No Hunters is Default)")
		ElseIf VampireHunters.GetValue() == 10000
			SetInfoText("You will be pursued by a relentless faction of hunters bent on eradicating vampires.\nOnly one Hunter will attack you at a time.\n(No Hunters is Default)")		
		ElseIf VampireHunters.GetValue() == 20000
			SetInfoText("You will be pursued by a relentless faction of hunters bent on eradicating vampires.\nHunters will attack you in pairs.\n(No Hunters is Default)")	
		ElseIf VampireHunters.GetValue() == 30000
			SetInfoText("You will be pursued by a relentless faction of hunters bent on eradicating vampires.\nHunters will attack you in triads.\n(No Hunters is Default)")
		ElseIf VampireHunters.GetValue() == 40000
			SetInfoText("You will be pursued by a relentless faction of hunters bent on eradicating vampires.\nHunters will attack you in random numbers - you'll never know how many are coming.\n(No Hunters is Default)")			
		EndIf
	EndIf

	If (option == _LightLevelPenaltiesOID_T)
		If VampireLightLevelPenalties.GetValue() == 0
			SetInfoText("You will be unable to use some of your Vampiric abilities in the direct light of day.\n(affects Vampire Lord Form, Vampiric Mind Blast, Mistwalker, Blink Attack, Unholy Grasp, \nVL Mist Form, Supernatural Reflexes, Night Cloak, and Vampiric Grip)")
		ElseIf VampireLightLevelPenalties.GetValue() == 10000
			SetInfoText("You will be able to use all available vampiric abilities, even in the light of day.\n(Penalties Enforced is Default)")		
		EndIf
	EndIf
	
	If (option == _LightLevelRegenOID_T)
		If VampireLightLevelRegen.GetValue() == 0
			SetInfoText("You will be able to regenerate your health and stamina very slowly if the sun is obscured\n or if you find deep enough shadows to hide in.\n(Regen in Low Light is Default)")
		ElseIf VampireLightLevelRegen.GetValue() == 10000
			SetInfoText("You will be unable to regenerate your health and stamina unless you stay indoors during the day.\n(Regen in Low Light is Default)")		
		EndIf
	EndIf	
	
	If (option == _VictimAppearanceOID_T)
		If VampireVictimAppearance.GetValue() == 0
			SetInfoText("Your victims will undergo a transformation and take on Vampire characteristics.\n(Appearance Will Change is Default)")
		ElseIf VampireVictimAppearance.GetValue() == 10000
			SetInfoText("Your victims will maintain their previous appearance. If you choose to have no appearance change,\nyour victim will belong to your faction, have vampire abilities, but will not be flagged as ActorTypeUndead or Vampire.\n I recommend you allow them to look like vampires even if they are uglier ...")		
		EndIf
	EndIf
	
	If (option == _VictimSkillsOID_T)
		If VampireVictimSkills.GetValue() == 0
			SetInfoText("Your victims will be granted the same skills and abilities that you possess.\n(Victim Mirrors Your Skills is Default)")
		ElseIf VampireVictimSkills.GetValue() == 10000
			SetInfoText("Your victims will keep their own skills and abilities - no changes will be made.\n(Victim Mirrors Your Skills is Default)\nThis MAY aid in compatibility with other follower mods ...")		
		EndIf
	EndIf	

	If (option == _FoodPotionHealingOID_T)
		If VampireFoodPotionHealing.GetValue() == 0
			SetInfoText("You will be able to heal yourself with magic and potions.\nFood will affect you normally.\n(Normal Effectiveness is Default)")
		ElseIf VampireFoodPotionHealing.GetValue() == 10000
			SetInfoText("You can only be nourished by the blood of your victims.\nHealing magic, potions, and food will have no effect on you.\n(Normal Effectiveness is Default)")		
		EndIf
	EndIf	
	
	If (option == _ExtractBloodOID_T)
		If VampireExtractBlood.GetValue() == 0
			SetInfoText("You will be unable to extract blood potions from your victims.\n(No Extraction is Default)")
		ElseIf VampireExtractBlood.GetValue() == 10000
			SetInfoText("Extract blood potions from sleeping victims, those paralyzed or seduced, or thrall cattle.\nChange how potions affect you on the Miscellaneous page.\n(No Extraction is Default)")		
		EndIf
	EndIf

	If (option == _VampireAmaranthFeedOID_T)
		If VampireAmaranthFeed.GetValue() == 0
			SetInfoText("At your highest rank, Vampiris Praeceptor, you can feed on other vampires and possbily absorb some of their skills.\nYou will be able to Sneak Feed, Force Feed, Sleep Feed, or feed on their corpse (if enabled).\n(Feeding On Other Vampires is Default)")
		ElseIf VampireAmaranthFeed.GetValue() == 10000
			SetInfoText("You cannot feed on other vampires at your highest rank, Vampiris Praeceptor.\nYou will be unable to absorb any of their skills by draining them of their blood.\n(Feeding On Other Vampires is Default)")		
		EndIf
	EndIf

	If (option == _VampirePraeceptorPerksOID_T)
		If VampirePraeceptorPerks.GetValue() == 0
			SetInfoText("At your highest rank, Vampiris Praeceptor, you will be able to earn Perk Points with continued feeding.\n(Feeding Adds Perk Points is Default)")
		ElseIf VampirePraeceptorPerks.GetValue() == 10000
			SetInfoText("You will be unable to earn Perk Points by feeding at your highest rank, Vampiris Praeceptor.\n(Feeding Adds Perk Points is Default)")		
		EndIf
	EndIf	
	
	If (option == _BetterVampiresUseHotkeyOID_B)
		SetInfoText("Toggle whether you can use a hotkey to display Vampire status (SKSE is required).")
	EndIf	
	
	If (option == _BetterVampiresHotkeyOID_K)
		SetInfoText("(V is default)")
	EndIf		

	If (option == _VampireFrostResistanceOID_B)
		SetInfoText("Toggle whether you will have increased Frost Resistance as a Vampire.")
	EndIf
	
	If (option == _VampireFireWeaknessOID_B)
		SetInfoText("Toggle whether you will have an increased weakness to Fire as a Vampire.")
	EndIf	
	
	If (option == _VampireStrengthOID_B)
		SetInfoText("Toggle your strengths on or off.  Includes: fortified health and stamina, increased regeneration of health and stamina,\nincreased unarmed damage, increased melee damage, and increased movement speed.")
	EndIf

	If (option == _VampireSunDamage2OID_B)
		SetInfoText("Toggle your weaknesses on or off.  Includes: reduced health and stamina, reduced regeneration of health, stamina,\nand magicka, and possible burn damage taken while in strong light.")
	EndIf

	If (option == _VampireCombatBonusOID_B)
		SetInfoText("Toggle your combat bonuses on or off.  Includes: Destruction magic bonus and Weapon speed increase.")
	EndIf

	If (option == _VampireLordFearEffectOID_B)
		SetInfoText("Toggle whether NPCs will briefly run away in fear when you transform into a Vampire Lord.")	
	EndIf

	If (option == _VampireStatusMessagesOID_B)
		SetInfoText("Toggle whether you will receive messages about your satiation and number of feedings.")		
	EndIf

	If (option == _VampireNoLevelNeededForRankOID_B)
		SetInfoText("Toggle whether your vampire ranks will require you to be of a certain level.\nIf disabled, you will only need a prerequisite number of feedings to advance a rank.")	
	EndIf

	If (option == _VampireNoRedScreenOID_B)
		SetInfoText("Toggle whether the screen will fade to red whenever you feed.")	
	EndIf	

	If (option == _VampirePraestareRemoveAllFactionsOID_B)	
		SetInfoText("Toggle whether NPCs will remain in previous factions if you turn them.\nWARNING:  Disabling this will make them yours more completely ... but runs the risk of breaking things.")	
	EndIf		
	
	If (option == _VampireTurnToAshesOID_B)	
		SetInfoText("Toggle whether you will turn into a pile of ashes whenever you die.")	
	EndIf

	If (option == _VampireBloodPotionSatiationOID_B)	
		SetInfoText("Toggle whether Blood Potions will affect your thirst as a vampire and\nallow you to advance through stages of vampirism when you drink them.")	
	EndIf	
	
	If (option == _VampireHuntersRevertVLOID_B)	
		SetInfoText("Toggle whether Vampire Hunters have modified their silver poison\nso it forces you out of Vampire Lord form.\nYou will be unable to change again unless you rest an hour or more after combat.")	
	EndIf	
	
	If (option == _VampireMortalsMaskVisualsOID_B)
		If VampireMortalsMask.GetValue() == 10000
			SetInfoText("Mortal's Mask is currently disabled.\nYou will be unable to change this setting until you first re-enable it.")	
		Else
			SetInfoText("Toggle whether Mortal's Mask will also cause an appearance change and make you look mortal.\nThis will only work if you are one of Skyrim's default races ...\n(Sorry, but scripting and updating for current and future custom races would be far too time consuming.)")	
		EndIf
	EndIf		
	
	If (option == _VampireMenuSpellOID_B)		
		SetInfoText("This power, which opens a configuration menu, is no longer needed,\nand can be removed if you plan on using this MCM to configure Better Vampires.")
	EndIf
	
	If (option == _ResetBetterVampiresOID_T)
		SetInfoText("Use this option to reset all variables and remove all custom spells/abilities.\nVery useful if something glitches in the game and you need to reset everything.\nESSENTIAL if you are updating this mod - reset, delete, clean save, install new, feed once.")
	EndIf	
	
	If (option == _CustomRaceOID_T)
		SetInfoText("WARNING:  ONLY use this workaround if you cannot feed with your custom race!\nCustom races do not get along well with Dawnguard and Vampire Lords.\nCertain flags like ActorTypeNPC, ActorTypeUndead, and Vampire may be missing ... ")
	EndIf		
	
	If (option == _ResetSanguinareVampirisOID_T)
		SetInfoText("You can use this option to reset your vampiric state, easily become a Vampire for the first time,\nor permanently remove Vampirism if you cure your disease within 3 days.")
	EndIf		
	
	
EndEvent


Spell Property VampireVampirism Auto
Spell Property VampireTurnToAshPile Auto
Spell Property ABVampireSkills Auto
Spell Property ABVampireSkills02 Auto
Spell Property AbVampire01 Auto
Spell Property AbVampire02 Auto
Spell Property AbVampire03 Auto
Spell Property AbVampire04 Auto
Spell Property AbVampire05 Auto
Spell Property AbVampire01b Auto
Spell Property AbVampire02b Auto
Spell Property AbVampire03b Auto
Spell Property AbVampire04b Auto
Spell Property AbVampire05b Auto
Spell Property VampireDrain01 Auto
Spell Property VampireDrain02 Auto
Spell Property VampireDrain03 Auto
Spell Property VampireDrain04 Auto
Spell Property VampireDrain05 Auto
Spell Property VampireDrain06 Auto
Spell Property VampireDrain07 Auto
Spell Property VampireDrain08 Auto
Spell Property VampireDrain09 Auto
Spell Property VampireDrain10 Auto
Spell Property VampireDrain11 Auto
Spell Property VampireDrain12 Auto
Spell Property VampireDrain13 Auto
Spell Property VampireRaiseThrall01 Auto
Spell Property VampireRaiseThrall02 Auto
Spell Property VampireRaiseThrall03 Auto
Spell Property VampireRaiseThrall04 Auto
Spell Property VampireRaiseThrall05 Auto
Spell Property VampireStrength01 Auto
Spell Property VampireStrength02 Auto
Spell Property VampireStrength03 Auto
Spell Property VampireStrength04 Auto
Spell Property VampireStrength05 Auto
Spell Property VampireSunDamage01 Auto
Spell Property VampireSunDamage02 Auto
Spell Property VampireSunDamage03 Auto
Spell Property VampireSunDamage04 Auto
Spell Property VampireSunDamage05 Auto

Spell Property VampireBurnInSun01 Auto
Spell Property VampireBurnInSun02 Auto
Spell Property VampireBurnInSun03 Auto
Spell Property VampireBurnInSun04 Auto
Spell Property VampireBurnInSun05 Auto
Spell Property VampireBurnInSun06 Auto
Spell Property VampireBurnInSun07 Auto
Spell Property VampireBurnInSun08 Auto
Spell Property VampireBurnInSun09 Auto
Spell Property VampireBurnInSun10 Auto

Spell Property VampireSleep Auto
Spell Property VampireSleep2 Auto
Spell Property VampireSleep3 Auto
Spell Property VampireCharm Auto
Spell Property VampireCharm2 Auto
Spell Property VampireCloak Auto
Spell Property VampireInvisibilityPC Auto
Spell Property VampireInvisibilityRecast Auto
Spell Property VampireCharisma01 Auto
Spell Property VampireCharisma02 Auto
Spell Property VampireHuntersSight Auto
Spell Property VampireDetectAll Auto
Spell Property VampireDetectAll02 Auto
Spell Property VampireDetectAll03 Auto
Spell Property VampireDetectAll04 Auto
Spell Property CreateNPCVampireSpell Auto
Spell Property TurnOnCreateNPCVampire Auto
Spell Property CureNPCVampire Auto

Spell Property VampireRemoveHateSpell Auto

Spell Property BetterVampiresMenuOptionsSpell Auto

Spell Property VampireRankCombatBonusSpell01 Auto
Spell Property VampireRankCombatBonusSpell02 Auto
Spell Property VampireRankCombatBonusSpell03 Auto
Spell Property VampireRankCombatBonusSpell04 Auto
Spell Property VampireRankCombatBonusSpell05 Auto
Spell Property VampireRankCombatBonusSpell06 Auto
Spell Property VampireRankFrostCloud01 Auto
Spell Property VampireRankFrostCloud02 Auto
Spell Property VampireRankFrostCloud03 Auto
Spell Property VampireRankFrostCloud04 Auto
Spell Property VampireRankFrostCloud05 Auto
Spell Property VampireRankFrostCloud06 Auto
Spell Property VampireRankIceFleshSpell01 Auto
Spell Property VampireRankIceFleshSpell02 Auto
Spell Property VampireRankIceFleshSpell03 Auto
Spell Property VampireRankIceFleshSpell04 Auto
Spell Property VampireRankIceFleshSpell05 Auto
Spell Property VampireRankIceFleshSpell06 Auto
Spell Property VampireRankSummonCreatureSpell Auto
Spell Property VampireRankTelekinesis2 Auto
Spell Property SanguinemReddereVampireSpell Auto
Spell Property VampireRankInvokeFogSpell01 Auto
Spell Property VampireRankInvokeFogSpell02 Auto
Spell Property VampireRankInvokeFogSpell03 Auto
Spell Property VampireRankInvokeFogSpell04 Auto
Spell Property VampireRankInvokeFogSpell05 Auto
Spell Property VampireRankMistFormSpell Auto
Spell Property VampireRankBlinkAttackSpell Auto
Spell Property VampireQuickReflexesSpell01 Auto
Spell Property VampireQuickReflexesSpell02 Auto
Spell Property VampireQuickReflexesSpell03 Auto
Spell Property VampireQuickReflexesSpell04 Auto
Spell Property VampireQuickReflexesSpell05 Auto
Spell Property VampireJumpBonusSpell Auto
