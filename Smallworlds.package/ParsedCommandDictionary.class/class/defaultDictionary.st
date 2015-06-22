instance creation
defaultDictionary
	"Return default ParsedCommand Dictionary"

	^self new initialize
		add: 'up'				-> (GoAction parses:'up');
		add: 'u'				-> (GoAction parses:'up');
		add: 'ascend'		-> (GoAction parses:'up');
		add: 'upward'		-> (GoAction parses:'up');
		add: 'down'			-> (GoAction parses:'down');
		add: 'd'				-> (GoAction parses:'down');
		add: 'descend'		-> (GoAction parses:'down');
		add: 'downward'		->	(GoAction parses:'down');
		add: 'north' 		-> (GoAction parses:'north');
		add: 'n'				-> (GoAction parses:'north');
		add: 'south'			-> (GoAction parses:'south');
		add: 's'				-> (GoAction parses:'south');
		add: 'west'			-> (GoAction parses:'west');
		add: 'w'				-> (GoAction parses:'west');
		add: 'e'				-> (GoAction parses:'east');
		add: 'east'			-> (GoAction parses:'east');
		add: 'ne'				-> (GoAction parses:'northeast');
		add: 'se'				-> (GoAction parses:'southeast');
		add: 'nw'				-> (GoAction parses:'northwest');
		add: 'sw'				-> (GoAction parses:'southwest');
		add: 'score'			-> (ShowScoreAction new);
		yourself.