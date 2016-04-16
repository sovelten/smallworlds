tests-command
testDoTake
	player location add: bottle.
	player doTake: bottle.
	Transcript show: (player inventory contents first name).
	self assert: (player inventory contents first name = 'bottle').
	self deny: (player location contents includes: bottle)