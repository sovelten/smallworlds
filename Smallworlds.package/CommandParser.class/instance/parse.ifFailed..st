parsing
parse: aString ifFailed: aBlock

	"Tries to parse abbreviations into actions, then tries to parse verbs into actions"
	^abbreviations at: aString
		ifPresent: [ :action | action deepCopy ]
		ifAbsent: [ self parseVerb: aString ifFailed: aBlock ]