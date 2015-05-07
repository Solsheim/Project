scriptName magicAttachAshPileOnVampireDeathNPC extends ActiveMagicEffect
{Scripted effect for on death ash pile}

import debug
import FormList

;======================================================================================;
;  PROPERTIES  /
;=============/

float property fDelay = 1.00 auto
									{time to wait before Spawning Ash Pile}
; float property fDelayAlpha = 1.65 auto
; 									{time to wait before Setting alpha to zero.}
float property fDelayEnd = 1.65 auto
									{time to wait before Removing Base Actor}
float property ShaderDuration = 0.00 auto
									{Duration of Effect Shader.}
Activator property AshPileObject auto
									{The object we use as a pile.}
EffectShader property MagicEffectShader auto
									{The Effect Shader we want.}
Bool property bSetAlphaZero = True auto
									{The Effect Shader we want.}
FormList Property ImmunityList auto
									{If the target is in this list, they will not be disintegrated.}
Bool property bSetAlphaToZeroEarly = False Auto
									{Use this if we want to set the acro to invisible somewhere before the effect shader is done.}

Faction Property VampirePCFaction  Auto  
Faction Property VampirePCFamily  Auto
Faction Property PotentialFollowerFaction  Auto
Faction Property CurrentFollowerFaction Auto
Faction Property CrimeFactionEastmarch  Auto
Faction Property CrimeFactionFalkreath  Auto
Faction Property CrimeFactionHjaalmarch  Auto
Faction Property CrimeFactionImperial  Auto
Faction Property CrimeFactionOrcs  Auto
Faction Property CrimeFactionPale  Auto
Faction Property CrimeFactionReach  Auto
Faction Property CrimeFactionRift  Auto
Faction Property CrimeFactionSons  Auto
Faction Property CrimeFactionWhiterun  Auto
Faction Property CrimeFactionWinterhold  Auto
Faction Property VigilantOfStendarrFaction  Auto
Faction Property VampireHunter  Auto
Faction Property DummyFaction  Auto
Faction Property DLC1HunterFaction  Auto
Faction Property DLC1DawnguardFaction  Auto
Faction Property DLC1DawnguardExteriorGuardFaction  Auto

Faction Property WERoad02BodyguardFaction Auto
Faction Property MorthalGuardhouseFaction Auto
Faction Property dunDawnstarSanctuaryGuardianFaction Auto
Faction Property MS03ChaletGuardEnemyFaction Auto
Faction Property MQ201ExteriorGuardFaction Auto
Faction Property MQ201PartyGuardFaction Auto
Faction Property DragonsreachBasementGuards Auto
Faction Property CWWhiterunGuardNeutralFaction Auto
Faction Property GuardFactionWindhelm Auto
Faction Property GuardFactionRiften Auto
Faction Property CaravanGuard Auto
Faction Property OrcGuardFaction Auto
Faction Property DA02GuardsPlayerEnemy Auto
Faction Property DA02GuardFaction Auto
Faction Property IsGuardFaction Auto
Faction Property JobGuardCaptainFaction Auto
Faction Property KarthwastenSilverFishGuards Auto
Faction Property GuardFactionCidhnaMine Auto
Faction Property GuardFactionKolskeggr Auto
Faction Property GuardFactionSoljund Auto
Faction Property GuardFactionDawnstar Auto
Faction Property GuardFactionHaafingar Auto
Faction Property GuardFactionSolitude Auto
Faction Property GuardFactionDragonbridge Auto
Faction Property GuardFactionFalkreath Auto	
Faction Property GuardFactionKarthwasten Auto	
Faction Property GuardFactionMarkarth Auto
Faction Property GuardFactionWhiterun Auto
Faction Property CWSonsFaction Auto
Faction Property CWSonsFactionNPC Auto
Faction Property CWImperialFaction Auto
Faction Property CWImperialFactionNPC Auto
			
