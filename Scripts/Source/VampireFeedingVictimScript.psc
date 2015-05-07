Scriptname VampireFeedingVictimScript extends activemagiceffect

Spell Property VampireVictimDamage Auto
Spell Property VampireVictimDamage2 Auto

EVENT OnEffectStart(Actor akFeedVictimTarget, Actor akCaster)

		akFeedVictimTarget.RemoveSpell(VampireVictimDamage)

		If akFeedVictimTarget.GetActorValue("Variable08") != 9
			akFeedVictimTarget.SetActorValue("Variable08", 11)
			utility.waitgametime(22)
			akFeedVictimTarget.RestoreActorValue("Health", 1000000)
			akFeedVictimTarget.SetActorValue("Variable08", 8)
			akFeedVictimTarget.RemoveSpell(VampireVictimDamage2)
		Else
			akFeedVictimTarget.RemoveSpell(VampireVictimDamage2)
		EndIf
		
EndEvent

Event OnEffectFinish(Actor akFeedVictimTarget, Actor akCaster)
	
	
EndEvent
