tests
testAddAll
	| picker |
	picker := RandomPicker new.
	picker addAll: {
		'red' -> 1.
		'blue' -> 1.
		'orange' -> 1
	}.
	self assert: picker values size == 3.