Faction Property CWMission08AllGiantsPlayerFriendFaction Auto
Faction Property DA02CulistsPlayerEnemy Auto
Faction Property DA02CultistsAreEnemies Auto
Faction Property DA02ElisifAfraidOfPlayer Auto
Faction Property DA07PlayerEnemyFaction Auto
Faction Property DA10PlayerEnemyFaction Auto
Faction Property DA11AttackPlayerFaction Auto
Faction Property DA16OrcAmbushFaction Auto
Faction Property DA16VaerminaHostileFaction Auto
Faction Property DB11KatariahCrewFaction Auto
Faction Property dunMarkarthWizard_SecureAreaFaction Auto
Faction Property dunYsgramorsTombGhostFaction Auto
Faction Property dunKarthwastenPlayerEnemyFaction Auto
Faction Property MarriageRivalAttackFaction Auto
Faction Property MG03CallerFaction Auto
Faction Property MGThalmorFaction Auto
Faction Property MS01PlayerEnemyFaction Auto
Faction Property RiftenRatwayFactionEnemy Auto
Faction Property RiftenSkoomaDealerFactionEnemy Auto
Faction Property T03HatePlayerFaction Auto
Faction Property TG02AringothPlayerEnemyFaction Auto
Faction Property TG04EastEmpireFactionHostile Auto
Faction Property TG07ValdFactionHatesPlayer Auto
Faction Property TG08BMercerHatesPlayerFaction Auto
Faction Property TG09NightingaleEnemyFaction Auto
Faction Property TGTQ04NiranyeAttacksFaction Auto
Faction Property WEAdventureHorseRiderFaction Auto
Faction Property WEPlayerEnemy Auto
Faction Property WEThalmorPlayerEnemyFaction Auto
Faction Property WIPlayerEnemyFaction Auto
Faction Property WIPlayerEnemySpecialCombatFaction Auto
						
Spell Property VampireTurnToAshPile Auto
Spell Property ABVampireSkills Auto
Spell Property ABVampireSkills02 Auto
Spell Property AbVampire02 Auto
Spell Property AbVampire02b Auto
Spell Property VampireVampirism Auto
Spell Property crVampireDrain03 Auto	
Spell Property VampireCharm Auto
Spell Property VampireRaiseThrall02 Auto
Spell Property VampireStrength02 Auto
Spell Property VampireSunDamageNPC Auto
Spell Property VampireCharisma02 Auto
Spell Property VampireSleep Auto
Spell Property InvisibilityVampiric Auto
Spell Property VampireRankMistFormSpell Auto
Spell Property VampireRankFrostCloud04 Auto
Spell Property VampireRankIceFleshSpell04 Auto

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
Race Property FoxRace Auto
Race Property WoodElfRace  Auto  
Race Property WoodElfRaceVampire  Auto 

Int Property HoursSinceTurned Auto
Int Property CurrentlySearching Auto
Idle Property VampireFeedingBedrollLeft Auto
Spell Property ParalyzeNPCVampire Auto
Spell Property VampireRankBlinkAttackSpellNPC Auto
Keyword Property ActorTypeNPC Auto

GlobalVariable Property VampirePraestareRemoveAllFactions Auto
GlobalVariable Property VampireVictimSkills Auto
GlobalVariable Property VampireVictimAppearance Auto
GlobalVariable Property VampireTurnToAshes Auto
						
;======================================================================================;
;  VARIABLES   /
;=============/


actor Victim
race VictimRace
bool TargetIsImmune = True
; bool DeadAlready = FALSE

;======================================================================================;
;   EVENTS     /
;=============/


