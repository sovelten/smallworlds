comparing
containsPlayer
	^self contents anySatisfy: [ :each | each checkPlayer ].