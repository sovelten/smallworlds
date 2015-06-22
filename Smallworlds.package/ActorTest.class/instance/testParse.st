tests-parsing
testParse
	player inventory add: bottle.
	player parse:'drop bottle'.
	self assert: (player location contents second noun name = 'bottle').
	self assert: (player inventory contents isEmpty).