Event OnEffectStart(Actor VampTarget, Actor Caster)

	victim = VampTarget
	HoursSinceTurned = 0
	; DeadAlready = Victim.IsDead()
	trace("victim == " + victim + ", is this right?")
	
			victim.StopCombat()

			;If VampirePraestareRemoveAllFactions.GetValue() == 10000
			;	victim.RemoveFromAllFactions()
			;EndIf
			
			;Remove From Crime Factions
			victim.RemoveFromFaction(CrimeFactionEastmarch)			
			victim.RemoveFromFaction(CrimeFactionFalkreath)	
			victim.RemoveFromFaction(CrimeFactionHjaalmarch)	
			victim.RemoveFromFaction(CrimeFactionImperial)	
			victim.RemoveFromFaction(CrimeFactionOrcs)	
			victim.RemoveFromFaction(CrimeFactionPale)	
			victim.RemoveFromFaction(CrimeFactionReach)	
			victim.RemoveFromFaction(CrimeFactionRift)	
			victim.RemoveFromFaction(CrimeFactionSons)	
			victim.RemoveFromFaction(CrimeFactionWhiterun)	
			victim.RemoveFromFaction(CrimeFactionWinterhold)	
			victim.RemoveFromFaction(VigilantOfStendarrFaction)
			victim.RemoveFromFaction(VampireHunter)
			victim.RemoveFromFaction(DLC1HunterFaction)
			victim.RemoveFromFaction(DLC1DawnguardFaction)
			victim.RemoveFromFaction(DLC1DawnguardExteriorGuardFaction)			
			
			;Remove From Guard Factions
			victim.RemoveFromFaction(WERoad02BodyguardFaction)
			victim.RemoveFromFaction(MorthalGuardhouseFaction)
			victim.RemoveFromFaction(dunDawnstarSanctuaryGuardianFaction)
			victim.RemoveFromFaction(MS03ChaletGuardEnemyFaction)
			victim.RemoveFromFaction(MQ201ExteriorGuardFaction)
			victim.RemoveFromFaction(MQ201PartyGuardFaction)
			victim.RemoveFromFaction(DragonsreachBasementGuards)
			victim.RemoveFromFaction(CWWhiterunGuardNeutralFaction)
			victim.RemoveFromFaction(GuardFactionWindhelm)
			victim.RemoveFromFaction(GuardFactionRiften)
			victim.RemoveFromFaction(CaravanGuard)
			victim.RemoveFromFaction(OrcGuardFaction)
			victim.RemoveFromFaction(DA02GuardsPlayerEnemy)
			victim.RemoveFromFaction(DA02GuardFaction)
			victim.RemoveFromFaction(IsGuardFaction)
			victim.RemoveFromFaction(JobGuardCaptainFaction)
			victim.RemoveFromFaction(KarthwastenSilverFishGuards)
			victim.RemoveFromFaction(GuardFactionCidhnaMine)
			victim.RemoveFromFaction(GuardFactionKolskeggr)
			victim.RemoveFromFaction(GuardFactionSoljund)
			victim.RemoveFromFaction(GuardFactionDawnstar)
			victim.RemoveFromFaction(GuardFactionHaafingar)
			victim.RemoveFromFaction(GuardFactionSolitude)
			victim.RemoveFromFaction(GuardFactionDragonbridge)
			victim.RemoveFromFaction(GuardFactionFalkreath)	
			victim.RemoveFromFaction(GuardFactionKarthwasten)	
			victim.RemoveFromFaction(GuardFactionMarkarth)
			victim.RemoveFromFaction(GuardFactionWhiterun)
			victim.RemoveFromFaction(CWSonsFaction)
			victim.RemoveFromFaction(CWSonsFactionNPC)
			victim.RemoveFromFaction(CWImperialFaction)
			victim.RemoveFromFaction(CWImperialFactionNPC)			
			
			;Remove From Player Hated Factions			
			victim.RemoveFromFaction(CWMission08AllGiantsPlayerFriendFaction)
			victim.RemoveFromFaction(DA02CulistsPlayerEnemy)
			victim.RemoveFromFaction(DA02CultistsAreEnemies)
			victim.RemoveFromFaction(DA02ElisifAfraidOfPlayer)
			victim.RemoveFromFaction(DA07PlayerEnemyFaction)
			victim.RemoveFromFaction(DA10PlayerEnemyFaction)
			victim.RemoveFromFaction(DA11AttackPlayerFaction)
			victim.RemoveFromFaction(DA16OrcAmbushFaction)
			victim.RemoveFromFaction(DA16VaerminaHostileFaction)
			victim.RemoveFromFaction(DB11KatariahCrewFaction)
			victim.RemoveFromFaction(dunMarkarthWizard_SecureAreaFaction)
			victim.RemoveFromFaction(dunYsgramorsTombGhostFaction)
			victim.RemoveFromFaction(dunKarthwastenPlayerEnemyFaction)
			victim.RemoveFromFaction(MarriageRivalAttackFaction)
			victim.RemoveFromFaction(MG03CallerFaction)
			victim.RemoveFromFaction(MGThalmorFaction)
			victim.RemoveFromFaction(MS01PlayerEnemyFaction)
			victim.RemoveFromFaction(RiftenRatwayFactionEnemy)
			victim.RemoveFromFaction(RiftenSkoomaDealerFactionEnemy)
			victim.RemoveFromFaction(T03HatePlayerFaction)
			victim.RemoveFromFaction(TG02AringothPlayerEnemyFaction)
			victim.RemoveFromFaction(TG04EastEmpireFactionHostile)
			victim.RemoveFromFaction(TG07ValdFactionHatesPlayer)
			victim.RemoveFromFaction(TG08BMercerHatesPlayerFaction)
			victim.RemoveFromFaction(TG09NightingaleEnemyFaction)
			victim.RemoveFromFaction(TGTQ04NiranyeAttacksFaction)
			victim.RemoveFromFaction(WEAdventureHorseRiderFaction)
			victim.RemoveFromFaction(WEPlayerEnemy)
			victim.RemoveFromFaction(WEThalmorPlayerEnemyFaction)
			victim.RemoveFromFaction(WIPlayerEnemyFaction)
			victim.RemoveFromFaction(WIPlayerEnemySpecialCombatFaction)

			;Many NPCs are actually part of the Fox Race
			;If (victim.GetActorBase().GetRace() == FoxRace)
			;	victim.SetRace(NordRaceVampire)
			;	victim.RemoveFromAllFactions()
			;EndIf
			
			victim.StopCombat()				
			
			utility.wait(0.5)			
			victim.AddtoFaction(VampirePCFamily)
			victim.SetFactionRank(VampirePCFamily, 0)
			victim.AddtoFaction(DummyFaction)
			victim.SetFactionRank(DummyFaction, 0)	
			
			If victim.IsInFaction(PotentialFollowerFaction) || victim.IsInFaction(CurrentFollowerFaction)
			Else
				victim.SetRelationshipRank(Game.GetPlayer(), 4)
				Game.GetPlayer().SetRelationshipRank(victim, 4)
				victim.AddtoFaction(PotentialFollowerFaction)
				victim.SetFactionRank(PotentialFollowerFaction, 0)
			EndIf

			victim.SetActorValue("Assistance", 2)
			victim.SetActorValue("Aggression", 1)
			victim.SetActorValue("Confidence", 4)
			victim.SetActorValue("Morality", 0)				

			victim.SetActorValue("Variable05", 666)			
			
		If VampireVictimAppearance.GetValue() == 0
			if (victim.GetActorBase().GetRace() == ArgonianRace)
				victim.SetRace(ArgonianRaceVampire)
			elseif (victim.GetActorBase().GetRace() == BretonRace)
				victim.SetRace(BretonRaceVampire)
			elseif (victim.GetActorBase().GetRace() == DarkElfRace)
				victim.SetRace(DarkElfRaceVampire)
			elseif (victim.GetActorBase().GetRace() == ElderRace)
				victim.SetRace(ElderRaceVampire)				
			elseif (victim.GetActorBase().GetRace() == HighElfRace)
				victim.SetRace(HighElfRaceVampire)
			elseif (victim.GetActorBase().GetRace() == ImperialRace)
				victim.SetRace(ImperialRaceVampire)
			elseif (victim.GetActorBase().GetRace() == KhajiitRace)
				victim.SetRace(KhajiitRaceVampire)
			elseif (victim.GetActorBase().GetRace() == NordRace)
				victim.SetRace(NordRaceVampire)
			elseif (victim.GetActorBase().GetRace() == OrcRace)
				victim.SetRace(OrcRaceVampire)
			elseif (victim.GetActorBase().GetRace() == RedguardRace)
				victim.SetRace(RedguardRaceVampire)
			elseif (victim.GetActorBase().GetRace() == WoodElfRace)
				victim.SetRace(WoodElfRaceVampire)
			endif
		EndIf
			
			If VampireVictimSkills.GetValue() == 0
			
				Float PlayerHealth = Game.GetPlayer().GetBaseActorValue("Health")
				Float VictimHealth = PlayerHealth
				victim.SetActorValue("Health", VictimHealth)
				
				Float PlayerMagicka = Game.GetPlayer().GetBaseActorValue("Magicka")
				victim.SetActorValue("Magicka", PlayerMagicka)			
				
				victim.SetActorValue("Sneak", 100)				
				
				Float Player1Hand = Game.GetPlayer().GetActorValue("OneHanded")
				victim.SetActorValue("OneHanded", Player1Hand)
				
				Float Player2Hand= Game.GetPlayer().GetActorValue("TwoHanded")
				victim.SetActorValue("TwoHanded", Player2Hand)

				Float PlayerMarksman = Game.GetPlayer().GetActorValue("Marksman")
				victim.SetActorValue("Marksman", PlayerMarksman)	
				
				Float PlayerBlock = Game.GetPlayer().GetActorValue("Block")
				victim.SetActorValue("Block", PlayerBlock)
				
				Float PlayerDamageResist = Game.GetPlayer().GetActorValue("DamageResist")
				victim.SetActorValue("DamageResist", PlayerDamageResist)
				
			EndIf	
			
			victim.SetActorValue("Sneak", 100)				
			
			victim.SetAttackActorOnSight(False)	
			
			victim.AddSpell(ABVampireSkills, abVerbose = False)
			victim.AddSpell(ABVampireSkills02, abVerbose = False)
			victim.AddSpell(AbVampire02, abVerbose = False)
			victim.AddSpell(AbVampire02b, abVerbose = False)
			victim.AddSpell(VampireVampirism, abVerbose = False)
			victim.AddSpell(crVampireDrain03, abVerbose = False)
			;victim.AddSpell(VampireRankFrostCloud04, abVerbose = False)
			victim.AddSpell(VampireRankIceFleshSpell04, abVerbose = False)
			victim.AddSpell(VampireRankMistFormSpell, abVerbose = False)
			victim.AddSpell(VampireRaiseThrall02, abVerbose = False)
			victim.AddSpell(VampireStrength02, abVerbose = False)
			victim.AddSpell(VampireSunDamageNPC, abVerbose = False)
			victim.AddSpell(VampireCharisma02, abVerbose = False)
			victim.AddSpell(VampireSleep, abVerbose = False)
			victim.AddSpell(InvisibilityVampiric, abVerbose = False)
			
			utility.wait(1.0)			
	
			victim.StopCombat()
			
			CurrentlySearching = 0
			
			;victim.EvaluatePackage()
			If victim.IsOnMount()
			Else
				Float VictimWeight = victim.GetWeight()
				victim.SetWeight(50)		
				victim.SetWeight(VictimWeight)
				victim.QueueNiNodeUpdate()
			EndIf			
			
			RegisterForUpdateGameTime(1)
	
