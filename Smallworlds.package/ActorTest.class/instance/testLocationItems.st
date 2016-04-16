tests-action scope
testLocationItems
	| items |
	player inventory add: pencil.
	box add: bottle.
	player location add: box.
	items := player locationItems.
	self assert: items size = 1.
	self assert: items first name = 'box'.