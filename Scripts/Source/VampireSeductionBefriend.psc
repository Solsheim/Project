ScriptName VampireSeductionBefriend extends ActiveMagicEffect
{Scripted addition to Vampire Seduction to charm the NPC and make them a teammate}

Faction Property VampirePCFamily Auto
Faction Property PotentialFollowerFaction Auto
Faction Property PlayerFaction Auto
Bool Property JustCharmed = false Auto
Bool Property InVampirePCFamily = false Auto 
Actor property CharmedPlayer Auto hidden
Actor property PCCombatTarget Auto hidden
;Spell Property VampireCharm Auto
Int Property Relation Auto
Keyword Property VampireHunterKeyword Auto

Event OnEffectStart(Actor akCharmTarget, Actor Caster)

	;InVampirePCFamily = False

	;If akCharmTarget.IsInFaction(VampirePCFamily)
	;	InVampirePCFamily = True
	;EndIf

	If (akCharmTarget.GetLevel() - Game.GetPlayer().GetLevel() <= 20 && akCharmTarget.IsPlayerTeammate() == False && akCharmTarget.HasKeyword(VampireHunterKeyword) == False) ;&& InVampirePCFamily == False)
		Relation = akCharmTarget.GetRelationshipRank(Game.GetPlayer())
		Caster.StopCombat()
		
		akCharmTarget.RemoveFromAllFactions()
		
		akCharmTarget.StopCombat()	
		akCharmTarget.AddToFaction(PlayerFaction)
		akCharmTarget.SetRelationshipRank(Game.GetPlayer(), 4)
		akCharmTarget.SetPlayerTeammate()
		akCharmTarget.SetActorValue("Assistance", 2)
		akCharmTarget.SetActorValue("Aggression", 1)
		akCharmTarget.SetActorValue("Confidence", 4)
		akCharmTarget.SetActorValue("Morality", 0)
		JustCharmed = True
		CharmedPlayer = akCharmTarget
		RegisterForUpdate(1)
	EndIf
	
	;If akCharmTarget.IsInFaction(VampirePCFamily)
	;	akCharmTarget.SetRelationshipRank(Game.GetPlayer(), 4)
	;	Game.GetPlayer().SetRelationshipRank(akCharmTarget, 4)
	;	akCharmTarget.AddtoFaction(PotentialFollowerFaction)
	;	akCharmTarget.SetFactionRank(PotentialFollowerFaction, 0)
	;	akCharmTarget.SetActorValue("Sneak", 100)	
	;	Utility.Wait(1.0)
	;	akCharmTarget.DispelSpell(VampireCharm)
	;	Debug.Notification("Your Vampire ally can now become your follower")
	;EndIf
	
EndEvent


Event OnEffectFinish(Actor akCharmTarget, Actor Caster)

	;If InVampirePCFamily == False
		UnregisterForUpdate()
		Utility.Wait(1.0)
		UnregisterForUpdate()

		If (akCharmTarget.GetLevel() - Game.GetPlayer().GetLevel() <= 20 && JustCharmed == True)
			akCharmTarget.ClearLookAt()
			akCharmTarget.ClearKeepOffsetFromActor()	
			akCharmTarget.RemoveFromFaction(VampirePCFamily)
			akCharmTarget.SetPlayerTeammate(False)
			akCharmTarget.SetRelationshipRank(Game.GetPlayer(), 0)
			akCharmTarget.SetRelationshipRank(Game.GetPlayer(), Relation)
			JustCharmed = False
		EndIf	
	
		UnregisterForUpdate()	
		
	;EndIf
	
EndEvent


Event OnUpdate()

	Utility.Wait(0.1)
	
If CharmedPlayer.IsDoingFavor()

Else	
	
	If Game.GetPlayer().IsWeaponDrawn()
		CharmedPlayer.ClearLookAt()
		CharmedPlayer.ClearKeepOffsetFromActor()
			If Game.GetPlayer().IsInCombat()
				PCCombatTarget = Game.GetPlayer().GetCombatTarget()
					If PCCombatTarget == Game.GetPlayer()
						CharmedPlayer.StopCombat()
					Else
						CharmedPlayer.StartCombat(PCCombatTarget)
					EndIf					
			EndIf
	Else
		CharmedPlayer.StopCombat()
		CharmedPlayer.SetLookAt(Game.GetPlayer(), true)
		float zOffset = CharmedPlayer.GetHeadingAngle(Game.GetPlayer())
		CharmedPlayer.SetAngle(CharmedPlayer.GetAngleX(), CharmedPlayer.GetAngleY(), CharmedPlayer.GetAngleZ() + zOffset)						
		CharmedPlayer.KeepOffsetFromActor(Game.GetPlayer(), 0, -250, 0, afOffsetAngleX = 0.0, afOffsetAngleY = 0.0,  afOffsetAngleZ = 0.0, afCatchUpRadius = 400.0, afFollowRadius = 250.0)
	EndIf
	
EndIf	
	
EndEvent

