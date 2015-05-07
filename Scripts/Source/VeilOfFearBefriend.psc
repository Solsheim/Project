ScriptName VeilOfFearBefriend extends ActiveMagicEffect
{Scripted addition to Veil of Fear to befriend the target then paralyze for feeding}

GlobalVariable Property GameDaysPassed Auto
GlobalVariable Property VeilOfFearUseCount  Auto
GlobalVariable Property VeilOfFearResetCounter  Auto


Event OnEffectStart(Actor akTarget, Actor Caster)
		
		Relation = akTarget.GetRelationshipRank(Game.GetPlayer())
		
		If !(akTarget.HasLOS(Game.GetPlayer())) && (Game.GetPlayer().IsSneaking())

			;akTarget.SetRelationshipRank(Game.GetPlayer(), 1)
			;akTarget.SetPlayerTeammate()

			;Debug.SendAnimationEvent(akTarget, "DeathAnim")
			;Utility.Wait(0.5)
			;akTarget.PushActorAway(akTarget, 0)	

			Caster.AddSpell(VampireSleep2, abVerbose = False)
			VampireSleep2.Cast(Game.GetPlayer(), akTarget)
			Caster.RemoveSpell(VampireSleep2)
			
			Caster.AddSpell(VampireSleep3, abVerbose = False)
			VampireSleep3.Cast(Game.GetPlayer(), akTarget)
			Caster.RemoveSpell(VampireSleep3)
			
			Caster.StopCombat()
			akTarget.StopCombat()
		
			;VeilOfFearResetCounter.SetValue(GameDaysPassed.Value)
			;VeilOfFearUseCount.SetValue((VeilOfFearUseCount.GetValue()+1))

			;akTarget.SetPlayerTeammate(false)
			;akTarget.SetRelationshipRank(Game.GetPlayer(), Relation)
			
		EndIf
		
		Caster.DispelSpell(VampireSleep)
		
EndEvent

Event OnEffectFinish(Actor akTarget, Actor Caster)

		;Caster.RemoveSpell(VampireSleep2)		
		utility.wait(7.0)
		;akTarget.SetRelationshipRank(Game.GetPlayer(), Relation)
		;akTarget.SetPlayerTeammate(false)
		Caster.StopCombat()
		akTarget.StopCombat()		
		
EndEvent

Spell Property VampireSleep Auto
Spell Property VampireSleep2 Auto
Spell Property VampireSleep3 Auto
Int Property Relation Auto