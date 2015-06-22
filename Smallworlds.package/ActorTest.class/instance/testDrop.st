tests-command
testDrop
	|location|
	player inventory add: bottle.
	player drop: bottle.
	location := player location.
	self assert: (player location contents second noun name = 'bottle').
	self assert: (player inventory contents isEmpty).