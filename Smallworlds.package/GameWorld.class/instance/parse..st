parsing
parse: aString
	"Parses and executes a command, returning a response"
	turnCount := turnCount + 1.
	
	^parser parse: aString
		ifSucceeded: [ :action | 
			(action actor: player) execute.
		]
		ifFailed: [ 'Could not understand command.' ]