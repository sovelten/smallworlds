running
execute
	self parseArguments value: self.
	self wasParsed
		ifTrue: [ 
			self receiveHooks.
			self wasStopped ifFalse: [ 
				self executeDefault.
			].
		^self respond
		]
		ifFalse:  [ 
			actor announcer announce: (EventParsingFailed action: self).
			self wasStopped ifFalse: [
				^self parsingFailed
			]
			ifTrue: [ 
				^self respond
			]
		]