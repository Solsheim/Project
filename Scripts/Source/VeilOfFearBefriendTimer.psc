ScriptName VeilOfFearBefriendTimer extends ActiveMagicEffect


Event OnEffectStart(Actor akTarget, Actor Caster)

		akTarget.SetActorValue("Variable07", 15)
	
EndEvent

Event OnEffectFinish(Actor akTarget, Actor Caster)

		akTarget.SetActorValue("Variable07", 0)
		
EndEvent
