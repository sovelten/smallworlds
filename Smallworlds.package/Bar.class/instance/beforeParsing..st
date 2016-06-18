reacting
beforeParsing: aVerb

	aVerb signature = #look ifTrue: [ ^ nil ].
	
	self checkLit ifFalse: [
		aVerb signature = #go:
			ifTrue: [
				aVerb arguments first text = 'north' ifTrue: [ ^ nil ].
				message increaseBlunderCount.
				^SimpleAction response: 'Blundering around in the dark isn''t a good idea!'
			]
			ifFalse: [
				message increaseBlunderCount.
				^SimpleAction response: 'In the dark? You could easily disturb something.'
			]
	].
	^ nil