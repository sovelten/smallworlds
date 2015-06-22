instance creation
signature: aSymbol synonyms: aStringCollection
	^self name: (aSymbol readStream nextDelimited: $:)
			synonyms: aStringCollection
			signature: aSymbol
