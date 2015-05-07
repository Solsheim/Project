scriptName VampireRevealAurasScript extends ActiveMagicEffect
{Scripted effect for the Night Eye Spell}

Spell Property VampireDetectAll02 Auto
Spell Property VampireDetectAll03 Auto
Spell Property VampireDetectAll04 Auto
GlobalVariable Property VampireRevealAuras Auto
ImageSpaceModifier Property defaultDesaturateImod Auto 
Sound Property QSTBeamMeridiaStatueRelease Auto
Sound Property MAGAlterationReleaseSD Auto

Event OnEffectStart(Actor DetectTarget, Actor DetectCaster)

	If (VampireRevealAuras.GetValue() == 0)
		QSTBeamMeridiaStatueRelease.Play(Game.GetPlayer())
		defaultDesaturateImod.applyCrossFade(2.0)
		Game.GetPlayer().DispelSpell(VampireDetectAll02)
		Game.GetPlayer().RemoveSpell(VampireDetectAll02)
		Game.GetPlayer().AddSpell(VampireDetectAll03, abVerbose = False)
		VampireDetectAll03.Cast(Game.GetPlayer(), Game.GetPlayer())
		Game.GetPlayer().RemoveSpell(VampireDetectAll03)
		VampireRevealAuras.SetValue(10000)
		utility.wait(2.0)		
		imageSpaceModifier.removeCrossFade()
		RegisterForUpdate(4)
				
	ElseIf (VampireRevealAuras.GetValue() == 10000)
		MAGAlterationReleaseSD.Play(Game.GetPlayer())	
		Game.GetPlayer().DispelSpell(VampireDetectAll02)
		Game.GetPlayer().RemoveSpell(VampireDetectAll02)
		Game.GetPlayer().DispelSpell(VampireDetectAll03)
		Game.GetPlayer().RemoveSpell(VampireDetectAll03)
		VampireRevealAuras.SetValue(0)				
		UnRegisterForUpdate()		
	EndIf
	
EndEvent

Event OnUpdate()

		Bool RevealAuraCombat = Game.GetPlayer().IsInCombat()

		If RevealAuraCombat == False && VampireRevealAuras.GetValue() == 10000
			;Debug.Notification("OnUpdate")
			Game.GetPlayer().AddSpell(VampireDetectAll03, abVerbose = False)
			VampireDetectAll03.Cast(Game.GetPlayer(), Game.GetPlayer())
			Game.GetPlayer().RemoveSpell(VampireDetectAll03)
		
		ElseIf RevealAuraCombat == True
			Game.GetPlayer().DispelSpell(VampireDetectAll03)
			Game.GetPlayer().RemoveSpell(VampireDetectAll03)	

		ElseIf 	VampireRevealAuras.GetValue() == 0
			Game.GetPlayer().DispelSpell(VampireDetectAll03)
			Game.GetPlayer().RemoveSpell(VampireDetectAll03)
			UnRegisterForUpdate()	
			
		EndIf
	
EndEvent

