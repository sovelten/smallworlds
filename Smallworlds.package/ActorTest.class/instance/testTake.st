tests-command
testTake
	player location add: bottle.
	player take: bottle.
	self assert: (player inventory contents first noun name = 'bottle').
	self deny: (player location contents includes: bottle)