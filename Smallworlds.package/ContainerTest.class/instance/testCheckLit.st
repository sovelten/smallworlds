tests-as yet unclassified
testCheckLit
	| lamp superbox |
	lamp := (Thing name:'lamp') setAdjective:'lit'.
	self deny: box checkLit.
	box add: lamp.
	self assert: box checkLit.
	superbox := Container name: 'superbox'.
	self deny: superbox checkLit.
	superbox add: box.
	self assert: superbox checkLit.