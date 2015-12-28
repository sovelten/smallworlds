accessing
asParser
	| parsers |
	parsers := signatures collect: [ :each | self parseSignature: each  ].
	^PPChoiceParser withAll: parsers.