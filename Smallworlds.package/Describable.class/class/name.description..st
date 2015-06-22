as yet unclassified
name: aString description: aDescription
	| theNoun |
	theNoun := Noun root: aString.
	^self
		noun: theNoun
		shortDescription: aDescription
		longDescription: aDescription