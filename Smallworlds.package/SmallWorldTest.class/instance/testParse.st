tests-parsing
testParse
	| aDescription location response |
	location := world player location.
	aDescription := location fullDescription.
	response := world parse: 'look'.
	self assert: (response =  aDescription ).
	
	world player inventory add: bottle.
	world parse:'drop bottle'.
	self assert: (world player location contents third name = 'bottle').
	self assert: (world player inventory contents isEmpty).