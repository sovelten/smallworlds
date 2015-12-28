as yet unclassified
asParser
	| parsers |
	parsers := signatures collect: [ :each | self parseSignature: each  ].
	^(PPChoiceParser withAll: parsers) end
		==> [ :obj | TAction signature: self signature object: obj ]