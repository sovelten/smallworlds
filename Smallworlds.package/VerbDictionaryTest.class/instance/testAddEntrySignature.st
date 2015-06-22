tests-as yet unclassified
testAddEntrySignature
	| dictionary collection |
	dictionary := VerbDictionary new.
	dictionary addEntry: 'look' signature: #look.
	dictionary addEntry: 'look' signature: #look:with:.
	dictionary addEntry: 'look' signature: #look:.
	collection := dictionary at: 'look'.
	self assert: collection first numArgs > collection second numArgs.
	self assert: collection second numArgs > collection third numArgs.
