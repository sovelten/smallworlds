as yet unclassified
parseDefault
	(self parseArgumentAt: 1)
		ifTrue: [ 
			(self parseArgumentAt: 2)
				ifTrue: [ self status: #parsed ]
				ifFalse: [ self addResponse: self failSecondMessage ]
		]
		ifFalse: [ self addResponse: self failMessage ]