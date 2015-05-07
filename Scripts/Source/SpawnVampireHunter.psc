Scriptname SpawnVampireHunter extends activemagiceffect

ActorBase Property LvlVampireHunter Auto

Actor Property VampireHunter1 Auto
Actor Property VampireHunter2 Auto
Actor Property VampireHunter3 Auto

Race Property DLC1VampireBeastRace Auto

Spell Property DLC1RevertForm Auto

Static Property XMarker Auto

Int Property NecksBittenDiscovered Auto

GlobalVariable Property VampireHunters Auto
GlobalVariable Property VampireHuntersRevertVL Auto
GlobalVariable Property VampireCannotTurnVL Auto

Float Property DayTime Auto

;==============================================================================================

Float Function GetCurrentTimeOfDay() 
 
	DayTime = Utility.GetCurrentGameTime()
	DayTime -= Math.Floor(DayTime) ; Remove "previous in-game days passed" bit
	DayTime *= 24 ; Convert from fraction of a day to number of hours
	Return DayTime
 
EndFunction

;==============================================================================================


EVENT OnEffectStart(Actor akTarget, Actor akCaster)

		utility.Wait(2.0)
		Int RandomHunters = Utility.RandomInt(1, 3)		

		Debug.Notification("Spawn Point Set Here")
		
		ObjectReference VampireHunterXmarker = Game.GetPlayer().PlaceAtMe(Xmarker)

		While Game.GetPlayer().GetDistance(VampireHunterXMarker) <= 800 && VampireHunters.GetValue() > 0
		EndWhile
		
		While Game.GetPlayer().HasLOS(VampireHunterXMarker) && VampireHunters.GetValue() > 0
		EndWhile
		
		If VampireHunters.GetValue() == 40000
			Debug.Notification(RandomHunters+" Hunter(s) incoming!")
		EndIf
		
		VampireHunter1 = VampireHunterXmarker.PlaceActorAtMe(LvlVampireHunter, 4)
		If VampireHunters.GetValue() == 20000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 2)
			VampireHunter2 = VampireHunterXmarker.PlaceActorAtMe(LvlVampireHunter, 4)
		ElseIf VampireHunters.GetValue() == 30000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 3)
			VampireHunter2 = VampireHunterXmarker.PlaceActorAtMe(LvlVampireHunter, 4)
			VampireHunter3 = VampireHunterXmarker.PlaceActorAtMe(LvlVampireHunter, 4)				
		EndIf		
		
		utility.WaitMenuMode(1.0)
		
		Float PlayerHealth = Game.GetPlayer().GetBaseActorValue("Health")
		Float VampireHunter1Health = PlayerHealth*1.5
		VampireHunter1.SetActorValue("Health", VampireHunter1Health)
		If VampireHunters.GetValue() == 20000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 2)
			VampireHunter2.SetActorValue("Health", VampireHunter1Health)
		ElseIf VampireHunters.GetValue() == 30000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 3)
			VampireHunter2.SetActorValue("Health", VampireHunter1Health)
			VampireHunter3.SetActorValue("Health", VampireHunter1Health)			
		EndIf			
		
		Float PlayerMagicka = (Game.GetPlayer().GetBaseActorValue("Magicka")*1.2)
		VampireHunter1.SetActorValue("Magicka", PlayerMagicka)
		If VampireHunters.GetValue() == 20000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 2)
			VampireHunter2.SetActorValue("Magicka", PlayerMagicka)
		ElseIf VampireHunters.GetValue() == 30000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 3)
			VampireHunter2.SetActorValue("Magicka", PlayerMagicka)
			VampireHunter3.SetActorValue("Magicka", PlayerMagicka)			
		EndIf			
		
		VampireHunter1.SetActorValue("Sneak", 100)
		If VampireHunters.GetValue() == 20000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 2)
			VampireHunter2.SetActorValue("Sneak", 100)
		ElseIf VampireHunters.GetValue() == 30000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 3)
			VampireHunter2.SetActorValue("Sneak", 100)
			VampireHunter3.SetActorValue("Sneak", 100)			
		EndIf			
		
		Float Player1Hand = (Game.GetPlayer().GetActorValue("OneHanded")*1.2)
		VampireHunter1.SetActorValue("OneHanded", Player1Hand)
		If VampireHunters.GetValue() == 20000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 2)
			VampireHunter2.SetActorValue("OneHanded", Player1Hand)
		ElseIf VampireHunters.GetValue() == 30000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 3)
			VampireHunter2.SetActorValue("OneHanded", Player1Hand)
			VampireHunter3.SetActorValue("OneHanded", Player1Hand)			
		EndIf			
		
		Float Player2Hand= (Game.GetPlayer().GetActorValue("TwoHanded")*1.2)
		VampireHunter1.SetActorValue("TwoHanded", Player2Hand)
		If VampireHunters.GetValue() == 20000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 2)
			VampireHunter2.SetActorValue("TwoHanded", Player2Hand)
		ElseIf VampireHunters.GetValue() == 30000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 3)
			VampireHunter2.SetActorValue("TwoHanded", Player2Hand)
			VampireHunter3.SetActorValue("TwoHanded", Player2Hand)		
		EndIf				

		Float PlayerMarksman = (Game.GetPlayer().GetActorValue("Marksman")*1.2)
		VampireHunter1.SetActorValue("Marksman", PlayerMarksman)
		If VampireHunters.GetValue() == 20000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 2)
			VampireHunter2.SetActorValue("Marksman", PlayerMarksman)
		ElseIf VampireHunters.GetValue() == 30000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 3)
			VampireHunter2.SetActorValue("Marksman", PlayerMarksman)
			VampireHunter3.SetActorValue("Marksman", PlayerMarksman)		
		EndIf			
		
		Float PlayerBlock = (Game.GetPlayer().GetActorValue("Block")*1.2)
		VampireHunter1.SetActorValue("Block", PlayerBlock)
		If VampireHunters.GetValue() == 20000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 2)
			VampireHunter2.SetActorValue("Block", PlayerBlock)
		ElseIf VampireHunters.GetValue() == 30000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 3)
			VampireHunter2.SetActorValue("Block", PlayerBlock)
			VampireHunter3.SetActorValue("Block", PlayerBlock)		
		EndIf			
		
		Float PlayerDamageResist = (Game.GetPlayer().GetActorValue("DamageResist")*1.2)
		VampireHunter1.ForceActorValue("DamageResist", PlayerDamageResist)
		If VampireHunters.GetValue() == 20000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 2)
			VampireHunter2.SetActorValue("DamageResist", PlayerDamageResist)
		ElseIf VampireHunters.GetValue() == 30000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 3)
			VampireHunter2.SetActorValue("DamageResist", PlayerDamageResist)
			VampireHunter3.SetActorValue("DamageResist", PlayerDamageResist)	
		EndIf			

		;VampireHunter1.AddPerk(VampireHunterIllusionImmune)
		;If VampireHunters.GetValue() == 20000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 2)
		;	VampireHunter2.AddPerk(VampireHunterIllusionImmune)
		;ElseIf VampireHunters.GetValue() == 30000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 3)
		;	VampireHunter2.AddPerk(VampireHunterIllusionImmune)
		;	VampireHunter3.AddPerk(VampireHunterIllusionImmune)	
		;EndIf
		
		VampireHunterXmarker.Disable()
		VampireHunterXmarker.Delete()
		
		VampireHunter1.PathToReference(Game.GetPlayer(), 1)
		If VampireHunters.GetValue() == 20000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 2)
			VampireHunter2.PathToReference(Game.GetPlayer(), 1)
		ElseIf VampireHunters.GetValue() == 30000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 3)
			VampireHunter2.PathToReference(Game.GetPlayer(), 1)
			VampireHunter3.PathToReference(Game.GetPlayer(), 1)	
		EndIf	
		
		Utility.Wait(2.0)
		
		VampireHunter1.StartCombat(Game.GetPlayer())
		If VampireHunters.GetValue() == 20000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 2)
			VampireHunter2.StartCombat(Game.GetPlayer())
		ElseIf VampireHunters.GetValue() == 30000 || (VampireHunters.GetValue() == 40000 && RandomHunters == 3)
			VampireHunter2.StartCombat(Game.GetPlayer())
			VampireHunter3.StartCombat(Game.GetPlayer())	
		EndIf
		
		If VampireHuntersRevertVL.GetValue() == 10000 && Game.GetPlayer().HasSpell(DLC1RevertForm)
			VampireCannotTurnVL.SetValue(10000)
			DLC1RevertForm.Cast(Game.GetPlayer(), Game.GetPlayer())
		EndIf		
		
EndEvent

;==============================================================================================

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	
			
EndEvent
