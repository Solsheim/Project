Scriptname VampireSummonCreatureScript extends ActiveMagicEffect  

INT PROPERTY numToPlace AUTO
;INT PROPERTY inInterior AUTO

Sound Property MAGLightCharge Auto
EffectShader property ReanimateFXShader auto
GlobalVariable Property VampireRank Auto
Objectreference Property CreatureSPawnXmarker Auto

ActorBase Property VampireSummonEncSkeever Auto
ActorBase Property VampireSummonEncWolf Auto
ActorBase Property VampireSummonEncFrostbiteSpider Auto
Actor property PCCombatTarget Auto hidden
Actor Property Creature1 Auto
Actor Property Creature2 Auto
Actor Property Creature3 Auto

Race Property DLC1VampireBeastRace Auto

Static Property CreatureXMarker Auto

Spell Property VampireRankSummonCreatureSpell Auto

EVENT onEffectStart(Actor akTarget, Actor akSummonCaster)

	CreatureSpawnXmarker = Game.GetPlayer().PlaceAtMe(CreatureXmarker)

	If VampireRank.GetValue() == 10000
		numToPlace = 1
	ElseIf VampireRank.GetValue() == 20000
		numToPlace = 1
	ElseIf VampireRank.GetValue() == 30000
		numToPlace = 1
	ElseIf VampireRank.GetValue() == 40000
		numToPlace = 2	
	ElseIf VampireRank.GetValue() == 50000
		numToPlace = 2	
	ElseIf VampireRank.GetValue() >= 60000
		numToPlace = 3
	EndIf
	
	int instanceID = MAGLightCharge.play(game.getPlayer())        
		
	utility.wait(2.5)	
		
	If Game.GetPlayer().IsInInterior()
	
			Int TypeofIntCreature1 = Utility.RandomInt(1, 3)
			Int TypeofIntCreature2 = Utility.RandomInt(1, 3)
			Int TypeofIntCreature3 = Utility.RandomInt(1, 3)
			
		IF(numToPlace == 1)

			If Game.GetPlayer().GetRace() == DLC1VampireBeastRace
				Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)	
			Else
				If TypeofIntCreature1 == 1
					Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncSkeever, 2)
				ElseIf TypeofIntCreature1 == 2
					Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncFrostbiteSpider, 2)
				ElseIf TypeofIntCreature1 == 3
					Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)						
				EndIf
			EndIf	
		
			utility.wait(0.5)
			ReanimateFXShader.play(Creature1)
			Sound.SetInstanceVolume(instanceID, 1.0)
			utility.wait(1.0)
			ReanimateFXShader.stop(Creature1)		
			Float PlayerHealth = Game.GetPlayer().GetBaseActorValue("Health")
			Creature1.SetActorValue("Health", PlayerHealth*0.4)
			Float PlayerDamageResist = Game.GetPlayer().GetActorValue("DamageResist")
			Creature1.ForceActorValue("DamageResist", PlayerDamageResist*0.4)
			Float PlayerOneHandedDamage = Game.GetPlayer().GetActorValue("OneHanded")
			Creature1.SetActorValue("OneHanded", PlayerOneHandedDamage*0.4)
			Float PlayerMeleeDamage = Game.GetPlayer().GetActorValue("MeleeDamage")
			Creature1.SetActorValue("MeleeDamage", PlayerMeleeDamage*0.4)
			
		ELSEIF(numToPlace == 2)

			If Game.GetPlayer().GetRace() == DLC1VampireBeastRace
				Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)	
			Else		
				If TypeofIntCreature1 == 1
					Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncSkeever, 2)
				ElseIf TypeofIntCreature1 == 2
					Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncFrostbiteSpider, 2)
				ElseIf TypeofIntCreature1 == 3
					Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)						
				EndIf
			EndIf	
			
			utility.wait(0.5)
			ReanimateFXShader.play(Creature1)
			Sound.SetInstanceVolume(instanceID, 1.0)
			utility.wait(1.0)
			ReanimateFXShader.stop(Creature1)		
			Float PlayerHealth = Game.GetPlayer().GetBaseActorValue("Health")
			Creature1.SetActorValue("Health", PlayerHealth*0.4)
			Float PlayerDamageResist = Game.GetPlayer().GetActorValue("DamageResist")
			Creature1.ForceActorValue("DamageResist", PlayerDamageResist*0.4)
			Float PlayerOneHandedDamage = Game.GetPlayer().GetActorValue("OneHanded")
			Creature1.SetActorValue("OneHanded", PlayerOneHandedDamage*0.4)
			Float PlayerMeleeDamage = Game.GetPlayer().GetActorValue("MeleeDamage")
			Creature1.SetActorValue("MeleeDamage", PlayerMeleeDamage*0.4)			

			If Game.GetPlayer().GetRace() == DLC1VampireBeastRace
				Creature2 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)	
			Else			
				If TypeofIntCreature2 == 1
					Creature2 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncSkeever, 2)
				ElseIf TypeofIntCreature2 == 2
					Creature2 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncFrostbiteSpider, 2)
				ElseIf TypeofIntCreature2 == 3
					Creature2 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)						
				EndIf				
			EndIf
			
			utility.wait(0.5)
			ReanimateFXShader.play(Creature2)
			Sound.SetInstanceVolume(instanceID, 1.0)
			utility.wait(1.0)
			ReanimateFXShader.stop(Creature2)		
			;Float PlayerHealth = Game.GetPlayer().GetBaseActorValue("Health")
			Creature2.SetActorValue("Health", PlayerHealth*0.4)
			;Float PlayerDamageResist = Game.GetPlayer().GetActorValue("DamageResist")
			Creature2.ForceActorValue("DamageResist", PlayerDamageResist*0.4)
			;Float PlayerOneHandedDamage = Game.GetPlayer().GetActorValue("OneHanded")
			Creature2.SetActorValue("OneHanded", PlayerOneHandedDamage*0.4)
			;Float PlayerMeleeDamage = Game.GetPlayer().GetActorValue("MeleeDamage")
			Creature2.SetActorValue("MeleeDamage", PlayerMeleeDamage*0.4)			
			
		ELSEIF(numToPlace == 3)

			If Game.GetPlayer().GetRace() == DLC1VampireBeastRace
				Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)	
			Else		
				If TypeofIntCreature1 == 1
					Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncSkeever, 2)
				ElseIf TypeofIntCreature1 == 2
					Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncFrostbiteSpider, 2)
				ElseIf TypeofIntCreature1 == 3
					Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)						
				EndIf
			EndIf	
			
			utility.wait(0.5)
			ReanimateFXShader.play(Creature1)
			Sound.SetInstanceVolume(instanceID, 1.0)
			utility.wait(1.0)
			ReanimateFXShader.stop(Creature1)		
			Float PlayerHealth = Game.GetPlayer().GetBaseActorValue("Health")
			Creature1.SetActorValue("Health", PlayerHealth*0.4)
			Float PlayerDamageResist = Game.GetPlayer().GetActorValue("DamageResist")
			Creature1.ForceActorValue("DamageResist", PlayerDamageResist*0.4)
			Float PlayerOneHandedDamage = Game.GetPlayer().GetActorValue("OneHanded")
			Creature1.SetActorValue("OneHanded", PlayerOneHandedDamage*0.4)
			Float PlayerMeleeDamage = Game.GetPlayer().GetActorValue("MeleeDamage")
			Creature1.SetActorValue("MeleeDamage", PlayerMeleeDamage*0.4)			
			
			If Game.GetPlayer().GetRace() == DLC1VampireBeastRace
				Creature2 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)	
			Else
				If TypeofIntCreature2 == 1
					Creature2 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncSkeever, 2)
				ElseIf TypeofIntCreature2 == 2
					Creature2 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncFrostbiteSpider, 2)	
				ElseIf TypeofIntCreature2 == 3
					Creature2 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)						
				EndIf
			EndIf	
		
			utility.wait(0.5)
			ReanimateFXShader.play(Creature2)
			Sound.SetInstanceVolume(instanceID, 1.0)
			utility.wait(1.0)
			ReanimateFXShader.stop(Creature2)		
			;Float PlayerHealth = Game.GetPlayer().GetBaseActorValue("Health")
			Creature2.SetActorValue("Health", PlayerHealth*0.4)
			;Float PlayerDamageResist = Game.GetPlayer().GetActorValue("DamageResist")
			Creature2.ForceActorValue("DamageResist", PlayerDamageResist*0.4)
			;Float PlayerOneHandedDamage = Game.GetPlayer().GetActorValue("OneHanded")
			Creature2.SetActorValue("OneHanded", PlayerOneHandedDamage*0.4)
			;Float PlayerMeleeDamage = Game.GetPlayer().GetActorValue("MeleeDamage")
			Creature2.SetActorValue("MeleeDamage", PlayerMeleeDamage*0.4)			

			If Game.GetPlayer().GetRace() == DLC1VampireBeastRace
				Creature3 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)	
			Else			
				If TypeofIntCreature3 == 1
					Creature3 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncSkeever, 2)
				ElseIf TypeofIntCreature3 == 2
					Creature3 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncFrostbiteSpider, 2)
				ElseIf TypeofIntCreature3 == 3
					Creature3 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)					
				EndIf
			EndIf			
			
			utility.wait(0.5)
			ReanimateFXShader.play(Creature3)
			Sound.SetInstanceVolume(instanceID, 1.0)
			utility.wait(1.0)
			ReanimateFXShader.stop(Creature3)		
			;Float PlayerHealth = Game.GetPlayer().GetBaseActorValue("Health")
			Creature3.SetActorValue("Health", PlayerHealth*0.4)
			;Float PlayerDamageResist = Game.GetPlayer().GetActorValue("DamageResist")
			Creature3.ForceActorValue("DamageResist", PlayerDamageResist*0.4)
			;Float PlayerOneHandedDamage = Game.GetPlayer().GetActorValue("OneHanded")
			Creature3.SetActorValue("OneHanded", PlayerOneHandedDamage*0.4)	
			;Float PlayerMeleeDamage = Game.GetPlayer().GetActorValue("MeleeDamage")
			Creature3.SetActorValue("MeleeDamage", PlayerMeleeDamage*0.4)			
			
		ENDIF
	
	
	Else

			Int TypeofExtCreature1 = Utility.RandomInt(1, 3)
			Int TypeofExtCreature2 = Utility.RandomInt(1, 3)
			Int TypeofExtCreature3 = Utility.RandomInt(1, 3)
	
		IF(numToPlace == 1)

			If Game.GetPlayer().GetRace() == DLC1VampireBeastRace
				Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)	
			Else		
				If TypeofExtCreature1 == 1
					Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncSkeever, 2)
				ElseIf TypeofExtCreature1 == 2
					Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncFrostbiteSpider, 2)		
				ElseIf TypeofExtCreature1 == 3
					Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)			
				EndIf			
			EndIf	
		
			utility.wait(0.5)
			ReanimateFXShader.play(Creature1)
			Sound.SetInstanceVolume(instanceID, 1.0)
			utility.wait(1.0)
			ReanimateFXShader.stop(Creature1)		
			Float PlayerHealth = Game.GetPlayer().GetBaseActorValue("Health")
			Creature1.SetActorValue("Health", PlayerHealth*0.4)
			Float PlayerDamageResist = Game.GetPlayer().GetActorValue("DamageResist")
			Creature1.ForceActorValue("DamageResist", PlayerDamageResist*0.4)
			Float PlayerOneHandedDamage = Game.GetPlayer().GetActorValue("OneHanded")
			Creature1.SetActorValue("OneHanded", PlayerOneHandedDamage*0.4)	
			Float PlayerMeleeDamage = Game.GetPlayer().GetActorValue("MeleeDamage")
			Creature1.SetActorValue("MeleeDamage", PlayerMeleeDamage*0.4)			
			
			
		ELSEIF(numToPlace == 2)

			If Game.GetPlayer().GetRace() == DLC1VampireBeastRace
				Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)	
			Else				
				If TypeofExtCreature1 == 1
					Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncSkeever, 2)
				ElseIf TypeofExtCreature1 == 2
					Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncFrostbiteSpider, 2)		
				ElseIf TypeofExtCreature1 == 3
					Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)			
				EndIf		
			EndIf
			
			utility.wait(0.5)
			ReanimateFXShader.play(Creature1)
			Sound.SetInstanceVolume(instanceID, 1.0)
			utility.wait(1.0)
			ReanimateFXShader.stop(Creature1)		
			Float PlayerHealth = Game.GetPlayer().GetBaseActorValue("Health")
			Creature1.SetActorValue("Health", PlayerHealth*0.4)
			Float PlayerDamageResist = Game.GetPlayer().GetActorValue("DamageResist")
			Creature1.ForceActorValue("DamageResist", PlayerDamageResist*0.4)
			Float PlayerOneHandedDamage = Game.GetPlayer().GetActorValue("OneHanded")
			Creature1.SetActorValue("OneHanded", PlayerOneHandedDamage*0.4)	
			Float PlayerMeleeDamage = Game.GetPlayer().GetActorValue("MeleeDamage")
			Creature1.SetActorValue("MeleeDamage", PlayerMeleeDamage*0.4)			
			
			If Game.GetPlayer().GetRace() == DLC1VampireBeastRace
				Creature2 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)	
			Else				
				If TypeofExtCreature2 == 1
					Creature2 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncSkeever, 2)
				ElseIf TypeofExtCreature2 == 2
					Creature2 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncFrostbiteSpider, 2)		
				ElseIf TypeofExtCreature2 == 3
					Creature2 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncFrostbiteSpider, 2)				
				EndIf			
			EndIf
			
			utility.wait(0.5)
			ReanimateFXShader.play(Creature2)
			Sound.SetInstanceVolume(instanceID, 1.0)
			utility.wait(1.0)
			ReanimateFXShader.stop(Creature2)		
			Creature2.SetActorValue("Health", PlayerHealth*0.4)
			;Float PlayerDamageResist = Game.GetPlayer().GetActorValue("DamageResist")
			Creature2.ForceActorValue("DamageResist", PlayerDamageResist*0.4)
			;Float PlayerOneHandedDamage = Game.GetPlayer().GetActorValue("OneHanded")
			Creature2.SetActorValue("OneHanded", PlayerOneHandedDamage*0.4)	
			;Float PlayerMeleeDamage = Game.GetPlayer().GetActorValue("MeleeDamage")
			Creature2.SetActorValue("MeleeDamage", PlayerMeleeDamage*0.4)			
			
		ELSEIF(numToPlace == 3)

			If Game.GetPlayer().GetRace() == DLC1VampireBeastRace
				Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)	
			Else					
				If TypeofExtCreature1 == 1
					Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncSkeever, 2)
				ElseIf TypeofExtCreature1 == 2
					Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncFrostbiteSpider, 2)		
				ElseIf TypeofExtCreature1 == 3
					Creature1 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)			
				EndIf	
			EndIf			
		
			utility.wait(0.5)
			ReanimateFXShader.play(Creature1)
			Sound.SetInstanceVolume(instanceID, 1.0)
			utility.wait(1.0)
			ReanimateFXShader.stop(Creature1)		
			Float PlayerHealth = Game.GetPlayer().GetBaseActorValue("Health")
			Creature1.SetActorValue("Health", PlayerHealth*0.4)
			Float PlayerDamageResist = Game.GetPlayer().GetActorValue("DamageResist")
			Creature1.ForceActorValue("DamageResist", PlayerDamageResist*0.4)
			Float PlayerOneHandedDamage = Game.GetPlayer().GetActorValue("OneHanded")
			Creature1.SetActorValue("OneHanded", PlayerOneHandedDamage*0.4)	
			Float PlayerMeleeDamage = Game.GetPlayer().GetActorValue("MeleeDamage")
			Creature1.SetActorValue("MeleeDamage", PlayerMeleeDamage*0.4)			
			
			If Game.GetPlayer().GetRace() == DLC1VampireBeastRace
				Creature2 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)	
			Else			
				If TypeofExtCreature2 == 1
					Creature2 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncSkeever, 2)
				ElseIf TypeofExtCreature2 == 2
					Creature2 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncFrostbiteSpider, 2)		
				ElseIf TypeofExtCreature2 == 3
					Creature2 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)			
				EndIf
			EndIf	
			
			utility.wait(0.5)
			ReanimateFXShader.play(Creature2)
			Sound.SetInstanceVolume(instanceID, 1.0)
			utility.wait(1.0)
			ReanimateFXShader.stop(Creature2)		
			;Float PlayerHealth = Game.GetPlayer().GetBaseActorValue("Health")
			Creature2.SetActorValue("Health", PlayerHealth*0.4)
			;Float PlayerDamageResist = Game.GetPlayer().GetActorValue("DamageResist")
			Creature2.ForceActorValue("DamageResist", PlayerDamageResist*0.4)
			;Float PlayerOneHandedDamage = Game.GetPlayer().GetActorValue("OneHanded")
			Creature2.SetActorValue("OneHanded", PlayerOneHandedDamage*0.4)	
			;Float PlayerMeleeDamage = Game.GetPlayer().GetActorValue("MeleeDamage")
			Creature2.SetActorValue("MeleeDamage", PlayerMeleeDamage*0.4)			

			If Game.GetPlayer().GetRace() == DLC1VampireBeastRace
				Creature3 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)	
			Else		
				If TypeofExtCreature3 == 1
					Creature3 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncSkeever, 2)
				ElseIf TypeofExtCreature3 == 2
					Creature3 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncFrostbiteSpider, 2)		
				ElseIf TypeofExtCreature3 == 3
					Creature3 = Game.GetPlayer().PlaceActorAtMe(VampireSummonEncWolf, 2)				
				EndIf				
			EndIf
			
			utility.wait(0.5)
			ReanimateFXShader.play(Creature3)
			Sound.SetInstanceVolume(instanceID, 1.0)
			utility.wait(1.0)
			ReanimateFXShader.stop(Creature3)		
			;Float PlayerHealth = Game.GetPlayer().GetBaseActorValue("Health")
			Creature3.SetActorValue("Health", PlayerHealth*0.4)
			;Float PlayerDamageResist = Game.GetPlayer().GetActorValue("DamageResist")
			Creature3.ForceActorValue("DamageResist", PlayerDamageResist*0.4)
			;Float PlayerOneHandedDamage = Game.GetPlayer().GetActorValue("OneHanded")
			Creature3.SetActorValue("OneHanded", PlayerOneHandedDamage*0.4)	
			;Float PlayerMeleeDamage = Game.GetPlayer().GetActorValue("MeleeDamage")
			Creature3.SetActorValue("MeleeDamage", PlayerMeleeDamage*0.4)			
	
		ENDIF
		
	EndIf
	
	;Game.GetPlayer().DispelSpell(VampireRankSummonCreatureSpell)	
	
	RegisterForUpdate(1)
	
