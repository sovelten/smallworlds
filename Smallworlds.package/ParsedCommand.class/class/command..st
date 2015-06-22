instance creation
command:aSymbol
	"Generate an action with verb and no arguments"

	^self new initialize command: aSymbol; arguments: (Array new:0)