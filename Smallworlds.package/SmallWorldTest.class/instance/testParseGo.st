tests-parsing
testParseGo
	| loc1 loc2  player |
	player := world player.
	loc1 := world locations first.
	loc2 := (loc1 connectionsTo: 'north') first destination.
	player location: loc1.
	self assert: (player location = loc1).
	self assert: (player owner = loc1).
	world parse: 'n'.
	self assert: (player location = loc2).
	self assert: (player owner = loc2).