ScriptName VampireRemoveHateScript extends ActiveMagicEffect

Faction Property VampirePCFaction Auto  
GlobalVariable Property VampireFeedReady Auto
GlobalVariable Property VampireStageHated Auto
GlobalVariable Property VampireStageGlobal Auto
GlobalVariable Property VampireMortalsMask Auto
GlobalVariable Property VampireMortalsMaskActive Auto
Spell Property VampireRemoveHateSpell Auto
Int Property NoLoop Auto

Race Property ArgonianRace  Auto  
Race Property ArgonianRaceVampire  Auto  
Race Property ArgonianRaceVampire2  Auto  
Race Property BretonRace  Auto  
Race Property BretonRaceVampire  Auto  
Race Property BretonRaceVampire2  Auto 
Race Property DarkElfRace  Auto  
Race Property DarkElfRaceVampire  Auto  
Race Property DarkElfRaceVampire2  Auto
Race Property HighElfRace  Auto  
Race Property HighElfRaceVampire  Auto  
Race Property HighElfRaceVampire2  Auto  
Race Property ImperialRace  Auto  
Race Property ImperialRaceVampire  Auto  
Race Property ImperialRaceVampire2  Auto
Race Property KhajiitRace  Auto  
Race Property KhajiitRaceVampire  Auto 
Race Property KhajiitRaceVampire2  Auto 
Race Property NordRace  Auto  
Race Property NordRaceVampire  Auto  
Race Property NordRaceVampire2  Auto 
Race Property OrcRace  Auto  
Race Property OrcRaceVampire  Auto
Race Property OrcRaceVampire2  Auto  
Race Property RedguardRace  Auto  
Race Property RedguardRaceVampire  Auto 
Race Property RedguardRaceVampire2  Auto 
Race Property WoodElfRace  Auto  
Race Property WoodElfRaceVampire  Auto 
Race Property WoodElfRaceVampire2  Auto   


