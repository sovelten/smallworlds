tests-command
testDoTake
	player location add: bottle.
	player doTake: bottle.
	self assert: (player inventory contents first noun name = 'bottle').
	self deny: (player location contents includes: bottle)