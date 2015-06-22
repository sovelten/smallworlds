parsing
parse: aString
	"comment stating purpose of message"

	^self parse: aString ifFailed: [ ParsingError signal ]