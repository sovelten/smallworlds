command
doDrop: item
	self inventory remove: item.
	self location add: item.
	^item name, ' dropped.'