as yet unclassified
dungeon
	"Create a world with a few locations and items."

	| gen dungeon world |
	
	world := TestWorld new initialize.

	gen := DungeonFactory locations: TestLocation disconnectedLocations.
	dungeon := gen generate2d: 30.

	world player: (Actor name: 'player'
					shortDescription: 'an adventurer'
					longDescription: 'a nervous-looking individual with thick glasses';
					location: (dungeon locations at:1) location).
	
	^world