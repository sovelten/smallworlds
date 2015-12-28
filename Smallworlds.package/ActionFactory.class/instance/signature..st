as yet unclassified
signature: aSignature
	| num |
	num := aSignature numArgs.
	num = 0 ifTrue: [
		^IAction signature: aSignature
	].
	num = 1 ifTrue: [
		^TAction signature: aSignature
	].
	num = 2 ifTrue: [
		^TIAction signature: aSignature
	]