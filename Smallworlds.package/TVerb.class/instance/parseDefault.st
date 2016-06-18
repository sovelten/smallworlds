as yet unclassified
parseDefault
	| matches |
	matches := self objectsMatching: arguments first.
	(self parseArgumentAt: 1)
		ifTrue: [ self status: #parsed ]
		ifFalse: [ self addResponse: self failMessage ]