Event OnEffectStart(Actor akTarget, Actor akCaster)

	If VampireMortalsMaskActive.GetValue() == 1

		Game.GetPlayer().DispelSpell(VampireRemoveHateSpell)		
		
	ElseIf VampireMortalsMaskActive.GetValue() == 0
		
		Debug.Notification("Your vampirism is now hidden from mortals.")				
		
		If (VampireStageHated.GetValue() == 20000 && VampireStageGlobal.GetValue() <= 2)	
			utility.wait(1)	
			Game.GetPlayer().RemoveFromFaction(VampirePCFaction)
			Game.GetPlayer().SetAttackActorOnSight(False)
			Game.GetPlayer().RemoveFromFaction(VampirePCFaction)
			Game.GetPlayer().SetAttackActorOnSight(False)
		EndIf
		
		If (VampireStageHated.GetValue() == 10000 && VampireStageGlobal.GetValue() >= 3)	
			utility.wait(1)	
			Game.GetPlayer().RemoveFromFaction(VampirePCFaction)
			Game.GetPlayer().SetAttackActorOnSight(False)
			Game.GetPlayer().RemoveFromFaction(VampirePCFaction)
			Game.GetPlayer().SetAttackActorOnSight(False)
		EndIf

		If VampireMortalsMask.GetValue() == 20000
			if (Game.GetPlayer().GetRace() == ArgonianRaceVampire)
				Game.GetPlayer().SetRace(ArgonianRace)
				Game.GetPlayer().SetRace(ArgonianRaceVampire2)
			elseif (Game.GetPlayer().GetRace() == BretonRaceVampire)
				Game.GetPlayer().SetRace(BretonRace) 
				Game.GetPlayer().SetRace(BretonRaceVampire2) 
			elseif (Game.GetPlayer().GetRace() == DarkElfRaceVampire)
				Game.GetPlayer().SetRace(DarkElfRace) 
				Game.GetPlayer().SetRace(DarkElfRaceVampire2) 
			elseif (Game.GetPlayer().GetRace() == HighELfRaceVampire)
				Game.GetPlayer().SetRace(HighELfRace) 
				Game.GetPlayer().SetRace(HighELfRaceVampire2) 
			elseif (Game.GetPlayer().GetRace() == ImperialRaceVampire)
				Game.GetPlayer().SetRace(ImperialRace) 
				Game.GetPlayer().SetRace(ImperialRaceVampire2)  			
			elseif (Game.GetPlayer().GetRace() == KhajiitRaceVampire)
				Game.GetPlayer().SetRace(KhajiitRace) 
				Game.GetPlayer().SetRace(KhajiitRaceVampire2) 			
			elseif (Game.GetPlayer().GetRace() == NordRaceVampire)
				Game.GetPlayer().SetRace(NordRace) 
				Game.GetPlayer().SetRace(NordRaceVampire2) 			
			elseif (Game.GetPlayer().GetRace() == OrcRaceVampire)
				Game.GetPlayer().SetRace(OrcRace) 
				Game.GetPlayer().SetRace(OrcRaceVampire2) 			
			elseif (Game.GetPlayer().GetRace() == RedguardRaceVampire)
				Game.GetPlayer().SetRace(RedguardRace) 
				Game.GetPlayer().SetRace(RedguardRaceVampire2) 			
			elseif (Game.GetPlayer().GetRace() == WoodElfRaceVampire)
				Game.GetPlayer().SetRace(WoodElfRace) 
				Game.GetPlayer().SetRace(WoodElfRaceVampire2) 			
			endif
		EndIf
		
		VampireMortalsMaskActive.SetValue(1)
		
	EndIf
	
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)

		Utility.Wait(1.0)
		Debug.Notification("Mortal's Mask is beginning to fade ...")
		VampireMortalsMaskActive.SetValue(0)		
		Utility.Wait(30.0)

		If VampireMortalsMaskActive.GetValue() == 0
		
			Debug.Notification("The illusion of Mortal's Mask has worn off.")

			If VampireStageHated.GetValue() == 20000
				If VampireStageGlobal.GetValue() == 1
					Game.GetPlayer().AddToFaction(VampirePCFaction)
					Game.GetPlayer().SetAttackActorOnSight()
					Game.GetPlayer().AddToFaction(VampirePCFaction)
					Game.GetPlayer().SetAttackActorOnSight()
				EndIf	
			EndIf
		
			If VampireStageHated.GetValue() == 10000	
				If VampireStageGlobal.GetValue() == 4
					Game.GetPlayer().AddToFaction(VampirePCFaction)
					Game.GetPlayer().SetAttackActorOnSight()
					Game.GetPlayer().AddToFaction(VampirePCFaction)
					Game.GetPlayer().SetAttackActorOnSight()
				EndIf	
			EndIf
			
			If VampireStageHated.GetValue() == 0
				utility.wait(1)	
				Game.GetPlayer().RemoveFromFaction(VampirePCFaction)
				Game.GetPlayer().SetAttackActorOnSight(False)
				Game.GetPlayer().RemoveFromFaction(VampirePCFaction)
				Game.GetPlayer().SetAttackActorOnSight(False)
			EndIf
			
			If VampireMortalsMask.GetValue() == 20000
				if (Game.GetPlayer().GetRace() == ArgonianRaceVampire2)
					Game.GetPlayer().SetRace(ArgonianRaceVampire)
				elseif (Game.GetPlayer().GetRace() == BretonRaceVampire2)
					Game.GetPlayer().SetRace(BretonRaceVampire) 
				elseif (Game.GetPlayer().GetRace() == DarkElfRaceVampire2)
					Game.GetPlayer().SetRace(DarkElfRaceVampire) 
				elseif (Game.GetPlayer().GetRace() == HighELfRaceVampire2)
					Game.GetPlayer().SetRace(HighELfRaceVampire) 
				elseif (Game.GetPlayer().GetRace() == ImperialRaceVampire2)
					Game.GetPlayer().SetRace(ImperialRaceVampire) 
				elseif (Game.GetPlayer().GetRace() == KhajiitRaceVampire2)
					Game.GetPlayer().SetRace(KhajiitRaceVampire) 
				elseif (Game.GetPlayer().GetRace() == NordRaceVampire2)
					Game.GetPlayer().SetRace(NordRaceVampire) 
				elseif (Game.GetPlayer().GetRace() == OrcRaceVampire2)
					Game.GetPlayer().SetRace(OrcRaceVampire) 
				elseif (Game.GetPlayer().GetRace() == RedguardRaceVampire2)
					Game.GetPlayer().SetRace(RedguardRaceVampire) 
				elseif (Game.GetPlayer().GetRace() == WoodElfRaceVampire2)
					Game.GetPlayer().SetRace(WoodElfRaceVampire) 
				endif
			EndIf
			
		EndIf
		
EndEvent
