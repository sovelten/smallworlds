selecting
anyContentMatching: aString ifFound: foundBlock ifNone: notFoundBlock
	
	^self contents detect: [ :item | item matches: aString ]
		ifFound: foundBlock
		ifNone: notFoundBlock.