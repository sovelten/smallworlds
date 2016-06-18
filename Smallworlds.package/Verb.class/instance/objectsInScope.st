as yet unclassified
objectsInScope
	^objectsInScope ifNil: [ 
		self objectsInScope: [ :theActor | theActor visibleItems].
		objectsInScope.
	]