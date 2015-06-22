accessing
selectRandomLocation: aDungeon
	"Selects a random location which can be connected"
	
	^(aDungeon locations select: [ :loc |
		aDungeon hasEmptyNeighbor: loc	
	]) atRandom