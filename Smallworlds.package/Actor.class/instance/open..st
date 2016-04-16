command
open: aString
	| connections |
	"TODO"
	connections := self location connectionsTo: aString.
	connections size = 0 ifTrue: [ ^'What are you trying to open?' ].

	connections size = 1 ifTrue: [
		(connections at: 1) locked ifTrue: [ ^'It seems to be locked' ].

		(connections at: 1) open ifTrue: [ ^'It''s already open' ].

		(connections at: 1) open: true.
		^'OK' ].

	"connections size > 1"

	^'Could you be a bit more specific?'