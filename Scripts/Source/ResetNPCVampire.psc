Scriptname ResetNPCVampire extends activemagiceffect

Race Property ArgonianRace  Auto  
Race Property ArgonianRaceVampire  Auto  
Race Property BretonRace  Auto  
Race Property BretonRaceVampire  Auto  
Race Property DarkElfRace  Auto  
Race Property DarkElfRaceVampire  Auto 
Race Property ElderRace  Auto  
Race Property ElderRaceVampire  Auto  
Race Property HighElfRace  Auto  
Race Property HighElfRaceVampire  Auto  
Race Property ImperialRace  Auto  
Race Property ImperialRaceVampire  Auto  
Race Property KhajiitRace  Auto  
Race Property KhajiitRaceVampire  Auto  
Race Property NordRace  Auto  
Race Property NordRaceVampire  Auto  
Race Property OrcRace  Auto  
Race Property OrcRaceVampire  Auto  
Race Property RedguardRace  Auto  
Race Property RedguardRaceVampire  Auto  
Race Property WoodElfRace  Auto  
Race Property WoodElfRaceVampire  Auto  

Static Property XMarker Auto

Faction Property VampirePCFamily  Auto
Faction Property DummyFaction Auto

Spell Property VampireCureDisease Auto

Spell Property DiseaseAtaxia auto
Spell Property DiseaseBoneBreakFever Auto
Spell Property DiseaseBrainRot Auto
Spell Property DiseaseRattles Auto
Spell Property DiseaseRockjoint auto
Spell Property DiseaseWitbane Auto

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

Spell Property VampireVictimDamage2 Auto

;For NPC Vampires you create
Spell Property InvisibilityVampiric Auto
Spell Property VampireSunDamageNPC Auto
Spell Property VampireTurnToAshPileNPC Auto
Spell Property crVampireDrain03 Auto

;For Vampire Ranks
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


;==============================================================================================

