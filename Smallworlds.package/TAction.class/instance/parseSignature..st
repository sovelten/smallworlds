as yet unclassified
parseSignature: aSymbol
	| verb object |
	verb := ((aSymbol substrings: ':') first) asParser.
	object := SWParserFactory words.
	^verb, #space asParser, object ==> [ :elements | elements third ]