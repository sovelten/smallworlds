tests-command
testDoTake
	player location add: bottle.
	player doTake: bottle.
	self assert: (player inventory contents first name) equals: 'bottle'.
	self deny: (player location contents includes: bottle)