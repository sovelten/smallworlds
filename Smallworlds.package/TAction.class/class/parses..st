as yet unclassified
parses: aString
	aString
		ifEmpty: [ ^nil ]
		ifNotEmpty: [ ^self new initialize addArgument: aString. ]