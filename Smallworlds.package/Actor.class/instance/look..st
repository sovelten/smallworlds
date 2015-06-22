command
look: aString
	"Answer a description of the item matching string"
	^self allItems detect: [ :thing | thing matches: aString ]
		ifFound: [ :thing | Response text: thing description ]
		ifNone: [ Response text: 'I can''t see ', aString, ' here.' ].