EndEvent

;==============================================================================================

Event OnUpdateGameTime()

			victim.SetAttackActorOnSight(False)	
			
			; DeadAlready = Victim.IsDead()
			trace("victim == " + victim + ", is this right?")

			;If VampirePraestareRemoveAllFactions.GetValue() == 10000
			;	victim.RemoveFromAllFactions()
			;EndIf
			
			;Remove From Crime Factions
			victim.RemoveFromFaction(CrimeFactionEastmarch)			
			victim.RemoveFromFaction(CrimeFactionFalkreath)	
			victim.RemoveFromFaction(CrimeFactionHjaalmarch)	
			victim.RemoveFromFaction(CrimeFactionImperial)	
			victim.RemoveFromFaction(CrimeFactionOrcs)	
			victim.RemoveFromFaction(CrimeFactionPale)	
			victim.RemoveFromFaction(CrimeFactionReach)	
			victim.RemoveFromFaction(CrimeFactionRift)	
			victim.RemoveFromFaction(CrimeFactionSons)	
			victim.RemoveFromFaction(CrimeFactionWhiterun)	
			victim.RemoveFromFaction(CrimeFactionWinterhold)	
			victim.RemoveFromFaction(VigilantOfStendarrFaction)
			victim.RemoveFromFaction(VampireHunter)
			victim.RemoveFromFaction(DLC1HunterFaction)
			victim.RemoveFromFaction(DLC1DawnguardFaction)
			victim.RemoveFromFaction(DLC1DawnguardExteriorGuardFaction)					
			
			;Remove From Guard Factions
			victim.RemoveFromFaction(WERoad02BodyguardFaction)
			victim.RemoveFromFaction(MorthalGuardhouseFaction)
			victim.RemoveFromFaction(dunDawnstarSanctuaryGuardianFaction)
			victim.RemoveFromFaction(MS03ChaletGuardEnemyFaction)
			victim.RemoveFromFaction(MQ201ExteriorGuardFaction)
			victim.RemoveFromFaction(MQ201PartyGuardFaction)
			victim.RemoveFromFaction(DragonsreachBasementGuards)
			victim.RemoveFromFaction(CWWhiterunGuardNeutralFaction)
			victim.RemoveFromFaction(GuardFactionWindhelm)
			victim.RemoveFromFaction(GuardFactionRiften)
			victim.RemoveFromFaction(CaravanGuard)
			victim.RemoveFromFaction(OrcGuardFaction)
			victim.RemoveFromFaction(DA02GuardsPlayerEnemy)
			victim.RemoveFromFaction(DA02GuardFaction)
			victim.RemoveFromFaction(IsGuardFaction)
			victim.RemoveFromFaction(JobGuardCaptainFaction)
			victim.RemoveFromFaction(KarthwastenSilverFishGuards)
			victim.RemoveFromFaction(GuardFactionCidhnaMine)
			victim.RemoveFromFaction(GuardFactionKolskeggr)
			victim.RemoveFromFaction(GuardFactionSoljund)
			victim.RemoveFromFaction(GuardFactionDawnstar)
			victim.RemoveFromFaction(GuardFactionHaafingar)
			victim.RemoveFromFaction(GuardFactionSolitude)
			victim.RemoveFromFaction(GuardFactionDragonbridge)
			victim.RemoveFromFaction(GuardFactionFalkreath)	
			victim.RemoveFromFaction(GuardFactionKarthwasten)	
			victim.RemoveFromFaction(GuardFactionMarkarth)
			victim.RemoveFromFaction(GuardFactionWhiterun)
			victim.RemoveFromFaction(CWSonsFaction)
			victim.RemoveFromFaction(CWSonsFactionNPC)
			victim.RemoveFromFaction(CWImperialFaction)
			victim.RemoveFromFaction(CWImperialFactionNPC)			
			
			;Remove From Player Hated Factions			
			victim.RemoveFromFaction(CWMission08AllGiantsPlayerFriendFaction)
			victim.RemoveFromFaction(DA02CulistsPlayerEnemy)
			victim.RemoveFromFaction(DA02CultistsAreEnemies)
			victim.RemoveFromFaction(DA02ElisifAfraidOfPlayer)
			victim.RemoveFromFaction(DA07PlayerEnemyFaction)
			victim.RemoveFromFaction(DA10PlayerEnemyFaction)
			victim.RemoveFromFaction(DA11AttackPlayerFaction)
			victim.RemoveFromFaction(DA16OrcAmbushFaction)
			victim.RemoveFromFaction(DA16VaerminaHostileFaction)
			victim.RemoveFromFaction(DB11KatariahCrewFaction)
			victim.RemoveFromFaction(dunMarkarthWizard_SecureAreaFaction)
			victim.RemoveFromFaction(dunYsgramorsTombGhostFaction)
			victim.RemoveFromFaction(dunKarthwastenPlayerEnemyFaction)
			victim.RemoveFromFaction(MarriageRivalAttackFaction)
			victim.RemoveFromFaction(MG03CallerFaction)
			victim.RemoveFromFaction(MGThalmorFaction)
			victim.RemoveFromFaction(MS01PlayerEnemyFaction)
			victim.RemoveFromFaction(RiftenRatwayFactionEnemy)
			victim.RemoveFromFaction(RiftenSkoomaDealerFactionEnemy)
			victim.RemoveFromFaction(T03HatePlayerFaction)
			victim.RemoveFromFaction(TG02AringothPlayerEnemyFaction)
			victim.RemoveFromFaction(TG04EastEmpireFactionHostile)
			victim.RemoveFromFaction(TG07ValdFactionHatesPlayer)
			victim.RemoveFromFaction(TG08BMercerHatesPlayerFaction)
			victim.RemoveFromFaction(TG09NightingaleEnemyFaction)
			victim.RemoveFromFaction(TGTQ04NiranyeAttacksFaction)
			victim.RemoveFromFaction(WEAdventureHorseRiderFaction)
			victim.RemoveFromFaction(WEPlayerEnemy)
			victim.RemoveFromFaction(WEThalmorPlayerEnemyFaction)
			victim.RemoveFromFaction(WIPlayerEnemyFaction)
			victim.RemoveFromFaction(WIPlayerEnemySpecialCombatFaction)

			;Many NPCs are actually part of the Fox Race
			;If (victim.GetActorBase().GetRace() == FoxRace)
			;	victim.SetRace(NordRaceVampire)
			;	victim.RemoveFromAllFactions()
			;EndIf
			
			victim.AddtoFaction(VampirePCFamily)
			victim.SetFactionRank(VampirePCFamily, 0)
			victim.AddtoFaction(DummyFaction)
			victim.SetFactionRank(DummyFaction, 0)
			
			If victim.IsInFaction(PotentialFollowerFaction) || victim.IsInFaction(CurrentFollowerFaction)
			Else
				victim.SetRelationshipRank(Game.GetPlayer(), 4)
				Game.GetPlayer().SetRelationshipRank(victim, 4)
				victim.AddtoFaction(PotentialFollowerFaction)
				victim.SetFactionRank(PotentialFollowerFaction, 0)
			EndIf

			victim.SetActorValue("Assistance", 2)
			victim.SetActorValue("Aggression", 1)
			victim.SetActorValue("Confidence", 4)
			victim.SetActorValue("Morality", 0)			

			victim.SetActorValue("Variable05", 666)				
			
		If VampireVictimAppearance.GetValue() == 0
			if (victim.GetActorBase().GetRace() == ArgonianRace)
				victim.SetRace(ArgonianRaceVampire)
			elseif (victim.GetActorBase().GetRace() == BretonRace)
				victim.SetRace(BretonRaceVampire)
			elseif (victim.GetActorBase().GetRace() == DarkElfRace)
				victim.SetRace(DarkElfRaceVampire)
			elseif (victim.GetActorBase().GetRace() == ElderRace)
				victim.SetRace(ElderRaceVampire)					
			elseif (victim.GetActorBase().GetRace() == HighElfRace)
				victim.SetRace(HighElfRaceVampire)
			elseif (victim.GetActorBase().GetRace() == ImperialRace)
				victim.SetRace(ImperialRaceVampire)
			elseif (victim.GetActorBase().GetRace() == KhajiitRace)
				victim.SetRace(KhajiitRaceVampire)
			elseif (victim.GetActorBase().GetRace() == NordRace)
				victim.SetRace(NordRaceVampire)
			elseif (victim.GetActorBase().GetRace() == OrcRace)
				victim.SetRace(OrcRaceVampire)
			elseif (victim.GetActorBase().GetRace() == RedguardRace)
				victim.SetRace(RedguardRaceVampire)
			elseif (victim.GetActorBase().GetRace() == WoodElfRace)
				victim.SetRace(WoodElfRaceVampire)
			endif
		EndIf
			
			If VampireVictimSkills.GetValue() == 0			
			
				Float PlayerHealth = Game.GetPlayer().GetBaseActorValue("Health")
				Float VictimHealth = PlayerHealth
				victim.SetActorValue("Health", VictimHealth)
				
				Float PlayerMagicka = Game.GetPlayer().GetBaseActorValue("Magicka")
				victim.SetActorValue("Magicka", PlayerMagicka)			
				
				victim.SetActorValue("Sneak", 100)				
				
				Float Player1Hand = Game.GetPlayer().GetActorValue("OneHanded")
				victim.SetActorValue("OneHanded", Player1Hand)
				
				Float Player2Hand= Game.GetPlayer().GetActorValue("TwoHanded")
				victim.SetActorValue("TwoHanded", Player2Hand)

				Float PlayerMarksman = Game.GetPlayer().GetActorValue("Marksman")
				victim.SetActorValue("Marksman", PlayerMarksman)	
				
				Float PlayerBlock = Game.GetPlayer().GetActorValue("Block")
				victim.SetActorValue("Block", PlayerBlock)
				
				Float PlayerDamageResist = Game.GetPlayer().GetActorValue("DamageResist")
				victim.SetActorValue("DamageResist", PlayerDamageResist)		
				
			EndIf
			
			victim.SetActorValue("Sneak", 100)
			
			victim.SetAttackActorOnSight(False)
			
			victim.AddSpell(ABVampireSkills, abVerbose = False)
			victim.AddSpell(ABVampireSkills02, abVerbose = False)
			victim.AddSpell(AbVampire02, abVerbose = False)
			victim.AddSpell(AbVampire02b, abVerbose = False)
			victim.AddSpell(VampireVampirism, abVerbose = False)
			victim.AddSpell(crVampireDrain03, abVerbose = False)
			victim.AddSpell(VampireCharm, abVerbose = False)				
			;victim.AddSpell(VampireRankFrostCloud04, abVerbose = False)
			victim.AddSpell(VampireRankIceFleshSpell04, abVerbose = False)
			victim.AddSpell(VampireRankMistFormSpell, abVerbose = False)
			victim.AddSpell(VampireRaiseThrall02, abVerbose = False)
			victim.AddSpell(VampireStrength02, abVerbose = False)
			victim.AddSpell(VampireSunDamageNPC, abVerbose = False)
			victim.AddSpell(VampireCharisma02, abVerbose = False)
			victim.AddSpell(VampireSleep, abVerbose = False)
			victim.AddSpell(InvisibilityVampiric, abVerbose = False)
			;victim.AddSpell(VampireTurnToAshPile, abVerbose = False)

			;victim.EvaluatePackage()
			If victim.IsOnMount()
			Else
				Float VictimWeight = victim.GetWeight()
				victim.SetWeight(50)		
				victim.SetWeight(VictimWeight)
				victim.QueueNiNodeUpdate()
			EndIf			
	
