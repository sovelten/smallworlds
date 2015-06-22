command
empty: anOrderedCollection
	| matchingObjects response |

	matchingObjects := self contentsMatching: (anOrderedCollection at: 1).
	matchingObjects size = 0
		ifTrue: [ ^Response text: 'I don''t see a ', (anOrderedCollection at: 1), ' here.' ].
	matchingObjects size > 1
		ifTrue: [ ^Response text: 'Could you be a bit more specific?' ].

	response := Response text: 'OK'.

	(matchingObjects at: 1) contents do: [ :each |
		each ~= self location water & (each ~= self location oil)
			ifTrue: [ self location add: each ]
			ifFalse: [ response := Response text: 'The ', each shortNounPhrase, ' splashes on the floor and evaporates.' ] ].

	(matchingObjects at: 1) contents removeAll: (matchingObjects at: 1) contents.
	^response