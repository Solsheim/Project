Scriptname VampireBottledBloodScript extends ActiveMagicEffect  

GlobalVariable Property VampireBottledBlood Auto
GlobalVariable Property VampireExtractBlood Auto
GlobalVariable Property VampireBloodPotionSatiation Auto
PlayerVampireQuestScript Property PlayerVampireQuest  Auto  

EVENT onEffectStart(Actor akBottleTarget, Actor akCaster)

	If akBottleTarget == Game.GetPlayer()
		VampireBottledBlood.SetValue(10000)
		Game.GetPlayer().RestoreActorValue("Stamina", 50)
		Game.GetPlayer().RestoreActorValue("Magicka", 50)	
		Utility.Wait(1.0)
		If VampireBloodPotionSatiation.GetValue() == 10000
			PlayerVampireQuest.VampireFeed(akBottleTarget as actor)
		Else	
			VampireBottledBlood.SetValue(0)
		EndIf
	EndIf	
		
EndEVENT 


EVENT onEffectFinish(Actor akTarget, Actor akCaster) 

	
EndEVENT

