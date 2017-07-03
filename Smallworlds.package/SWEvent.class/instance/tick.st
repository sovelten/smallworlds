as yet unclassified
tick
	counter := counter - 1.
	counter = 0
		ifTrue: [ 
			counter := frequency.
			^ block value ].
	^ ''