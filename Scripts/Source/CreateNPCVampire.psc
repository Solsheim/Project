ScriptName CreateNPCVampire extends ActiveMagicEffect

Actor Property Player Auto Hidden

GlobalVariable Property CreateVampire Auto

EVENT OnEffectStart(Actor akTarget, Actor akCaster)

	Player = akCaster
	CreateVampire.SetValue(10000)
	;Debug.Notification("Praestare Sanguinare ready")

EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	
	CreateVampire.SetValue(0)
			
EndEvent
