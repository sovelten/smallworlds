tests-command
testDoDrop
	|location|
	player inventory add: bottle.
	player doDrop: bottle.
	location := player location.
	Transcript show: player location contents second name.
	self assert: (player location contents second name = 'bottle').
	self assert: (player inventory contents isEmpty).