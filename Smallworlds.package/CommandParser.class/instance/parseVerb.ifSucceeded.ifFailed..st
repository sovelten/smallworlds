private
parseVerb: aString ifSucceeded: aBlock ifFailed: failBlock
	| action |
	"Tries to parse a string using the verb dictionary"
	
	action := self parseVerb: aString ifFailed: [^failBlock value].
	^ aBlock value: action