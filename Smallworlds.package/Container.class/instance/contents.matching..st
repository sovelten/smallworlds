selecting
contents: aCollection matching: aString
	^aCollection select: [ :each | each matches: aString ]