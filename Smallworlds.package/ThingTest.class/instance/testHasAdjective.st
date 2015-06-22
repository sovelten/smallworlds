tests-adding
testHasAdjective
	self deny:(ball hasAdjective:'red').
	ball setAdjective: 'red'.
	self assert:(ball hasAdjective:'red')