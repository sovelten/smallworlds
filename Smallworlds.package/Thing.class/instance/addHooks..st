reacting
addHooks: anAction

	actionHooks at: anAction signature
	ifPresent: [ :modifier |
		modifier value: anAction.
	]
	ifAbsent: [ self interrupt: anAction ]