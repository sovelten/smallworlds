tests-as yet unclassified
testAsParser
	| verb parser action |
	verb := TVerb signatures: #(#look: #l:).
	parser := verb asParser.
	action := parser parse: 'look object'.
	self assert: (action signature = #look:).
	self assert: (action arguments first = 'object').
	action := parser parse: 'look'.
	self assert: (action class = PPFailure).
	action := parser parse: 'l big object'.
	self assert: (action signature = #look:).
	self assert: (action arguments first = 'big object')