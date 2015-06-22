tests-parsing
testParse
	| aDescription location response |
	location := world player location.
	aDescription := location fullDescription.
	response := world parse: 'look'.
	self assert: ((response text) =  aDescription )