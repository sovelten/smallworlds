tests-changing
testWasStopped
	self deny: lookIAction wasStopped.
	lookIAction stop.
	self assert: lookIAction wasStopped