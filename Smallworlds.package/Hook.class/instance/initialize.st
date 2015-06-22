initialization
initialize
	super initialize.
	capacity := 1.
	
	noun := Noun name:'hook'.
	
	self addHook:
		[ :action |
			self checkFull
				ifTrue: [
					action addResponse: 'The ', self noun name, ' already has something in it.'.
					action stop.
				]
				ifFalse: [  
					(action parsedArguments first hasAdjective:'hangable')
						ifFalse: [  
							action addResponse: 'You can''t hang this.'.
							action stop.	
						]
				]
		] for: #put:on: