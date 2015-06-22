command
wave: aString
	| matchingObjects |

	matchingObjects := self contentsMatching: aString.
	matchingObjects size = 0 ifTrue: [ ^Response text: 'Huh?' ].
	matchingObjects size > 1 ifTrue: [ ^Response text: 'Could you be a bit more specific?' ].

	^Response text: (#('Swoosh!!'
						'Hey, that was neat!!  Do it again!!'
						'Nothing happens'
						'Is that your nose on the floor?') atRandom)