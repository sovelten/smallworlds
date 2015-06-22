instance creation
command:aSymbol argument: aString
	"Generate an action with verb and single argument"
	aString ifEmpty: [
		^self command: aSymbol
	]
	ifNotEmpty: [
		^self new initialize command: aSymbol; arguments: (Array with: aString)
	]