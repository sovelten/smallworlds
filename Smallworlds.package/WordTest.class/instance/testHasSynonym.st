tests-accessing
testHasSynonym
	| ball |
	ball := Word name:'ball' synonyms: #('sphere').
	self assert: (ball hasSynonym: 'ball').
	self assert: (ball hasSynonym: 'sphere').
	self deny: (ball hasSynonym: 'square').
	ball := Word name:'pot'.
	self assert: (ball hasSynonym: 'pot').
	self deny: (ball hasSynonym: 'vase').