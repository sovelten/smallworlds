tests-selecting
testAsParser
	| ball parser token |
	ball := Describable name: 'ball'.
	parser := ball asParser.
	token := parser parse: 'ball'.
	self assert: token = 'ball'.