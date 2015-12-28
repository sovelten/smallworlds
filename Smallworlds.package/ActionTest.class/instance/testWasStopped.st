tests-changing
testWasStopped
	self assert: (lookIAction wasStopped = false).
	lookIAction stop.
	self assert: (lookIAction wasStopped = true)