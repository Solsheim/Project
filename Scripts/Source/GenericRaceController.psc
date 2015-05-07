Scriptname GenericRaceController extends Quest

; Race Compatibility
FormList Property PlayableRaceList Auto
FormList Property PlayableVampireList Auto

FormList Property RacesHuman Auto
FormList Property RacesBeast Auto
FormList Property RacesElf Auto

; Multi-Race Parts
FormList Property HeadPartsAllRacesMinusBeast  Auto  
FormList Property HeadPartsAllRacesMinusBeastVampires  Auto  

; Human-Race Parts
FormList Property HeadPartsHuman  Auto  
FormList Property HeadPartsHumanVampires  Auto  
FormList Property HeadPartsHumansandVampires  Auto  
FormList Property HeadPartsHumansOrcsandVampires  Auto  
FormList Property HeadPartsHumanoidVampire  Auto  
FormList Property HeadPartsBretsNordsImpsandVampires  Auto  

; Elves Parts
FormList Property HeadPartsElves  Auto  
FormList Property HeadPartsElvesandVampires  Auto  

; Single-Race Parts
FormList Property HeadPartsArgonian  Auto  
FormList Property HeadPartsBreton  Auto  
FormList Property HeadPartsDarkElf  Auto  
FormList Property HeadPartsHighElf  Auto  
FormList Property HeadPartsImperial  Auto  
FormList Property HeadPartsKhajiit  Auto  
FormList Property HeadPartsNord  Auto  
FormList Property HeadPartsOrc  Auto  
FormList Property HeadPartsRedguard  Auto  
FormList Property HeadPartsWoodElf  Auto  

; Single-Race Parts and Vampire
FormList Property HeadPartsArgonianandVampire  Auto  
FormList Property HeadPartsBretonandVampire  Auto  
FormList Property HeadPartsDarkElfandVampire  Auto  
FormList Property HeadPartsHighElfandVampire  Auto  
FormList Property HeadPartsImperialandVampire  Auto  
FormList Property HeadPartsKhajiitandVampire  Auto  
FormList Property HeadPartsNordandVampire  Auto  
FormList Property HeadPartsOrcandVampire  Auto  
FormList Property HeadPartsRedguardandVampire  Auto  
FormList Property HeadPartsWoodElfandVampire  Auto  

; New Races
FormList Property NewArgonian Auto
FormList Property NewBreton Auto
FormList Property NewDarkElf Auto
FormList Property NewHighElf Auto
FormList Property NewImperial Auto
FormList Property NewKhajiit Auto
FormList Property NewNord Auto
FormList Property NewOrc Auto
FormList Property NewRedguard Auto
FormList Property NewWoodElf Auto

; New Races Vampire
FormList Property NewArgonianVampire Auto
FormList Property NewBretonVampire Auto
FormList Property NewDarkElfVampire Auto
FormList Property NewHighElfVampire Auto
FormList Property NewImperialVampire Auto
FormList Property NewKhajiitVampire Auto
FormList Property NewNordVampire Auto
FormList Property NewOrcVampire Auto
FormList Property NewRedguardVampire Auto
FormList Property NewWoodElfVampire Auto

