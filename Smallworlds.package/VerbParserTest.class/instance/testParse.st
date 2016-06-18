tests-parsing
testParse
	| verb |
	verb := verbParser parse: 'take box'.
	self assert: verb signature equals: #take:.
	self assert: verb arguments first text equals: 'box'.
	verb := verbParser parse:'look'.
	self assert: verb class equals: IVerb.
	verb := verbParser parse:'get item'.
	self assert: verb signature equals: #take:.
	self assert: verb arguments first text equals: 'item'.
	self should: [verbParser parse:'shouldFail'] raise: ParsingError.
	verb := verbParser parse:'put book on table'.
	self assert: verb signature equals: #put:on:.
	self assert: verb arguments first text equals: 'book'.
	self assert: verb arguments second text equals: 'table'.