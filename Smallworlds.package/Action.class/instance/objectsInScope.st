accessing
objectsInScope
	^objectsInScope ifNil: [ 
		self objectsInScope: [ :theActor | theActor visibleItems].
		objectsInScope.
	]