parsing
parse: aString
	"Parses and executes a command, returning a response"

	| output action messages |
	turnCount := turnCount + 1.
	messages := scheduler tick.
	action := parser parse: aString.
	action execute.
	messages addAll: action responses.
	output := String crlf join: messages.
	log add: output.
	^ output