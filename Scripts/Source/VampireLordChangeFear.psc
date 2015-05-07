Scriptname VampireLordChangeFear extends ActiveMagicEffect  

Spell Property DLC1VampireChange2 Auto
GlobalVariable Property VampireLordFearEffect Auto

EVENT onEffectStart(Actor akTarget, Actor akSummonCaster)
	
	If VampireLordFearEffect.GetValue() == 0
		Utility.Wait(2.0)
		DLC1VampireChange2.Cast(Game.GetPlayer(), Game.GetPlayer())	
	EndIf	
	
endEVENT 


EVENT onEffectFinish(Actor akTarget, Actor akCaster) 

	
endEVENT

