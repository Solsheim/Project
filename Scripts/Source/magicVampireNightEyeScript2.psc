scriptName magicVampireNightEyeScript2 extends ActiveMagicEffect
{Scripted effect for the Night Eye Spell}

Spell Property VampireDetectAll02 Auto
Spell Property VampireDetectAll03 Auto
GlobalVariable Property NightEyeTransitionGlobal Auto
GlobalVariable Property VampireRevealAuras Auto
MagicEffect Property VampireDetectLifeIsTurnedOn Auto

Event OnEffectStart(Actor DetectTarget, Actor DetectCaster)

	;If Game.GetPlayer().HasMagicEffect(VampireDetectLifeIsTurnedOn) == True
	;	Game.GetPlayer().AddSpell(VampireDetectAll03, abVerbose = False)
	;	VampireDetectAll02.Cast(Game.GetPlayer(), Game.GetPlayer())
	;	Game.GetPlayer().RemoveSpell(VampireDetectAll03)
	;EndIf

	;If Game.GetPlayer().HasMagicEffect(VampireDetectLifeIsTurnedOn) == False	
		Game.GetPlayer().AddSpell(VampireDetectAll02, abVerbose = False)
		VampireDetectAll02.Cast(Game.GetPlayer(), Game.GetPlayer())
		Game.GetPlayer().RemoveSpell(VampireDetectAll02)
	;EndIf

	RegisterForUpdate(4)		
	
EndEvent

Event OnUpdate()

	If NightEyeTransitionGlobal.GetValue() == 2.0
	
		;If Game.GetPlayer().HasMagicEffect(VampireDetectLifeIsTurnedOn) == True
		;	Game.GetPlayer().DispelSpell(VampireDetectAll02)
		;	Game.GetPlayer().RemoveSpell(VampireDetectAll02)
		;	Game.GetPlayer().AddSpell(VampireDetectAll03, abVerbose = False)
		;	VampireDetectAll03.Cast(Game.GetPlayer(), Game.GetPlayer())
		;	Game.GetPlayer().RemoveSpell(VampireDetectAll03)	
		;EndIf
		
		;If Game.GetPlayer().HasMagicEffect(VampireDetectLifeIsTurnedOn) == False
		If (VampireRevealAuras.GetValue() == 0)
			Game.GetPlayer().AddSpell(VampireDetectAll02, abVerbose = False)
			VampireDetectAll02.Cast(Game.GetPlayer(), Game.GetPlayer())
			Game.GetPlayer().RemoveSpell(VampireDetectAll02)
		EndIf
		;EndIf

	EndIf
	
	If NightEyeTransitionGlobal.GetValue() == 0.0
	
		Game.GetPlayer().DispelSpell(VampireDetectAll02)
		Game.GetPlayer().RemoveSpell(VampireDetectAll02)
		;Game.GetPlayer().DispelSpell(VampireDetectAll03)
		;Game.GetPlayer().RemoveSpell(VampireDetectAll03)			
		UnRegisterForUpdate()
		;Debug.Notification("Unregistered Update")		
		
	EndIf

	;Debug.Notification("magicVampireNightEyeScript2 Done")
	
EndEvent

