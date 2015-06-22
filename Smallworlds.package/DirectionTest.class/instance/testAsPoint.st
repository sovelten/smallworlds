tests-accessing
testAsPoint
	self assert: (Direction north asPoint = (0@(-1))).
	self assert: (Direction south asPoint = (0@1)).
	self assert: (Direction west asPoint = (-1@0)).
	self assert: (Direction east asPoint = (1@0)).