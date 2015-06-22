as yet unclassified
name: aString
	| theNoun |
	theNoun := Noun root: aString.
	^self
		noun: theNoun
		shortDescription: theNoun show
		longDescription: theNoun show