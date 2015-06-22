tests-private
testVisibleItems
	| ball visible |
	ball := Item name: 'ball'.
	player inventory add: bottle.
	player location add: ball.
	visible := player visibleItems.
	self assert: visible size = 2
	