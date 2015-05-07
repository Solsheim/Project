Scriptname VampireTelekinesisScript extends activemagiceffect

Actor Property TKTargetRef Auto
Spell Property VampireRankTelekinesis Auto
Sound Property MAGAlterationTelekinesisGrabSD Auto

EVENT OnEffectStart(Actor akTKTarget, Actor akTKCaster)

		akTKCaster.AddSpell(VampireRankTelekinesis, abVerbose = False)
		VampireRankTelekinesis.Cast(Game.GetPlayer())
		akTKCaster.RemoveSpell(VampireRankTelekinesis)	
		
		Int instanceID1 = MAGAlterationTelekinesisGrabSD.Play(Game.GetPlayer())
		Sound.SetInstanceVolume(instanceID1, 1.0)

		Game.GetPlayer().DamageAV("Stamina", 1000)		

		utility.wait(5.0)
		
		float TKVictimsHealth = akTKTarget.GetBaseActorValue("Health")
		float TKDrainDamage = TKVictimsHealth*0.1
		akTKTarget.DamageActorValue("Health", TKDrainDamage)
		
EndEvent

Event OnEffectFinish(Actor akTKTarget, Actor akTKCaster)
	

	
EndEvent
