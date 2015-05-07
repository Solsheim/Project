Scriptname VampireStableInvisibility extends activemagiceffect

Actor Property Player Auto Hidden

Spell Property VampireInvisibilityRecast Auto
Spell Property VampireInvisibilityPC Auto

MagicEffect Property StableVampireInvisibility Auto
MagicEffect Property crVampireInvisibillity2 Auto

EVENT OnEffectStart(Actor akTarget, Actor akCaster)

	Player = akTarget
	Player.AddSpell(VampireInvisibilityRecast, abVerbose = False)				
	VampireInvisibilityRecast.Cast(Game.GetPlayer(), Game.GetPlayer())
		
	While (Player.HasMagicEffect(crVampireInvisibillity2))
		Player.SetAlpha(0)
		
		If (! Player.HasMagicEffect(StableVampireInvisibility))
			Player.AddSpell(VampireInvisibilityRecast, abVerbose = False)				
			VampireInvisibilityRecast.Cast(Game.GetPlayer(), Game.GetPlayer())
		EndIf
		
		If (Player.HasMagicEffect(StableVampireInvisibility))
		EndIf
	EndWhile	

	utility.wait(1)
	Player.DispelSpell(VampireInvisibilityRecast)
	Player.RemoveSpell(VampireInvisibilityRecast)
	Player.SetAlpha(1, true)
	
	If Game.GetPlayer().IsOnMount()
	Else
		Float Weight = Game.GetPlayer().GetWeight()
		Game.GetPlayer().SetWeight(50)			
		Game.GetPlayer().SetWeight(Weight)
		Game.GetPlayer().QueueNiNodeUpdate()
	EndIf
	
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	
	utility.wait(1)
	Player.DispelSpell(VampireInvisibilityRecast)
	Player.DispelSpell(VampireInvisibilityPC)		
	Player.RemoveSpell(VampireInvisibilityRecast)
	Player.SetAlpha(1, true)
	utility.wait(5)
	Player.DispelSpell(VampireInvisibilityRecast)
	Player.DispelSpell(VampireInvisibilityPC)		
	Player.RemoveSpell(VampireInvisibilityRecast)
	Player.SetAlpha(1, true)
	
	If Game.GetPlayer().IsOnMount()
	Else
		Float Weight = Game.GetPlayer().GetWeight()
		Game.GetPlayer().SetWeight(50)		
		Game.GetPlayer().SetWeight(Weight)
		Game.GetPlayer().QueueNiNodeUpdate()
	EndIf	
	
EndEvent
