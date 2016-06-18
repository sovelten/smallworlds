instance creation
defaultDictionary
	"Return default abbreviation Dictionary"

	^self new initialize
		add: 'up'				-> [Verb go addArgument: 'up'];
		add: 'u'				-> [Verb go addArgument: 'up'];
		add: 'ascend'		-> [Verb go addArgument: 'up'];
		add: 'upward'		-> [Verb go addArgument: 'up'];
		add: 'down'			-> [Verb go addArgument: 'down'];
		add: 'd'				-> [Verb go addArgument: 'down'];
		add: 'descend'		-> [Verb go addArgument: 'down'];
		add: 'downward'		->	[Verb go addArgument: 'down'];
		add: 'north' 		-> [Verb go addArgument: 'north'];
		add: 'n'				-> [Verb go addArgument: 'north'];
		add: 'south'			-> [Verb go addArgument: 'south'];
		add: 's'				-> [Verb go addArgument: 'south'];
		add: 'west'			-> [Verb go addArgument: 'west'];
		add: 'w'				-> [Verb go addArgument: 'west'];
		add: 'e'				-> [Verb go addArgument: 'east'];
		add: 'east'			-> [Verb go addArgument: 'east'];
		add: 'ne'				-> [Verb go addArgument: 'northeast'];
		add: 'se'				-> [Verb go addArgument: 'southeast'];
		add: 'nw'				-> [Verb go addArgument: 'northwest'];
		add: 'sw'				-> [Verb go addArgument: 'southwest'];
		yourself.