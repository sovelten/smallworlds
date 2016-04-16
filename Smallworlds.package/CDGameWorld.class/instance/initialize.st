initialization
initialize
| foyer cloakroom bar |
super initialize.

foyer := Location name:'Foyer'
	shortDescription: 'Foyer of the Opera House'
	longDescription: 'You are standing in a spacious hall, splendidly decorated in red and gold, with glittering chandeliers overhead. The entrance from the street is to the north, and there are doorways south and west.'.
	
cloakroom := Location name: 'Cloakroom'
	shortDescription: 'Cloak Room'
	longDescription: 'The walls of this small room were clearly once lined with hooks, though now only one remains. The exit is a door to the east.'.
	
cloakroom add: (Hook new).
	
bar := Bar new initialize.

bar isSouthOf: foyer.
cloakroom isWestOf: foyer.
foyer addConnection:
	(ClosedConnection
		name:'north'
		closedDescription: 'You''ve only just arrived, and besides, the weather outside seems',
		' to be getting worse.'
	).

self player: (CDActor defaultPlayer location: foyer).
player inventory add: (Cloak new).

self addLocation: foyer.
self addLocation: bar.
self addLocation: cloakroom.

"player announcer
	when: EventParsingFailed 
	send: #checkStumbling:
	to: bar."