tests-as yet unclassified
testParse
	| action |
	action := parser parse:'look'.
	self assert: action verb signature equals: #look.
	action := parser parse:'take item'.
	self assert: action respond equals: (Verb take failMessageBlock value:'item').
	location add: (Thing name: 'ball').
	action := parser parse: 'get ball'.
	self assert: action verb signature equals: #take:.
	self assert: action verb arguments first text equals: 'ball'.