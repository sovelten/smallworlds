reacting
addHooks: anAction

	actionHooks at: anAction verb signature
	ifPresent: [ :modifier |
		modifier value: anAction.
	]
	ifAbsent: [ self interrupt: anAction ]