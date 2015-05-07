Scriptname VampireTelekinesis2Script extends activemagiceffect

Sound Property MAGAlterationTelekinesisThrowSD Auto

GlobalVariable Property RECASTVampireUnholyGrasp Auto

EVENT OnEffectStart(Actor akTKTarget, Actor akTKCaster)


		
EndEvent

Event OnEffectFinish(Actor akTKTarget, Actor akTKCaster)
	
		Int instanceID2 = MAGAlterationTelekinesisThrowSD.Play(Game.GetPlayer())
		Sound.SetInstanceVolume(instanceID2, 0.7)
		
		If RECASTVampireUnholyGrasp.GetValue() != 1
			RECASTVampireUnholyGrasp.SetValue(1)
			Debug.Notification("You need to rest before attempting Unholy Grasp again")				
			Utility.WaitGameTime(1.0)
			Utility.Wait(0.1)
			RECASTVampireUnholyGrasp.SetValue(0)
			Debug.Notification("Unholy Grasp is available for use")			
		EndIf
	
EndEvent
