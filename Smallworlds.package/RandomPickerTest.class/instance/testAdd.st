tests
testAdd
	| picker |
	picker := RandomPicker new.
	picker add: #('val1').
	self assert: picker values size equals: 1.
	self assert: picker atRandom equals: 'val1'.