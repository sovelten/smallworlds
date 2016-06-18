parsing
parse: aString ifFailed: failBlock
	"Tries to parse abbreviations into verbs, then tries to parse recognizable verbs"
	| result |
	^abbreviations at: aString
		ifPresent: [ :block | block value ]
		ifAbsent: [
			result := parser parse: aString.
			result class = PPFailure
				ifTrue: [ failBlock value ]
				ifFalse: [ result ]
		]