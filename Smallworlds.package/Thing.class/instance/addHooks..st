reacting
addHooks: anAction

	actionHooks at: anAction class signature
	ifPresent: [ :modifier |
		modifier value: anAction.
	]
	ifAbsent: []