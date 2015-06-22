command
unlock: aString
	| connections |

	connections := self location connectionsTo: aString.
	connections size = 0 ifTrue: [ ^Response text: 'What are you trying to unlock?' ].

	connections size = 1 ifTrue: [
		(connections at: 1) locked
			ifTrue: [
				(self contains: (connections at: 1) key)
					ifTrue: [
						(connections at: 1) locked: false.
						^Response text: (connections at: 1) description, String lineDelimiter, 'OK' ]
					ifFalse: [ ^Response text: 'You don''t seem to have the key' ] ]
			ifFalse: [ ^Response text: 'I don''t think it''s locked' ] ].

	"connections size > 1"

	^Response text: 'Could you be a bit more specific?'