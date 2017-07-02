tests-parsing
testParseTake
	| objects |
	objects := world player inventory contentsMatching: 'lamp'.
	self assert: objects size = 0.
	world parse: 'take lamp'.
	objects := world player inventory contentsMatching: 'lamp'.
	self assert: objects size = 1.