endEVENT 


EVENT onEffectFinish(Actor akTarget, Actor akCaster) 

	Creature1.ClearLookAt()
	Creature1.ClearKeepOffsetFromActor()
	Creature2.ClearLookAt()
	Creature2.ClearKeepOffsetFromActor()
	Creature3.ClearLookAt()
	Creature3.ClearKeepOffsetFromActor()	
	
	Creature1.PathToReference(CreatureSpawnXmarker, 1)
	Creature2.PathToReference(CreatureSpawnXmarker, 1)
	Creature3.PathToReference(CreatureSpawnXmarker, 1)	

	utility.wait(20.0)
	
	ReanimateFXShader.play(Creature1)
	utility.wait(0.5)
	Creature1.disable()
	ReanimateFXShader.play(Creature2)
	utility.wait(0.5)	
	Creature2.disable()
	ReanimateFXShader.play(Creature3)
	utility.wait(0.5)	
	Creature3.disable()
	
	CreatureSpawnXmarker.Disable()
	CreatureSpawnXmarker.Delete()
	
	UnRegisterForUpdate()
	Game.GetPlayer().DispelSpell(VampireRankSummonCreatureSpell)	
	
endEVENT


Event OnUpdate()

	Utility.Wait(0.1)
	
	If Game.GetPlayer().IsWeaponDrawn()
		Creature1.ClearLookAt()
		Creature1.ClearKeepOffsetFromActor()
		Creature2.ClearLookAt()
		Creature2.ClearKeepOffsetFromActor()
		Creature3.ClearLookAt()
		Creature3.ClearKeepOffsetFromActor()		
			If Game.GetPlayer().IsInCombat()
				PCCombatTarget = Game.GetPlayer().GetCombatTarget()
					If PCCombatTarget == Game.GetPlayer()
						Creature1.StopCombat()
						Creature2.StopCombat()
						Creature3.StopCombat()						
					Else
						Creature1.StartCombat(PCCombatTarget)
						Creature2.StartCombat(PCCombatTarget)
						Creature3.StartCombat(PCCombatTarget)						
					EndIf					
			EndIf		
		
	Else
		Creature1.StopCombat()
		Creature1.SetLookAt(Game.GetPlayer(), true)
		float zOffset1 = Creature1.GetHeadingAngle(Game.GetPlayer())
		Creature1.SetAngle(Creature1.GetAngleX(), Creature1.GetAngleY(), Creature1.GetAngleZ() + zOffset1)						
		Creature1.KeepOffsetFromActor(Game.GetPlayer(), 0, -250, 0, afOffsetAngleX = 0.0, afOffsetAngleY = 0.0,  afOffsetAngleZ = 0.0, afCatchUpRadius = 350.0, afFollowRadius = 250.0)
		
		Creature2.StopCombat()
		Creature2.SetLookAt(Game.GetPlayer(), true)
		float zOffset2 = Creature2.GetHeadingAngle(Game.GetPlayer())
		Creature2.SetAngle(Creature2.GetAngleX(), Creature2.GetAngleY(), Creature2.GetAngleZ() + zOffset2)						
		Creature2.KeepOffsetFromActor(Game.GetPlayer(), 0, -300, 0, afOffsetAngleX = 0.0, afOffsetAngleY = -15.0,  afOffsetAngleZ = 0.0, afCatchUpRadius = 400.0, afFollowRadius = 300.0)

		Creature3.StopCombat()
		Creature3.SetLookAt(Game.GetPlayer(), true)
		float zOffset3 = Creature3.GetHeadingAngle(Game.GetPlayer())
		Creature3.SetAngle(Creature3.GetAngleX(), Creature3.GetAngleY(), Creature3.GetAngleZ() + zOffset3)						
		Creature3.KeepOffsetFromActor(Game.GetPlayer(), 0, -350, 0, afOffsetAngleX = 0.0, afOffsetAngleY = 30.0,  afOffsetAngleZ = 0.0, afCatchUpRadius = 450.0, afFollowRadius = 350.0)		
	EndIf
	
EndEvent
