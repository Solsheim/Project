Scriptname VampireSunISMDEffectScriptCancel extends ActiveMagicEffect  

GlobalVariable Property VampireLightLevel Auto

event OnEffectStart(Actor akTarget, Actor akCaster)
	if aktarget == game.getPlayer()
		VampireLightLevel.SetValue(0)		
		akTarget.RemoveSpell(VampireBurnInSun10)
		akTarget.RemoveSpell(VampireBurnInSun09)
		akTarget.RemoveSpell(VampireBurnInSun08)
		akTarget.RemoveSpell(VampireBurnInSun07)
		akTarget.RemoveSpell(VampireBurnInSun06)		
		akTarget.RemoveSpell(VampireBurnInSun05)
		akTarget.RemoveSpell(VampireBurnInSun04)
		akTarget.RemoveSpell(VampireBurnInSun03)
		akTarget.RemoveSpell(VampireBurnInSun02)
		akTarget.RemoveSpell(VampireBurnInSun01)
	endif
endEvent

event OnEffectFinish(Actor akTarget, Actor akCaster)
	if aktarget == game.getPlayer()
		VampireLightLevel.SetValue(0)	
		akTarget.RemoveSpell(VampireBurnInSun10)
		akTarget.RemoveSpell(VampireBurnInSun09)
		akTarget.RemoveSpell(VampireBurnInSun08)
		akTarget.RemoveSpell(VampireBurnInSun07)
		akTarget.RemoveSpell(VampireBurnInSun06)		
		akTarget.RemoveSpell(VampireBurnInSun05)
		akTarget.RemoveSpell(VampireBurnInSun04)
		akTarget.RemoveSpell(VampireBurnInSun03)
		akTarget.RemoveSpell(VampireBurnInSun02)
		akTarget.RemoveSpell(VampireBurnInSun01)		
	endif
endEvent
 
Spell Property VampireBurnInSun01 Auto
Spell Property VampireBurnInSun02 Auto
Spell Property VampireBurnInSun03 Auto
Spell Property VampireBurnInSun04 Auto
Spell Property VampireBurnInSun05 Auto
Spell Property VampireBurnInSun06 Auto
Spell Property VampireBurnInSun07 Auto
Spell Property VampireBurnInSun08 Auto
Spell Property VampireBurnInSun09 Auto
Spell Property VampireBurnInSun10 Auto
