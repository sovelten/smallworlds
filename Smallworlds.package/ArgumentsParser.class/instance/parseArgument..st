changing
parseArgument: anArgument
	| matches |
	matches := self objectsMatching: anArgument text.
	anArgument items: matches.
	^matches