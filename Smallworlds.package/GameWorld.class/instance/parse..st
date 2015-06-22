parsing
parse: aString
	"Parses and executes a command, returning a Response"
	turnCount := turnCount + 1.
	
	^parser parse: aString
		ifSucceeded: [ :action | self execute: action ]
		ifFailed: [ player parse: aString ]