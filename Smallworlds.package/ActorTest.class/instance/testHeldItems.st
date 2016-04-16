tests-action scope
testHeldItems
	| items |
	player inventory add: pencil.
	box add: bottle.
	player location add: box.
	items := player heldItems.
	self assert: items size = 1.
	self assert: items first name = 'pencil'.