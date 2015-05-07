Scriptname ProjTankScript extends Actor  

int TankCount
int TimerVar
int HitCountVar
int KillerCount
float DamageCount
bool DoOnce = false;



Event OnCombatStateChanged(Actor akTarget, Int aeCombatState)
if (IsInCombat() == true && DoOnce == false)
RegisterForUpdate(1.0)
DoOnce = true
EndIf

if (IsInCombat() == false)

UnregisterForUpdate()
DoOnce = false;

EndIf
EndEvent

Event OnHit (ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
AddItem (Tank, 1, true)
TankCount = GetItemCount (Tank)
;Debug.Notification (GetActorBase().GetName() + " has taken " + TankCount + " hits")
EndEvent

Event OnUpdate()

if (IsInCombat() == true && IsDead() == false)
	AddItem(TimerCount, 1, true)
EndIf

;Debug.Notification (GetActorBase().GetName() + " fought for " + TimerVar + " seconds")
;Debug.TraceUser ("myUserLog", "\t" + TimerVar + "\t" +  KillerCount + "\t" + DamageCount + "\t" +  HitCountVar + "\t" + TankCount + "\n")

EndEvent

MiscObject Property Tank  Auto  


MiscObject Property TimerCount  Auto  

MiscObject Property Charkill  Auto  

MiscObject Property HitCount  Auto  

MiscObject Property Pain  Auto  
