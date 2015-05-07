Scriptname ProjectRespawnScript extends Actor



Event OnDeath (Actor akKiller)

	Utility.Wait(50.0)
	Resurrect()

EndEvent