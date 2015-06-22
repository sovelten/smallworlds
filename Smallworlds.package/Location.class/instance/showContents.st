printing
showContents
	"Answer a string describing the contents of this container"
	self checkLit
		ifTrue: [ ^self showContentsHere ]
		ifFalse: [ ^'' ]