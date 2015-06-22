tests-as yet unclassified
testHasEmptyNeighbor
	| pos room |
	pos := dungeon origin.
	dungeon addLocation: location at: pos.
	room := dungeon locations at: 1.
	self assert: (dungeon hasEmptyNeighbor: room) = true.
	dungeon addLocation: location copy at: (pos + (Direction north asPoint)).
	dungeon addLocation: location copy at: (pos + (Direction west asPoint)).
	dungeon addLocation: location copy at: (pos + (Direction east asPoint)).
	dungeon addLocation: location copy at: (pos + (Direction south asPoint)).
	self assert: (dungeon hasEmptyNeighbor: room) = false.