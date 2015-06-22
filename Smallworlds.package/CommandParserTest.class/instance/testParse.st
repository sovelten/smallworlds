tests-as yet unclassified
testParse
	| action |
	self assert: ((parser parse:'look') class = LookAction).
	action := parser parse:'get item'.
	self assert: ((parser parse:'get item') class = TakeAction).
	self assert: ((parser parse:'get item') arguments first = 'item')