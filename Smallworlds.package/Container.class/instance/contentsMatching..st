selecting
contentsMatching: aString
	^self contents select: [ :each | each matches: aString ]