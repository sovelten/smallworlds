instance creation
defaultDictionary
	"Return default abbreviation Dictionary"

	^self new initialize
		add: 'up'				-> [TAction signature: #go: object: 'up'];
		add: 'u'				-> [TAction signature: #go: object: 'up'];
		add: 'ascend'		-> [TAction signature: #go: object: 'up'];
		add: 'upward'		-> [TAction signature: #go: object: 'up'];
		add: 'down'			-> [TAction signature: #go: object: 'down'];
		add: 'd'				-> [TAction signature: #go: object: 'down'];
		add: 'descend'		-> [TAction signature: #go: object: 'down'];
		add: 'downward'		->	[TAction signature: #go: object: 'down'];
		add: 'north' 		-> [TAction signature: #go: object: 'north'];
		add: 'n'				-> [TAction signature: #go: object: 'north'];
		add: 'south'			-> [TAction signature: #go: object: 'south'];
		add: 's'				-> [TAction signature: #go: object: 'south'];
		add: 'west'			-> [TAction signature: #go: object: 'west'];
		add: 'w'				-> [TAction signature: #go: object: 'west'];
		add: 'e'				-> [TAction signature: #go: object: 'east'];
		add: 'east'			-> [TAction signature: #go: object: 'east'];
		add: 'ne'				-> [TAction signature: #go: object: 'northeast'];
		add: 'se'				-> [TAction signature: #go: object: 'southeast'];
		add: 'nw'				-> [TAction signature: #go: object: 'northwest'];
		add: 'sw'				-> [TAction signature: #go: object: 'southwest'];
		add: 'score'			-> [IAction signature: #score];
		yourself.