tests-adding
testAddAdjective
	ball setAdjective: 'red'.
	self assert:((ball adjectives at:'red') = true)