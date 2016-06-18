tests-as yet unclassified
testAsParser
	| parsedAction parser action |
	action := TVerb signatures: #(#look: #l:).
	parser := action asParser.
	
	parsedAction := parser parse: 'look object'.
	self assert: (parsedAction signature = #look:).
	self assert: (parsedAction arguments first text = 'object').
	
	parsedAction := parser parse: 'look'.
	self assert: (parsedAction class = PPFailure).
	
	parsedAction := parser parse: 'l big object'.
	self assert: (parsedAction signature = #look:).
	self assert: (parsedAction arguments first text = 'big object').
	
	parsedAction := parser parse: 'l big object-with-dash'.
	self assert: (parsedAction signature = #look:).
	self assert: (parsedAction arguments first text = 'big object-with-dash').