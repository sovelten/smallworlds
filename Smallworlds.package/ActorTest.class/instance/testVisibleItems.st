tests-private
testVisibleItems
	| visible |
	player inventory add: pencil.
	box add: bottle.
	player location add: box.
	visible := player visibleItems.
	Transcript crShow: visible.
	self assert: visible size = 6.
	box close.
	visible := player visibleItems.
	Transcript crShow: visible.
	self assert: visible size = 5.
	