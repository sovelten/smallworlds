as yet unclassified
testAsParser
	| verb parser action |
	verb := TIVerb signatures: #(#put:on: #place:in:).
	parser := verb asParser.
	action := parser parse: 'put object on table'.
	self assert: (action signature = #put:on:).
	self assert: (action arguments first text = 'object').
	self assert: (action arguments second text = 'table').
	action := parser parse: 'put'.
	self assert: (action class = PPFailure).
	action := parser parse: 'put big object'.
	self assert: (action class = PPFailure).
	action := parser parse: 'place big object in red box'.
	self assert: (action signature = #put:on:).
	self assert: (action arguments first text = 'big object').
	self assert: (action arguments second text = 'red box').