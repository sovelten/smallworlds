tests-accessing
testVisibleContents
	| contents |
	box add: candy.
	bucket add: box.
	contents := bucket visibleContents.
	self assert: contents first = bucket.
	self assert: contents second = box.
	self assert: contents third = candy.
	box close.
	contents := bucket visibleContents.
	self assert: contents size = 2.
	bucket close.
	contents := bucket visibleContents.
	self assert: contents size = 1.