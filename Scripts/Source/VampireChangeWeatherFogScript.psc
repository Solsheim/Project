Scriptname VampireChangeWeatherFogScript extends activemagiceffect


Weather Property SkyrimFogVampire Auto
imageSpaceModifier Property VampireSunlightISMD01  Auto 


EVENT OnEffectStart(Actor akTarget, Actor akCaster)

	VampireSunlightISMD01.applyCrossFade(2.0)
	SkyrimFogVampire.ForceActive(true)
	Utility.Wait(1.0)
	imageSpaceModifier.removeCrossFade()

	
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	
	Weather.ReleaseOverride()
	
EndEvent
