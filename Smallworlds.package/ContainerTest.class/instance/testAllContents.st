tests-accessing
testAllContents
	| contents |
	box add: candy.
	bucket add: box.
	contents := bucket allContents.
	self assert: contents first = bucket.
	self assert: contents second = box.
	self assert: contents third = candy.
	box close.
	contents := bucket allContents.
	self assert: contents size = 3.
	bucket close.
	contents := bucket allContents.
	self assert: contents size = 3.
	