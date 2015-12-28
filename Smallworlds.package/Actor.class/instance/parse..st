parsing
parse: aString
	"Process the given command, answering a Response"
	
	^parser parse: aString
		ifSucceeded: [ :action | 
			(action actor:self) execute.
		]
		ifFailed: [ 'Could not understand command.' ]