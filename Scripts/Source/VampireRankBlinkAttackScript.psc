Scriptname VampireRankBlinkAttackScript extends activemagiceffect

Actor Property BlinkTarget Auto
Sound Property QSTDA09LightBeamOn Auto

GlobalVariable Property RECASTVampireBlink Auto

EVENT OnEffectStart(Actor akTarget, Actor akBlinkCaster)

	If RECASTVampireBlink.GetValue() != 1
		RECASTVampireBlink.SetValue(1)
		Utility.Wait(0.1)
		
		Int instanceID1 = QSTDA09LightBeamOn.Play(Game.GetPlayer())
		Sound.SetInstanceVolume(instanceID1, 1.0)
		Utility.Wait(0.3)
		
		Game.GetPlayer().DamageAV("Stamina", 1000)		
		Game.GetPlayer().MoveTo(akTarget, -120 * Math.Sin(akTarget.GetAngleZ()), -120 * Math.Cos(akTarget.GetAngleZ()), 0, abMatchRotation = true)

		Debug.Notification("You need to rest before attempting to blink again")			
		Utility.WaitGameTime(0.666)
		Utility.Wait(0.1)
		RECASTVampireBlink.SetValue(0)
		Debug.Notification("Blink Attack is available for use")
		
	EndIf	

EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	

	
EndEvent
