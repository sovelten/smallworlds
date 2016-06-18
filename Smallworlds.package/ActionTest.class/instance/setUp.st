tests-changing
setUp
	world := TestWorld default.
	actor := Actor defaultActor location: world locations first.
	world player: actor.
	lookIAction := Action verb: Verb look actor: actor.
	dropTAction := Action verb: Verb drop actor: actor.
	putOnTIAction := Action verb: Verb putOn actor: actor.