;----------------------------------------------------	
;WORK IN PROGRESS!

			HoursSinceTurned = HoursSinceTurned + 1
			
			;Debug.Notification("Hours since turned = "+HoursSinceTurned)
			
			If HoursSinceTurned >= 12 && CurrentlySearching == 0

			;Debug.Notification("NPC Vampire is hungry!")
			
				;While HoursSinceTurned >= 12 
					
					Actor RandomFeedTarget = Game.FindRandomActorFromRef(victim, 1024)
					CurrentlySearching = 1
					Race RandomFeedTargetRace = RandomFeedTarget.GetRace()
					
					If (RandomFeedTargetRace == ArgonianRace) || (RandomFeedTargetRace == BretonRace) || (RandomFeedTargetRace == DarkElfRace) || (RandomFeedTargetRace == HighElfRace) || (RandomFeedTargetRace == ImperialRace) || (RandomFeedTargetRace == KhajiitRace) || (RandomFeedTargetRace == NordRace) || (RandomFeedTargetRace == OrcRace) || (RandomFeedTargetRace == RedguardRace) || (RandomFeedTargetRace == FoxRace) || (RandomFeedTargetRace == WoodElfRace)
					
						If RandomFeedTarget != victim && RandomFeedTarget != Game.GetPlayer()
							victim.AddSpell(ParalyzeNPCVampire, abVerbose = False)						
							;Debug.Notification("Vampire NPC about to feed on "+RandomFeedTarget+" in 5 sec!")
							utility.wait(5.0)
							ParalyzeNPCVampire.Cast(victim, RandomFeedTarget)
							;Debug.Notification("Paralyzed!")
							utility.wait(2.0)
							victim.RemoveSpell(ParalyzeNPCVampire)
							victim.AddSpell(VampireRankBlinkAttackSpellNPC, abVerbose = False)
							VampireRankBlinkAttackSpellNPC.Cast(victim, victim)
							victim.MoveTo(RandomFeedTarget, abMatchRotation = false)
							victim.PlayIdle(VampireFeedingBedrollLeft)
							utility.wait(5.0)
							victim.RemoveSpell(VampireRankBlinkAttackSpellNPC)						
							HoursSinceTurned = 0
							CurrentlySearching = 0
						Else
							;Debug.Notification("no target...")
						EndIf
					
					EndIf
				
				;EndWhile
			
			CurrentlySearching = 0
			
			EndIf
			
EndEvent

;==============================================================================================

Event OnDying(Actor Killer)

			 UnregisterForUpdateGameTime()
             utility.wait(0.1)
			 
		If VampireTurnToAshes.GetValue() == 0			 
             victim.SetCriticalStage(Victim.CritStage_DisintegrateStart)
             ;victim.SetAlpha (0.99,False)
             MagicEffectShader.play(Victim,ShaderDuration)
             if bSetAlphaToZeroEarly
                   victim.SetAlpha (0.0,True)
             endif
             utility.wait(fDelay)
             Victim.AttachAshpile(AshPileObject)
             ; AshPileRef = AshPileObject
             ; AshPileRef.SetAngle(0.0,0.0,(Victim.GetAngleZ()))
             utility.wait(fDelayEnd)
             MagicEffectShader.stop(Victim)
             if bSetAlphaZero == True
                    victim.SetAlpha (0.0,True)
             endif
             utility.wait(fDelayEnd)
		EndIf	 
			 UnregisterForUpdateGameTime()
			 
EndEvent

;==============================================================================================

Event OnEffectFinish(Actor VampTarget, Actor Caster)

		 UnregisterForUpdateGameTime()

EndEvent
