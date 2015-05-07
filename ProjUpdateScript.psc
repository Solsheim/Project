Scriptname ProjUpdateScript   Extends Actor

bool DoOnce
int TankCount
int TimerVar
int HitCountVar
int KillerCount
float DamageCount

Event OnActivate(ObjectReference akActionRef)	
		RegisterForUpdate(10.0)
		Debug.OpenUserLog("myUserLog")
EndEvent


Event OnUpdate()

TimerVar = GetItemCount(TimerCount)
KillerCount = GetItemCount(Charkill)
HitCountVar = GetItemCount(HitCount)
DamageCount = GetItemCount(Pain)
TankCount = GetItemCount (Tank)
TimerVar = GetItemCount(TimerCount)
Debug.TraceUser ("myUserLog", "\t" + GetActorBase().GetName() + "\t" + TimerVar + "\t" +  KillerCount + "\t" + DamageCount + "\t" +  HitCountVar + "\t" + TankCount + "\n")
EndEvent



MiscObject Property Charkill  Auto  

MiscObject Property TimerCount  Auto  

MiscObject Property HitCount  Auto  

MiscObject Property Pain  Auto  

MiscObject Property Tank  Auto  
