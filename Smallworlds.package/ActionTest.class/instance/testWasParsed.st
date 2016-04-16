tests-changing
testWasParsed
	self assert: (lookIAction wasParsed = false).
	lookIAction parseArguments.
	self assert: (lookIAction wasParsed = true)