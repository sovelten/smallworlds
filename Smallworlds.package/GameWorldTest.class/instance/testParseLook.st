tests-parsing
testParseLook
	| response |
	response := world parse: 'look lamp'.
	Transcript crShow: response.
	self assert: (response = 'old-fashioned oil lamp').
	world player inventory add: bottle.
	response := world parse: 'look bottle'.
	self assert: (response = 'small bottle').
	Transcript crShow: response.
	response := world parse: 'look bla'.
	Transcript crShow: response.