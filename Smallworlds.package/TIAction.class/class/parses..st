as yet unclassified
parses: aString
	| preposition arguments |
	preposition := (self signature subStrings: ':') second.
	aString
		ifEmpty: [ ^nil ]
		ifNotEmpty: [
			arguments := (aString splitOn: (preposition surroundedBy: ' ')).
			(arguments size = 2)
				ifTrue: [
					^self new initialize
						addArgument: arguments first;
						addArgument: arguments second
				]
				ifFalse: [ ^nil ]
		]