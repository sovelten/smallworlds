tests-command
testDoTake
	player location add: bottle.
	player doTake: bottle.
	self assert: (player inventory contains: bottle).
	self deny: (player location contains: bottle)