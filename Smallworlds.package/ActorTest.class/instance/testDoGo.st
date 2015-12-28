tests-command
testDoGo
	| loc1 loc2 message |
	loc1 := TestLocation blueRoom.
	loc2 := TestLocation redRoom.
	player location: loc1.
	self assert: (player location = loc1).
	self assert: (loc1 contents size = 1).
	self assert: (loc2 contents size = 0).
	self assert: (player owner = loc1).
	player doGo: (Connection northTo: loc2).
	self assert: (player location = loc2).
	self assert: (loc1 contents size = 0).
	self assert: (loc2 contents size = 1).
	self assert: (player owner = loc2).
	message := (player doGo: (ClosedConnection invalid)).
	self assert: (message = ClosedConnection invalid closedDescription).