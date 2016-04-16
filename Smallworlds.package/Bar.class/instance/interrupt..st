reacting
interrupt: anAction

anAction signature = #look ifTrue: [ ^true ].

self checkLit not ifTrue: [
	anAction signature = #go:
		ifTrue: [
			Transcript crShow: anAction arguments first.
			anAction arguments first name = 'north' ifTrue: [ ^true ].
			anAction stop.
			message increaseBlunderCount.
			anAction addResponse: 'Blundering around in the dark isn''t a good idea!'
		]
		ifFalse: [ 
			anAction stop.
			message increaseBlunderCount.
			anAction addResponse: 'In the dark? You could easily disturb something.'
		]
]