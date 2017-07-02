tests-command
testDoGo
	| loc1 loc2 message |
	loc1 := TestLocation blueRoom.
	loc2 := TestLocation redRoom.
	player location: loc1.
	self assert: player location equals: loc1.
	self assert: loc1 contents size equals: 1.
	self assert: loc2 contents size equals: 0.
	self assert: player owner equals: loc1.
	player doGo: (Connection northTo: loc2).
	self assert: player location equals: loc2.
	self assert: loc1 contents size equals: 0.
	self assert: loc2 contents size equals: 1.
	self assert: player owner equals: loc2.
	message := player doGo: ClosedConnection invalid.
	self assert: message equals: ClosedConnection invalid closedDescription