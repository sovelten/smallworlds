as yet unclassified
default
	"Create a world with a few locations and items."

	| loc1 loc2 loc3 loc4 world |
	
	world := super default.

	loc1 := TestLocation redRoom
			longDescription: 'You have entered a room with bright red walls.  An arched portico leads north.'.

	loc2 := TestLocation blueRoom
			longDescription: 'You are in a room with bright blue walls.  There is a plain wooden door to the east ','while a damp and dingy tunnel runs to the southeast.'.

	loc3 := TestLocation greenRoom
			longDescription: 'Before you lies a room with bright green walls.  A dusty passageway leads to the ','west, while a narrow hallway leads south.'.

	loc4 := TestLocation purpleRoom
			longDescription: 'Your eyes are jolted by the electric purple walls of this room.  A ',
						'portal festooned with gilt and pearls leads to the northwest.'.

	world
		addLocation: loc1;
		addLocation: loc2;
		addLocation: loc3;
		addLocation: loc4.

	loc1
		addConnection: (Connection northTo: loc2);
		add: (Item
				name: 'lamp'
				description: 'old-fashioned oil lamp').

	loc2
		addConnection: (Connection eastTo: loc3);
		addConnection: (Connection name:'southeast' to: loc4);
		add: (Item
				name: 'clock'
				shortDescription: 'grandfather clock'
				longDescription: 'large grandfather clock').

	loc3
		addConnection: (Connection westTo: loc2);
		addConnection: (Connection southTo: loc4);
		add: (Item
				name: 'chest'
				description: 'iron-bound chest').

	loc4
		addConnection: (Connection name:'northwest' to: loc2);
		add: (Item
				name: 'key'
				description: 'intricate key').

	world player: (Actor defaultActor
					location: loc1).
	
	^world