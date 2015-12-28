tests-as yet unclassified
testAsParser
	| verb parser action |
	verb := IVerb signatures: #(#look #l).
	parser := verb asParser.
	action := parser parse: 'look'.
	self assert: (action signature = #look).
	action := parser parse: 'l'.
	self assert: (action signature = #look).
	action := parser parse: 'looking'.
	self assert: (action class = PPFailure).