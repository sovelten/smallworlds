tests-as yet unclassified
testEmptySlotsAtAt
	| pos emptySlots |
	pos := dungeon origin.
	dungeon addLocation: location at: pos.
	emptySlots := dungeon emptySlotsAt: pos x at: pos y.
	self assert: emptySlots = pos fourNeighbors.
	dungeon addLocation: location copy at: pos+(1@0).
	emptySlots := dungeon emptySlotsAt: pos x at: pos y.
	self assert: emptySlots asSet = (pos fourNeighbors asSet difference: {(pos+(1@0))}).