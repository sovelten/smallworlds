command
fill: anOrderedCollection
	| matchingObjects |

	matchingObjects := self contentsMatching: (anOrderedCollection at: 1).
	matchingObjects size = 0 ifTrue: [ ^Response text: 'I don''t see a ', (anOrderedCollection at: 1), ' here.' ].
	matchingObjects size > 1 ifTrue: [ ^Response text: 'Could you be a bit more specific?' ].

	self location hasWater
		ifTrue: [ (matchingObjects at: 1) add: self location water.
				^Response text: 'OK' ].

	self location hasOil
		ifTrue: [ (matchingObjects at: 1) add: self location oil.
				^Response text: 'OK' ].

	^Response text: 'I don''t see anything to fill the ', (anOrderedCollection at: 1), ' with.'