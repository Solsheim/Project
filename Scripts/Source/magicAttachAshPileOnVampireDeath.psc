scriptName magicAttachAshPileOnVampireDeath extends ActiveMagicEffect
{Scripted effect for on death ash pile}

import debug
import FormList

;======================================================================================;
;  PROPERTIES  /
;=============/

float property fDelay = 1.00 auto
									{time to wait before Spawning Ash Pile}
; float property fDelayAlpha = 1.65 auto
; 									{time to wait before Setting alpha to zero.}
float property fDelayEnd = 1.65 auto
									{time to wait before Removing Base Actor}
float property ShaderDuration = 0.00 auto
									{Duration of Effect Shader.}
Activator property AshPileObject auto
									{The object we use as a pile.}
EffectShader property MagicEffectShader auto
									{The Effect Shader we want.}
Bool property bSetAlphaZero = True auto
									{The Effect Shader we want.}
FormList Property ImmunityList auto
									{If the target is in this list, they will not be disintegrated.}
Bool property bSetAlphaToZeroEarly = False Auto
									{Use this if we want to set the acro to invisible somewhere before the effect shader is done.}

;======================================================================================;
;  VARIABLES   /
;=============/


actor victim2
race VictimRace
bool TargetIsImmune = True
; bool DeadAlready = FALSE
GlobalVariable Property VampireTurnToAshes Auto

;======================================================================================;
;   EVENTS     /
;=============/

Event OnEffectStart(Actor VampChangeTarget, Actor Caster)

	If VampireTurnToAshes.GetValue() == 0
		victim2 = VampChangeTarget
		; DeadAlready = victim2.IsDead()
		trace("victim2 == " + victim2 + ", is this right?")
	EndIf	
	
EndEvent


Event OnDying(Actor Killer)

	If VampireTurnToAshes.GetValue() == 0
		victim2.SetCriticalStage(victim2.CritStage_DisintegrateStart)
		 ;victim2.SetAlpha (0.99,False)
		 MagicEffectShader.play(victim2,ShaderDuration)
		 if bSetAlphaToZeroEarly
			   victim2.SetAlpha (0.0,True)
		 endif
		 utility.wait(fDelay)
		 victim2.AttachAshpile(AshPileObject)
		 ; AshPileRef = AshPileObject
		 ; AshPileRef.SetAngle(0.0,0.0,(victim2.GetAngleZ()))
		 utility.wait(fDelayEnd)
		 MagicEffectShader.stop(victim2)
		 if bSetAlphaZero == True
				victim2.SetAlpha (0.0,True)
		 endif
		 utility.wait(fDelayEnd)
	EndIf		 
			 
EndEvent
