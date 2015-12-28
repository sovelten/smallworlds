as yet unclassified
parses: aString
	aString
		ifEmpty: [ ^self new initialize ]
		ifNotEmpty: [ ^nil ]