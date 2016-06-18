accessing
objectsMatching: aString
	| objects |
	objects := verb objectsInScope value: self actor.
	^objects select: [ :each | each matches: aString ].