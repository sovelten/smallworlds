accessing
items: anObject
	items := anObject.
	items size = 1 ifTrue: [ self choice: 1 ]