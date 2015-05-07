Scriptname VampireIncreaseNecksBittenScript extends activemagiceffect


EVENT OnEffectStart(Actor akTarget, Actor akCaster)

	Game.IncrementStat("Necks Bitten", 100)
	
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)

	Int NewNecksBitten = Game.QueryStat("Necks Bitten")
	Debug.Notification("You have now fed upon blood "+NewNecksBitten+" times.")
	
EndEvent
