tests-changing
setUp
	world := TestWorld default.
	actor := Actor defaultActor.
	lookIAction := IAction signature: #look.
	lookIAction actor: actor.
	dropTAction := TAction signature: #drop:.
	dropTAction actor: actor.