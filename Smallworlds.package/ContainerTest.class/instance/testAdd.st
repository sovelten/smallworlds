tests-command
testAdd
	| ball |
	ball := Item name: 'ball'.
	box add: ball.
	self assert:(box contents includes: ball)