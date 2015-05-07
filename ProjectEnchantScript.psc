Scriptname ProjectEnchantScript extends activemagiceffect

int KillerCount
float DamageCount
float OrigHealth
float CurrentHealth4
int HitCountVar
int TimerVar
int TankVar



Event OnEffectStart (Actor akTarget, Actor akCaster)

	;Debug.OpenUserLog("myUserLog")
	akCaster.AddItem(Pain, akCaster.GetEquippedWeapon().GetBaseDamage(), true)
	akCaster.AddItem(HitCount,1,true)

	if (akTarget.IsDead() != false && akTarget.GetKiller() == akCaster)		
		akCaster.AddItem(Charkill, 1, true)
		KillerCount = akCaster.GetItemCount(Charkill)	
		DamageCount = akCaster.GetItemCount(Pain)
		HitCountVar = akCaster.GetItemCount(HitCount)
		TankVar = akCaster.GetItemCount(TankCount)		
		TimerVar = akCaster.GetItemCount(TimerObj)

		;Debug.TraceUser ("myUserLog", akCaster.GetActorBase().GetName() + " has killed " + KillerCount + " and dealt " + DamageCount + " and hit " + HitCountVar + " lasted " + TimerVar + " seconds" + " and been hit " + TankVar + " times")
		;Debug.TraceUser ("myUserLog", "\t" + TimerVar + "\t" +  KillerCount + "\t" + DamageCount + "\t" +  HitCountVar + "\t" + TankVar + "\n")

		;Debug.Notification ("killed " + KillerCount + " and dealt " + DamageCount + " and hit " + HitCountVar)
	endif



	if (akCaster.IsInKillMove() == true)
		akCaster.AddItem(Charkill, 1, true)
		KillerCount = akCaster.GetItemCount(Charkill)
		HitCountVar = akCaster.GetItemCount(HitCount)
		DamageCount = akCaster.GetItemCount(Pain)
		TankVar = akCaster.GetItemCount(TankCount)	
		TimerVar = akCaster.GetItemCount(TimerObj)

		;Debug.TraceUser ("myUserLog", akCaster.GetActorBase().GetName() + " has killed " + KillerCount + " and dealt " + DamageCount + " and hit " + HitCountVar + " lasted " + TimerVar + " seconds" + " and been hit " + TankVar + " times")
		;Debug.TraceUser ("myUserLog", "\t" + TimerVar + "\t" +  KillerCount + "\t" + DamageCount + "\t" +  HitCountVar + "\t" + TankVar + "\n")

		;Debug.Notification ("killed " + KillerCount + " and dealt " + DamageCount + " and hit " + HitCountVar)
	endif


EndEvent

MiscObject Property Charkill  Auto  

MiscObject Property Pain  Auto  

MiscObject Property HitCount  Auto  

MiscObject Property TimerObj  Auto  

MiscObject Property TankCount  Auto  
