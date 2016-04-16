tests-accessing
testHasSynonym
	| ball |
	ball := Noun root:'ball'.
	ball addSynonym: 'sphere'.
	self assert: (ball hasSynonym: 'ball').
	self assert: (ball hasSynonym: 'sphere').
	self deny: (ball hasSynonym: 'square').
	ball := Noun root:'pot'.
	self assert: (ball hasSynonym: 'pot').
	self deny: (ball hasSynonym: 'vase').