EVENT OnEffectStart(Actor akFeedTarget, Actor akCaster)

	;If akFeedTarget.HasSpell(VampireCharm) || akFeedTarget.IsInFaction(VampirePCFamily) || akFeedTarget.IsInFaction(DummyFaction) || akFeedTarget.HasSpell(VampireStrength02) || akFeedTarget.GetAV("Variable05") == 666
	If akFeedTarget.GetAV("Variable05") == 666
	
			utility.Wait(2.0)	
			ObjectReference ResetXmarker = akFeedTarget.PlaceAtMe(Xmarker)
			akFeedTarget.EnableAI(false)
			;akFeedTarget.SetAlpha(0, true)
			
			;akFeedTarget.SetPlayerTeammate()
			
			if (akFeedTarget.GetActorBase().GetRace() == ArgonianRaceVampire)
				akFeedTarget.SetRace(ArgonianRace)
			elseif (akFeedTarget.GetActorBase().GetRace() == BretonRaceVampire)
				akFeedTarget.SetRace(BretonRace)
			elseif (akFeedTarget.GetActorBase().GetRace() == DarkElfRaceVampire)
				akFeedTarget.SetRace(DarkElfRace)
			elseif (akFeedTarget.GetActorBase().GetRace() == ElderRaceVampire)
				akFeedTarget.SetRace(ElderRace)				
			elseif (akFeedTarget.GetActorBase().GetRace() == HighELfRaceVampire)
				akFeedTarget.SetRace(HighElfRace)
			elseif (akFeedTarget.GetActorBase().GetRace() == ImperialRaceVampire)
				akFeedTarget.SetRace(ImperialRace)
			elseif (akFeedTarget.GetActorBase().GetRace() == KhajiitRaceVampire)
				akFeedTarget.SetRace(KhajiitRace)
			elseif (akFeedTarget.GetActorBase().GetRace() == NordRaceVampire)
				akFeedTarget.SetRace(NordRace)
			elseif (akFeedTarget.GetActorBase().GetRace() == OrcRaceVampire)
				akFeedTarget.SetRace(OrcRace)
			elseif (akFeedTarget.GetActorBase().GetRace() == RedguardRaceVampire)
				akFeedTarget.SetRace(RedguardRace)
			elseif (akFeedTarget.GetActorBase().GetRace() == WoodElfRaceVampire)
				akFeedTarget.SetRace(WoodElfRace)
			endif
			akFeedTarget.SetAttackActorOnSight(False)
			
			;Dispel all abilities
			akFeedTarget.DispelSpell(VampireVampirism)
			akFeedTarget.DispelSpell(ABVampireSkills)
			akFeedTarget.DispelSpell(ABVampireSkills02)
			akFeedTarget.DispelSpell(AbVampire02)
			akFeedTarget.DispelSpell(AbVampire02b)
			akFeedTarget.DispelSpell(VampireVampirism)
			akFeedTarget.DispelSpell(crVampireDrain03)
			akFeedTarget.DispelSpell(VampireCharm)				
			;akFeedTarget.DispelSpell(VampireRankFrostCloud04)
			akFeedTarget.DispelSpell(VampireRankIceFleshSpell04)
			akFeedTarget.DispelSpell(VampireRankMistFormSpell)
			akFeedTarget.DispelSpell(VampireRaiseThrall02)
			akFeedTarget.DispelSpell(VampireStrength02)
			akFeedTarget.DispelSpell(VampireSunDamageNPC)
			akFeedTarget.DispelSpell(VampireCharisma02)
			akFeedTarget.DispelSpell(VampireSleep)
			akFeedTarget.DispelSpell(InvisibilityVampiric)
			akFeedTarget.DispelSpell(VampireTurnToAshPileNPC)

			;Remove all abilities
			akFeedTarget.RemoveSpell(VampireVampirism)
			akFeedTarget.RemoveSpell(ABVampireSkills)
			akFeedTarget.RemoveSpell(ABVampireSkills02)
			akFeedTarget.RemoveSpell(AbVampire02)
			akFeedTarget.RemoveSpell(AbVampire02b)
			akFeedTarget.RemoveSpell(VampireVampirism)
			akFeedTarget.RemoveSpell(crVampireDrain03)
			akFeedTarget.RemoveSpell(VampireCharm)				
			;akFeedTarget.RemoveSpell(VampireRankFrostCloud04)
			akFeedTarget.RemoveSpell(VampireRankIceFleshSpell04)
			akFeedTarget.RemoveSpell(VampireRankMistFormSpell)
			akFeedTarget.RemoveSpell(VampireRaiseThrall02)
			akFeedTarget.RemoveSpell(VampireStrength02)
			akFeedTarget.RemoveSpell(VampireSunDamageNPC)
			akFeedTarget.RemoveSpell(VampireCharisma02)
			akFeedTarget.RemoveSpell(VampireSleep)
			akFeedTarget.RemoveSpell(InvisibilityVampiric)
			akFeedTarget.RemoveSpell(VampireTurnToAshPileNPC)
			
			akFeedTarget.SetActorValue("Variable08", 0)	
			akFeedTarget.SetActorValue("Variable05", 0)
			
			akFeedTarget.RemoveFromFaction(VampirePCFamily)
			akFeedTarget.RemoveFromFaction(DummyFaction)			

			;akFeedTarget.Reset(ResetXmarker)
			;utility.Wait(1.0)
			
			akFeedTarget.EvaluatePackage()	
			
			Debug.Notification("Your victim has been cured of their vampirism")
			akFeedTarget.SetAlpha(1, true)
			akFeedTarget.EnableAI()
			
			ResetXmarker.Disable()
			ResetXmarker.Delete()
			
			utility.Wait(1.0)
			akFeedTarget.SetAlpha(1, true)
			
	Else
	
			Debug.Notification("Tollere Sanguinare has no effect")
	
	EndIf
	
EndEvent

;==============================================================================================

Event OnEffectFinish(Actor akFeedTarget, Actor akCaster)
	
			
EndEvent
