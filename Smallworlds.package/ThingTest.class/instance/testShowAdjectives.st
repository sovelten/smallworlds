tests-adding
testShowAdjectives
	ball setAdjective: 'big'.
	ball setAdjective: 'red'.
	self assert: (ball showAdjectives = 'big red').
	ball adjectives at: 'red' put: false.
	self assert: (ball showAdjectives = 'big').