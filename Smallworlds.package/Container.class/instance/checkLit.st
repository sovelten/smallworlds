checking
checkLit
	^super checkLit | (self contents anySatisfy: [ :each | each checkLit ]).