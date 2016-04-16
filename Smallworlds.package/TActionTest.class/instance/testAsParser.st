tests-as yet unclassified
testAsParser
	| parsedAction parser action |
	action := TAction signatures: #(#look: #l:).
	parser := action asParser.
	parsedAction := parser parse: 'look object'.
	self assert: (parsedAction signature = #look:).
	self assert: (parsedAction arguments first = 'object').
	parsedAction := parser parse: 'look'.
	self assert: (parsedAction class = PPFailure).
	parsedAction := parser parse: 'l big object'.
	self assert: (parsedAction signature = #look:).
	self assert: (parsedAction arguments first = 'big object')