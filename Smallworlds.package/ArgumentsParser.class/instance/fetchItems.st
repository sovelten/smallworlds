changing
fetchItems
	verb arguments do: [ :each |
		self parseArgument: each.
	].
	self checkFailed ifTrue: [ currentArg := -1 ].