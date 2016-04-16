tests-changing
setUp
	world := TestWorld default.
	actor := Actor defaultActor location: world locations first.
	world player: actor.
	lookIAction := Action look.
	lookIAction actor: actor.
	dropTAction := Action drop.
	dropTAction actor: actor.
	putOnTIAction := Action putOn.
	putOnTIAction actor: actor.