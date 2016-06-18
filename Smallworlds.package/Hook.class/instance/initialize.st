initialization
initialize
	super initialize.
	capacity := 1.
	
	noun := Noun root:'hook'.
	self shortDescription: 'It''s just a small brass hook'.
	self longDescription: 'It''s just a small brass hook'.
	
	self addHook:
		[ :action |
			self checkFull
				ifTrue: [
					action addResponse: 'The ', self noun name, ' already has something in it.'.
					action stop.
				]
				ifFalse: [  
					(action things first hasAdjective:'hangable')
						ifFalse: [  
							action addResponse: 'You can''t hang this.'.
							action stop.	
						]
				]
		] for: #put:on: