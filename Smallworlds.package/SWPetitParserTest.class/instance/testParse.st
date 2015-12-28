tests-as yet unclassified
testParse
	| action |
	self assert: ((parser parse:'look') class = IAction).
	action := parser parse:'get item'.
	self assert: ((parser parse:'get item') class = TAction).
	self assert: ((parser parse:'get item') arguments first = 'item')