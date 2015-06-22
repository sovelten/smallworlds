as yet unclassified
hasEmptyNeighbor: aDungeonLocation
	
	| pos |
	
	pos := aDungeonLocation position.
	^(self emptySlotsAt: pos x at: pos y) isNotEmpty

	