tests-parsing
testParseIfFailed
	| verb |
	verb := verbParser parse: 'take box' ifFailed: [ 'Failed' ].
	self assert: verb signature equals: #take:.
	self assert: verb arguments first text equals: 'box'.
	verb := verbParser parse:'look' ifFailed:['IFailed'].
	self assert: verb class equals: IVerb.
	verb := verbParser parse:'get item' ifFailed:['IFailed'].
	self assert: verb signature equals: #take:.
	self assert: verb arguments first text equals: 'item'.
	verb := verbParser parse:'shouldFail' ifFailed:['IFailed'].
	self assert: verb equals: 'IFailed'.
	verb := verbParser parse:'put book on table' ifFailed:['IFailed'].
	self assert: verb signature equals: #put:on:.
	self assert: verb arguments first text equals: 'book'.
	self assert: verb arguments second text equals: 'table'.