as yet unclassified
addEntry: synonym signature: signature
	self at: synonym ifPresent: [ :collection |
		collection add: signature
	]
	ifAbsent: [
		self add: synonym -> (
			(SortedCollection sortBlock: [ :a :b | a numArgs > b numArgs ])
				add:signature;
				yourself
			)
	]