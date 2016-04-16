as yet unclassified
parseSignature: aSymbol
	| verb object1 object2 preposition word sigWords |
	sigWords := aSymbol substrings: ':'.
	verb := sigWords first asParser.
	preposition := sigWords second asParser trim.
	word := #letter asParser plus trim.
	object1 := (word plusGreedy: preposition) flatten trim.
	object2 := word plus flatten trim.
	^verb, #space asParser, object1, preposition, object2
	==>
		[ :elements |
			OrderedCollection
				with: elements third trim
				with: elements fifth
		]