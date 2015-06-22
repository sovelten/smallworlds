tests-as yet unclassified
testParseIfFailed
	self assert: ((parser parse:'look' ifFailed:['IFailed']) class = LookAction).
	self assert: ((parser parse:'get item' ifFailed:['IFailed']) class = TakeAction).
	self assert: ((parser parse:'get item' ifFailed:['IFailed']) arguments first = 'item').
	self assert: ((parser parse:'shouldFail' ifFailed:['IFailed']) = 'IFailed').