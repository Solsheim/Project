Scriptname VampireRankMistFormScript extends activemagiceffect

EffectShader Property SteamFXShaderVampire Auto
EffectShader Property ReanimateFXShaderVampire Auto
Spell Property VampireRankMistFormSpell Auto
GlobalVariable Property VampireRank Auto
Int Property SpeedIsOn Auto

GlobalVariable Property RECASTVampireMistwalker Auto

EVENT OnEffectStart(Actor akTarget, Actor akCaster)

	SpeedIsOn = 0
	Float Rank = VampireRank.GetValue()

	If SpeedIsOn == 0
		akCaster.SetAlpha(0, false)
		SteamFXShaderVampire.Play(akCaster)
		ReanimateFXShaderVampire.Play(akCaster)
		akCaster.SetAllowFlying()

		If Utility.GetIniFloat("fInAirFallingCharGravityMult:Havok") == 1.35
			Utility.SetIniFloat("fInAirFallingCharGravityMult:Havok",0.4)
		EndIf	
				
		If Rank == 10000
			;Game.GetPlayer().ModActorValue("SpeedMult", 25)
		ElseIf Rank == 20000
			;Game.GetPlayer().ModActorValue("SpeedMult", 25)	
		ElseIf Rank == 30000
			akCaster.ModActorValue("SpeedMult", 30)	
		ElseIf Rank == 40000
			akCaster.ModActorValue("SpeedMult", 40)
		ElseIf Rank == 50000
			akCaster.ModActorValue("SpeedMult", 50)
		ElseIf Rank >= 60000
			akCaster.ModActorValue("SpeedMult", 70)
		EndIf
		SpeedIsOn = 1
	
	Else
		SteamFXShaderVampire.Stop(akCaster)
		ReanimateFXShaderVampire.Stop(akCaster)
		akCaster.SetAlpha(1, true)
		akCaster.DispelSpell(VampireRankMistFormSpell)
		Utility.wait(1.0)
		akCaster.SetAllowFlying(False)	
		If Utility.GetIniFloat("fInAirFallingCharGravityMult:Havok") == 0.4
			Utility.SetIniFloat("fInAirFallingCharGravityMult:Havok",1.35)
		EndIf		
		SpeedIsOn = 0
		
			If Game.GetPlayer().IsOnMount()
			Else
				Float Weight = Game.GetPlayer().GetWeight()
				Game.GetPlayer().SetWeight(50)			
				Game.GetPlayer().SetWeight(Weight)
				Game.GetPlayer().QueueNiNodeUpdate()
			EndIf		
		
	EndIf
	
	If RECASTVampireMistwalker.GetValue() != 1
		RECASTVampireMistwalker.SetValue(1)
		;Utility.WaitMenuMode(20.0)
		;RECASTVampireMistwalker.SetValue(0)
	EndIf
	
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)

	Float Rank = VampireRank.GetValue()

	SteamFXShaderVampire.Stop(akCaster)
	ReanimateFXShaderVampire.Stop(akCaster)
	
		If Utility.GetIniFloat("fInAirFallingCharGravityMult:Havok") == 0.4
			Utility.SetIniFloat("fInAirFallingCharGravityMult:Havok",1.35)
		EndIf	

	If SpeedIsOn == 1
		If Rank == 10000
			;Game.GetPlayer().ModActorValue("SpeedMult", -25)
		ElseIf Rank == 20000
			;Game.GetPlayer().ModActorValue("SpeedMult", -25)		
		ElseIf Rank == 30000
			akCaster.ModActorValue("SpeedMult", -30)	
		ElseIf Rank == 40000
			akCaster.ModActorValue("SpeedMult", -40)	
		ElseIf Rank == 50000
			akCaster.ModActorValue("SpeedMult", -50)	
		ElseIf Rank >= 60000
			akCaster.ModActorValue("SpeedMult", -70)
		EndIf
		SpeedIsOn = 0
	EndIf
	
	akCaster.SetAlpha(1, true)
	akCaster.DispelSpell(VampireRankMistFormSpell)
	akCaster.SetAllowFlying(False)	
	;Game.EnablePlayerControls()

	
	If Game.GetPlayer().IsOnMount()
	Else
		Float Weight = Game.GetPlayer().GetWeight()
		Game.GetPlayer().SetWeight(50)			
		Game.GetPlayer().SetWeight(Weight)
		Game.GetPlayer().QueueNiNodeUpdate()
	EndIf	
	
	
	If RECASTVampireMistwalker.GetValue() == 1
		Debug.Notification("You need to rest before attempting to mistwalk again")	
		;RECASTVampireMistwalker.SetValue(1)
		Utility.WaitGameTime(0.333)
		Utility.Wait(0.1)
		RECASTVampireMistwalker.SetValue(0)
		Debug.Notification("Mistwalker is available for use")		
	EndIf
	
EndEvent
