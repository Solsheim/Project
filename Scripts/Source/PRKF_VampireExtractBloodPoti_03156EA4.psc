;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 23
Scriptname PRKF_VampireExtractBloodPoti_03156EA4 Extends Perk Hidden

;BEGIN FRAGMENT Fragment_13
Function Fragment_13(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
DLC1VampireTurn.PlayerBitesMe(akTargetRef as actor)
Game.GetPlayer().StartVampireFeed(aktargetRef as actor)
VampireExtractingBlood.SetValue(10000)
PlayerVampireQuest.VampireFeed(aktargetRef as actor)
Game.GetPlayer().AddItem(DLC1BloodPotion, 1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Potion Property DLC1BloodPotion  Auto
PlayerVampireQuestScript Property PlayerVampireQuest  Auto  
dlc1vampireturnscript Property DLC1VampireTurn  Auto 
GlobalVariable Property VampireExtractingBlood Auto
