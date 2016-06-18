accessing
parseSynonym: aString
	| combinations words |
	words := ' ' split: aString.
	combinations := words combinations collect: [ :s | ' ' join: s ].
	^combinations asChoiceParser.
	