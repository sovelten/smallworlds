tests-action scope
testLocationItems
	| items |
	player inventory add: pencil.
	box add: bottle.
	player location add: box.
	box close.
	items := player locationItems.
	self assert: items size = 2.
	self assert: items second name = 'box'.
	box open.
	items := player locationItems.
	self assert: items size = 3.