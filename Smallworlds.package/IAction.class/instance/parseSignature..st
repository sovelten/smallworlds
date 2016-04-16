as yet unclassified
parseSignature: aSymbol
	| word |
	word := (aSymbol substrings: ':') first.
	^word asParser ==> [ :parsed | self signature ]