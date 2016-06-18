tests-accessing
testFailMessage
	| message expected tverb |
	tverb := Verb drop addArgument: 'ball'.
	message := tverb failMessage.
	expected := tverb failMessageBlock value: 'ball'.
	self assert: message equals: expected.