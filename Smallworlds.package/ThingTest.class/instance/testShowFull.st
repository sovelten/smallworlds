tests-as yet unclassified
testShowFull
	ball setAdjective: 'big'.
	ball setAdjective: 'red'.
	self assert: (ball showFull = 'a big red ball').