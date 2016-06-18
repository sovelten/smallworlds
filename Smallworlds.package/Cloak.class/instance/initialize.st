initialization
initialize
	super initialize.
	
	self setAdjective: 'hangable'.

	noun := Noun root:'cloak'.
	self longDescription: 'A handsome cloak, of velvet trimmed with satin, and slighlty splattered with raindrops. Its blackness is so deep that it almost seems to suck light from the room.'.
	self shortDescription: longDescription.

	self addHook:
		[ :action |
			(action actor checkIsAt: 'Cloakroom') ifFalse:
			[
				action addResponse: 'This isn''t the place to leave a smart cloak lying around'.
				action stop.
			]
		] for: #drop:.

	self addHook:
		[ :action |
			(action things second showName = 'hook') ifTrue:
			[
				action actor incrementScore.
			]
		] for: #put:on:.

	self addHook:
		[ :action |
			(self owner showName = 'hook') ifTrue:
			[
				action actor decrementScore.
			]
		] for: #take: