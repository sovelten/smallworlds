running
execute
	self parseArguments
		ifTrue: [ 
			self receiveHooks.
	
			wasStopped ifFalse: [ 
				self addResponse: self executeDefault.
			].
			^self respond
		]
		ifFalse:  [ 
			actor announcer announce: (EventParsingFailed action: self).
			wasStopped ifFalse: [
				^self parsingFailed
			]
			ifTrue: [ 
				^self respond
			]
		]
