instance creation
defaultDictionary
	"Return default abbreviation Dictionary"

	^self new initialize
		add: 'up'				-> [Action go addArgument: 'up'];
		add: 'u'				-> [Action go addArgument: 'up'];
		add: 'ascend'		-> [Action go addArgument: 'up'];
		add: 'upward'		-> [Action go addArgument: 'up'];
		add: 'down'			-> [Action go addArgument: 'down'];
		add: 'd'				-> [Action go addArgument: 'down'];
		add: 'descend'		-> [Action go addArgument: 'down'];
		add: 'downward'		->	[Action go addArgument: 'down'];
		add: 'north' 		-> [Action go addArgument: 'north'];
		add: 'n'				-> [Action go addArgument: 'north'];
		add: 'south'			-> [Action go addArgument: 'south'];
		add: 's'				-> [Action go addArgument: 'south'];
		add: 'west'			-> [Action go addArgument: 'west'];
		add: 'w'				-> [Action go addArgument: 'west'];
		add: 'e'				-> [Action go addArgument: 'east'];
		add: 'east'			-> [Action go addArgument: 'east'];
		add: 'ne'				-> [Action go addArgument: 'northeast'];
		add: 'se'				-> [Action go addArgument: 'southeast'];
		add: 'nw'				-> [Action go addArgument: 'northwest'];
		add: 'sw'				-> [Action go addArgument: 'southwest'];
		yourself.