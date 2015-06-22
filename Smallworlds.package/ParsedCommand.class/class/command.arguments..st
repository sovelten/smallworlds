instance creation
command:aSymbol arguments:aCollection
	"Generate an action with verb and multiple arguments"

	^self new initialize command: aSymbol; arguments: aCollection asArray 