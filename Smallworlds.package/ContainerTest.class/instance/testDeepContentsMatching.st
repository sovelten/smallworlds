tests-selecting
testDeepContentsMatching
	| smallbox key |
	smallbox := Container name:'small box'.
	key := Thing name:'key'.
	smallbox add: key.
	box add: smallbox.
	self assert: ((box deepContentsMatching:'key') first show = 'a key').