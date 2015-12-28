tests-private
testVisibleItems
	| ball visible |
	ball := Item name: 'ball'.
	player inventory add: bottle.
	player location add: ball.
	visible := player visibleItems.
	Transcript crShow: visible.
	self assert: visible size = 4
	