Function proxyRaces()
	FormList[] RaceList = new FormList[10]
	RaceList[0] = NewArgonian
	RaceList[1] = NewBreton
	RaceList[2] = NewDarkElf
	RaceList[3] = NewHighElf
	RaceList[4] = NewImperial
	RaceList[5] = NewKhajiit
	RaceList[6] = NewNord
	RaceList[7] = NewOrc
	RaceList[8] = NewRedguard
	RaceList[9] = NewWoodElf
	
	FormList[] RaceListVampire = new FormList[10]
	RaceListVampire[0] = NewArgonianVampire
	RaceListVampire[1] = NewBretonVampire
	RaceListVampire[2] = NewDarkElfVampire
	RaceListVampire[3] = NewHighElfVampire
	RaceListVampire[4] = NewImperialVampire
	RaceListVampire[5] = NewKhajiitVampire
	RaceListVampire[6] = NewNordVampire
	RaceListVampire[7] = NewOrcVampire
	RaceListVampire[8] = NewRedguardVampire
	RaceListVampire[9] = NewWoodElfVampire
	
	FormList[] HeadPartsList = new FormList[10]
	HeadPartsList[0] = HeadPartsArgonian
	HeadPartsList[1] = HeadPartsBreton
	HeadPartsList[2] = HeadPartsDarkElf
	HeadPartsList[3] = HeadPartsHighElf
	HeadPartsList[4] = HeadPartsImperial
	HeadPartsList[5] = HeadPartsKhajiit
	HeadPartsList[6] = HeadPartsNord
	HeadPartsList[7] = HeadPartsOrc
	HeadPartsList[8] = HeadPartsRedguard
	HeadPartsList[9] = HeadPartsWoodElf
	
	FormList[] HeadPartsVampireList = new FormList[10]
	HeadPartsVampireList[0] = HeadPartsArgonianandVampire
	HeadPartsVampireList[1] = HeadPartsBretonandVampire
	HeadPartsVampireList[2] = HeadPartsDarkElfandVampire
	HeadPartsVampireList[3] = HeadPartsHighElfandVampire
	HeadPartsVampireList[4] = HeadPartsImperialandVampire
	HeadPartsVampireList[5] = HeadPartsKhajiitandVampire
	HeadPartsVampireList[6] = HeadPartsNordandVampire
	HeadPartsVampireList[7] = HeadPartsOrcandVampire
	HeadPartsVampireList[8] = HeadPartsRedguardandVampire
	HeadPartsVampireList[9] = HeadPartsWoodElfandVampire
	
	int element = 0
	While(element < RaceList.Length)
		If(RaceList[element] != None && RaceList[element].GetSize() > 0) ; Ensure we actually have a replacement
			int index = 0
			While(index < RaceList[element].GetSize()) ; Cycle each race in our replacement list
				; Regular Listing
				Race standardRace = RaceList[element].GetAt(index) AS Race
				if(standardRace != None) ; Make sure we actually have a race to replace with
					if(PlayableRaceList != None && !PlayableRaceList.HasForm(standardRace)) ; Check for None so we can skip transform script without crashing
						PlayableRaceList.AddForm(standardRace)
					endIf
					
					; Self listing
					if(!HeadPartsList[element].HasForm(standardRace))
						HeadPartsList[element].AddForm(standardRace)
					endIf
					if(!HeadPartsVampireList[element].HasForm(standardRace))
						HeadPartsVampireList[element].AddForm(standardRace)
					endIf
					
					if(!isHuman(element))
						if(!RacesBeast.HasForm(standardRace))
							RacesBeast.AddForm(standardRace)
						endIf
					endIf
					
					
					; Conditioned Listings
					If(isHuman(element) || isOrc(element) || isElf(element))
						if(!HeadPartsAllRacesMinusBeast.HasForm(standardRace))
							HeadPartsAllRacesMinusBeast.AddForm(standardRace)
						endIf
					endIf
					If(isHuman(element))
						if(!RacesHuman.HasForm(standardRace))
							RacesHuman.AddForm(standardRace)
						endIf
						if(!HeadPartsHuman.HasForm(standardRace))
							HeadPartsHuman.AddForm(standardRace)
						endIf
						if(!HeadPartsHumansandVampires.HasForm(standardRace))
							HeadPartsHumansandVampires.AddForm(standardRace)
						endIf
						if(!HeadPartsHumansOrcsandVampires.HasForm(standardRace))
							HeadPartsHumansOrcsandVampires.AddForm(standardRace)
						endIf
					endIf
					If(isOrc(element))
						if(!HeadPartsHumansOrcsandVampires.HasForm(standardRace))
							HeadPartsHumansOrcsandVampires.AddForm(standardRace)
						endIf
					endIf
					If(isElf(element))
						if(!RacesElf.HasForm(standardRace))
							RacesElf.AddForm(standardRace)
						endIf
						if(!HeadPartsElves.HasForm(standardRace))
							HeadPartsElves.AddForm(standardRace)
						endIf
						if(!HeadPartsElvesandVampires.HasForm(standardRace))
							HeadPartsElvesandVampires.AddForm(standardRace)
						endIf
					endIf
					If(isBreton(element) || isNord(element) || isImperial(element))
						if(!HeadPartsBretsNordsImpsandVampires.HasForm(standardRace))
							HeadPartsBretsNordsImpsandVampires.AddForm(standardRace)
						endIf
					endIf
					
					; Vampire Listing
					If(RaceListVampire[element] != None && RaceListVampire[element].GetSize() > 0)
						Race vampireRace = RaceListVampire[element].GetAt(index) AS Race
						if(vampireRace != None)
							if(PlayableVampireList != None && !PlayableVampireList.HasForm(vampireRace)) ; Check for None so we can skip transform script without crashing
								PlayableVampireList.AddForm(vampireRace)
							endIf
							
							if(!HeadPartsVampireList[element].HasForm(vampireRace))
								HeadPartsVampireList[element].AddForm(vampireRace)
							endIf
							
							; Conditioned Listings
							If(isHuman(element) || isOrc(element) || isElf(element))
								if(!HeadPartsAllRacesMinusBeast.HasForm(vampireRace))
									HeadPartsAllRacesMinusBeast.AddForm(vampireRace)
								endIf
							endIf
							if(isHuman(element))
								if(!HeadPartsHumanVampires.HasForm(vampireRace))
									HeadPartsHumanVampires.AddForm(vampireRace)
								endIf
								if(!HeadPartsHumansandVampires.HasForm(vampireRace))
									HeadPartsHumansandVampires.AddForm(vampireRace)
								endIf
								if(!HeadPartsHumansOrcsandVampires.HasForm(vampireRace))
									HeadPartsHumansOrcsandVampires.AddForm(vampireRace)
								endIf
								if(!HeadPartsHumanoidVampire.HasForm(vampireRace))
									HeadPartsHumanoidVampire.AddForm(vampireRace)
								endIf
							endIf
							if(isOrc(element))
								if(!HeadPartsHumansOrcsandVampires.HasForm(vampireRace))
									HeadPartsHumansOrcsandVampires.AddForm(vampireRace)
								endIf
							endIf
							If(isElf(element))
								if(!HeadPartsElvesandVampires.HasForm(vampireRace))
									HeadPartsElvesandVampires.AddForm(vampireRace)
								endIf
							endIf
							If(isBreton(element) || isNord(element) || isImperial(element))
								if(!HeadPartsBretsNordsImpsandVampires.HasForm(vampireRace))
									HeadPartsBretsNordsImpsandVampires.AddForm(vampireRace)
								endIf
							endIf
							if(isOrc(element) || isElf(element))
								if(!HeadPartsHumanoidVampire.HasForm(vampireRace))
									HeadPartsHumanoidVampire.AddForm(vampireRace)
								endIf
							endIf
						endIf
					endIf
				endIf
				index += 1
			endWhile
		endIf
		element += 1
	EndWhile
EndFunction

Bool Function isHuman(int index)
	if(index == 0)
		return false
	elseif(index == 2)
		return false
	elseif(index == 3)
		return false
	elseif(index == 5)
		return false
	elseif(index == 7)
		return false
	elseif(index == 9)
		return false
	else
		return true
	endif
	return true
EndFunction

Bool Function isBreton(int index)
	if(index == 1)
		return true
	else
		return false
	endif
	return false
EndFunction

Bool Function isNord(int index)
	if(index == 6)
		return true
	else
		return false
	endif
	return false
EndFunction

Bool Function isImperial(int index)
	if(index == 4)
		return true
	else
		return false
	endif
	return false
EndFunction

Bool Function isOrc(int index)
	if(index == 7)
		return true
	else
		return false
	endif
	return false
EndFunction

Bool Function isElf(int index)
	if(index == 2)
		return true
	elseif(index == 3)
		return true
	elseif(index == 9)
		return true
	else
		return false
	endif
	return false
EndFunction
