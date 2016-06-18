parsing
parse: aString
	"Parses and executes a command, returning a response"
	| message action |
	turnCount := turnCount + 1.
	
	action := parser parse: aString.
	action execute.
	message := action respond.
	
	log add: message.
	^message.