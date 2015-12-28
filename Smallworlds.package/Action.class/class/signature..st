accessing
signature: aSymbol
	| callback |
	callback := ('do', aSymbol capitalized) asSymbol.
	^self new
		signature: aSymbol;
		callback: callback