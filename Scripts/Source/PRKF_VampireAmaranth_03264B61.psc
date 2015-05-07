;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname PRKF_VampireAmaranth_03264B61 Extends Perk Hidden

;BEGIN FRAGMENT Fragment_3
Function Fragment_3(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
Game.GetPlayer().StartVampireFeed(aktargetRef as actor)
PlayerVampireQuest.VampireFeed(aktargetRef as actor)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akTargetRef, Actor akActor)
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

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
Game.GetPlayer().StartVampireFeed(aktargetRef as actor)
PlayerVampireQuest.VampireFeed(aktargetRef as actor)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

PlayerVampireQuestScript Property PlayerVampireQuest  Auto  
