Scriptname ProjectRespawnScript extends Actor



Event OnDying (Actor akKiller)

	;Utility.Wait(10.0)
	Resurrect()
	ResetHealthAndLimbs()

EndEvent
