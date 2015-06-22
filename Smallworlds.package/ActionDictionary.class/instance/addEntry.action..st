as yet unclassified
addEntry: synonym action: anAction
	self at: synonym ifPresent: [ :set |
		set add: anAction
	]
	ifAbsent: [
		self add: synonym -> (Set with:anAction)
	]