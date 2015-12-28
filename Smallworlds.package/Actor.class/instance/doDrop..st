command
doDrop: item
	self inventory remove: item.
	self location add: item.
	^item noun name, ' dropped.'