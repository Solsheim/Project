;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 17
Scriptname PRKF_VampireFeedCustomRace2_0312A5C7 Extends Perk Hidden

;BEGIN FRAGMENT Fragment_14
Function Fragment_14(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
DLC1VampireTurn.PlayerBitesMe(akTargetRef as actor)
Game.GetPlayer().StartVampireFeed(aktargetRef as actor)
PlayerVampireQuest.VampireFeed(aktargetRef as actor)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
Game.GetPlayer().StartVampireFeed(aktargetRef as actor)
PlayerVampireQuest.VampireFeed(aktargetRef as actor)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
Game.GetPlayer().StartVampireFeed(aktargetRef as actor)
PlayerVampireQuest.VampireFeed(aktargetRef as actor)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
Game.GetPlayer().StartVampireFeed(aktargetRef as actor)
PlayerVampireQuest.VampireFeed(aktargetRef as actor)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
DLC1VampireTurn.PlayerBitesMe(akTargetRef as actor)
Game.GetPlayer().StartVampireFeed(aktargetRef as actor)
PlayerVampireQuest.VampireFeed(aktargetRef as actor)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
Game.GetPlayer().StartVampireFeed(aktargetRef as actor)
PlayerVampireQuest.VampireFeed(aktargetRef as actor)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

PlayerVampireQuestScript Property PlayerVampireQuest  Auto  

dlc1vampireturnscript Property DLC1VampireTurn  Auto  
