as yet unclassified
parse: aString ifFailed: aBlock

	"Tries to parse abbreviations into actions, then tries to parse verbs into actions"
	| result |
	^abbreviations at: aString
		ifPresent: [ :block | block value ]
		ifAbsent: [
			result := parser parse: aString.
			result class = PPFailure
				ifTrue: [ aBlock value ]
				ifFalse: [ result ]
		]