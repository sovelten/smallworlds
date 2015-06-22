as yet unclassified
signature: aSignature
	| num |
	num := aSignature numArgs.
	num = 0 ifTrue: [
		^Action signature: aSignature
	].
	num = 1 ifTrue: [
		SingleObjectAction signature: aSignature
	].
	num = 2 ifTrue: [
		Action signature: aSignature
	]