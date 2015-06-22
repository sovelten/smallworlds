connecting
connectionsTo: aString
	^self connections select: [ :each | (each noun hasSynonym: aString) ]