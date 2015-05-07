Scriptname VampireDamageStaminaScript extends activemagiceffect

EVENT OnEffectStart(Actor akTarget, Actor akCaster)

	Game.GetPlayer().DamageAV("Stamina", 1000000)

EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	

	
EndEvent
