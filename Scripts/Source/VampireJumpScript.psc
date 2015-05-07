Scriptname VampireJumpScript extends activemagiceffect

GlobalVariable Property VampireRank Auto
GlobalVariable Property VampireJumpingBonus Auto

EVENT OnEffectStart(Actor akTarget, Actor akCaster)

	If VampireJumpingBonus.GetValue() == 0
		
		If VampireRank.GetValue() == 10000
			Game.SetGameSettingFloat("fJumpHeightMin",100.00)
		ElseIf	VampireRank.GetValue() == 20000
			Game.SetGameSettingFloat("fJumpHeightMin",125.00)
		ElseIf	VampireRank.GetValue() == 30000
			Game.SetGameSettingFloat("fJumpHeightMin",150.00)
		ElseIf	VampireRank.GetValue() == 40000
			Game.SetGameSettingFloat("fJumpHeightMin",180.00)
		ElseIf	VampireRank.GetValue() == 50000
			Game.SetGameSettingFloat("fJumpHeightMin",210.00)
		ElseIf	VampireRank.GetValue() == 60000
			Game.SetGameSettingFloat("fJumpHeightMin",250.00)
		ElseIf	VampireRank.GetValue() == 61000
			Game.SetGameSettingFloat("fJumpHeightMin",250.00)
		EndIf
		
		RegisterForUpdateGameTime(1)
		
	Else
	
		Game.SetGameSettingFloat("fJumpHeightMin",76.00)	
		
		UnregisterforUpdateGameTime()		
		
	EndIf	
			
EndEvent

Event OnUpdateGameTime()

	If VampireJumpingBonus.GetValue() == 0
		
		If VampireRank.GetValue() == 10000
			Game.SetGameSettingFloat("fJumpHeightMin",100.00)
		ElseIf	VampireRank.GetValue() == 20000
			Game.SetGameSettingFloat("fJumpHeightMin",125.00)
		ElseIf	VampireRank.GetValue() == 30000
			Game.SetGameSettingFloat("fJumpHeightMin",150.00)
		ElseIf	VampireRank.GetValue() == 40000
			Game.SetGameSettingFloat("fJumpHeightMin",180.00)
		ElseIf	VampireRank.GetValue() == 50000
			Game.SetGameSettingFloat("fJumpHeightMin",210.00)
		ElseIf	VampireRank.GetValue() == 60000
			Game.SetGameSettingFloat("fJumpHeightMin",250.00)
		ElseIf	VampireRank.GetValue() == 61000
			Game.SetGameSettingFloat("fJumpHeightMin",250.00)
		EndIf
		
	Else
	
		Game.SetGameSettingFloat("fJumpHeightMin",76.00)	
		
		UnregisterforUpdateGameTime()			
		
	EndIf

EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	
		Game.SetGameSettingFloat("fJumpHeightMin",76.00)

		UnregisterforUpdateGameTime()
		
EndEvent
