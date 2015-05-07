Scriptname Materaracecontroller extends Quest  

FormList Property HeadPartsMatera  Auto  

FormList Property HeadPartsMateraandVampire  Auto  

GenericRaceController Property raceController Auto 

Event OnInit() 
raceController.NewArgonian = none 
raceController.NewArgonianVampire = none 

raceController.NewBreton = HeadPartsMatera  
raceController.NewBretonVampire = HeadPartsMateraandVampire  

raceController.NewDarkElf = none 
raceController.NewDarkElfVampire = none 

raceController.NewHighElf = none 
raceController.NewHighElfVampire = none
 
raceController.NewImperial = none 
raceController.NewImperialVampire = none 

raceController.NewKhajiit = none 
raceController.NewKhajiitVampire = none 

raceController.NewNord = none 
raceController.NewNordVampire = none 

raceController.NewOrc = none 
raceController.NewOrcVampire = none 

raceController.NewRedguard = none 
raceController.NewRedguardVampire = none 

raceController.NewWoodElf = none 
raceController.NewWoodElfVampire = none 

raceController.proxyRaces() 
EndEvent 