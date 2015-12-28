tests-changing
testWasParsed
	self assert: (lookIAction wasParsed = false).
	lookIAction status: #parsed.
	self assert: (lookIAction wasParsed = true)