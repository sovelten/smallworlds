parsing
parse: aString ifSucceeded: aBlock ifFailed: failBlock
	| action |
	"Tries to parse abbreviations into actions, then tries to parse verbs into actions"	
	action := self parse: aString ifFailed: [ ^ failBlock value ].
	^ aBlock value: action