as yet unclassified
parseDefault
	(self parseArgumentAt: 1)
		ifTrue: [ self status: #parsed ]
		ifFalse: [ self addResponse: self failMessage ]