container
visibleContents
	^(OrderedCollection withAll: self inventory visibleContents) add: self; yourself.