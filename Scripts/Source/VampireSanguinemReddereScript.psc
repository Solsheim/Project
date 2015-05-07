Scriptname VampireSanguinemReddereScript extends activemagiceffect

Sound  Property MagVampireTransform01  Auto  
ImageSpaceModifier Property VampireTransformIncreaseISMD  Auto
Static Property XMarker Auto

EVENT OnEffectStart(Actor akTKTarget, Actor akTKCaster)

		Int PlayerPercentHealth = Game.GetPlayer().GetActorValuePercentage("Health") as Int
		Int PlayerBaseHealth = Game.GetPlayer().GetBaseActorValue("Health") as Int		
		Int RepairHealth = ((1 - PlayerPercentHealth)*PlayerBaseHealth) as Int
		
		Int PlayerPercentMagicka = Game.GetPlayer().GetActorValuePercentage("Magicka") as Int
		Int PlayerBaseMagicka = Game.GetPlayer().GetBaseActorValue("Magicka") as Int		
		Int RepairMagicka = (((1 - PlayerPercentMagicka)*PlayerBaseMagicka)/2) as Int
		
		Int TotalRepairCost = ((-1)*(1 + ((RepairHealth + RepairMagicka)/50))) as Int
		Int TotalNecksBitten = Game.QueryStat("Necks Bitten")		


		VampireTransformIncreaseISMD.applyCrossFade(2.0)
		;ObjectReference myXmarker = Game.GetPlayer().PlaceAtMe(Xmarker)
		;MAGVampireTransform01.Play(myXmarker)
		;myXmarker.Disable()
		utility.wait(2.0)
		imageSpaceModifier.removeCrossFade()

		
		If (TotalNecksBitten + TotalRepairCost) >= 0
			Game.IncrementStat("Necks Bitten", TotalRepairCost)
	
			Game.GetPlayer().RestoreActorValue("Health", 2000000)
			Game.GetPlayer().DamageActorValue("Stamina", 2000000)		
			Game.GetPlayer().RestoreActorValue("Magicka", 2000000)
			If ((-1)*TotalRepairCost) < 2
				Debug.Notification("You have used the blood and power of "+((-1)*TotalRepairCost)+" victim to restore yourself.")
			Else
				Debug.Notification("You have used the blood and power of "+((-1)*TotalRepairCost)+" victims to restore yourself.")
			EndIf
		EndIf
		
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	

	
EndEvent
