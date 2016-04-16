command
add: anObject
	"Add a new object to the collection of objects in this container"

	self contents add: anObject.
	anObject owner: self.
	^'OK'