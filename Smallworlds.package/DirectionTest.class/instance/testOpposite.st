tests-as yet unclassified
testOpposite
	self assert: (Direction north opposite name = Direction south name).
	self assert: (Direction south opposite name = Direction north name).
	self assert: (Direction west opposite name = Direction east name).
	self assert: (Direction east opposite name = Direction west name)