as yet unclassified
initialize
	super initialize.
	noun := Noun root: 'message'.
	shortDescription := 'You Won!'.
	longDescription := 'You Won!'.
	blunderCount := 0.
	
	self addHook:
	[ :action |
		blunderCount < 2 ifTrue: [ action actor incrementScore ]
	] for: #read:.