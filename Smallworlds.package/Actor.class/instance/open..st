command
open: aString
	| connections |
	"TODO"
	connections := self location connectionsTo: aString.
	connections size = 0 ifTrue: [ ^Response text: 'What are you trying to open?' ].

	connections size = 1 ifTrue: [
		(connections at: 1) locked ifTrue: [ ^Response text: 'It seems to be locked' ].

		(connections at: 1) open ifTrue: [ ^Response text: 'It''s already open' ].

		(connections at: 1) open: true.
		^Response text: 'OK' ].

	"connections size > 1"

	^Response text: 'Could you be a bit more specific?'