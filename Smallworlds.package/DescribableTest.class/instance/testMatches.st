tests-selecting
testMatches
	| ball |
	ball := Describable name: 'ball'.
	self assert: (ball matches: 'ball').
	self assert: (ball matches: 'a ball').
	self assert: (ball matches: 'the ball').
	self deny: (ball matches: 'balls').