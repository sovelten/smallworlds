printing
showAdjectives
	| trueAdjectives |
	trueAdjectives := adjectives associationsSelect: [ :each | each value ].
	^' ' join: trueAdjectives keys.