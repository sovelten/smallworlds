instance creation
signatures: aCollection
	| callback |
	callback := ('do', aCollection first capitalized) asSymbol.
	^self new
		signatures: aCollection;
		callback: callback