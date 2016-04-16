running
execute
	self parseArguments.
	self wasParsed
		ifTrue: [ 
			self receiveHooks.
			self wasStopped ifFalse: [ 
				self executeDefault.
			].
			^self respond
			]
		ifFalse:  [ ^self respond ]