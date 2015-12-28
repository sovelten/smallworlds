parsing
close: aString
	| connections |

	connections := self location connectionsTo: aString.
	connections size = 0 ifTrue: [ ^Response text: 'What are you trying to open?' ].

	connections size = 1 ifTrue: [
		(connections at: 1) closeable ifFalse: [ ^Response text: 'There''s no way to close that.' ].
		(connections at: 1) closed: true.
		^Response text: 'OK' ].

	"connections size > 1"

	^Response text: 'Could you be a bit more specific?'