changing
tick
	| messages |
	messages := events  collect: [ :each | each tick ] thenSelect: [ :each | each isNotEmpty ].
	^messages