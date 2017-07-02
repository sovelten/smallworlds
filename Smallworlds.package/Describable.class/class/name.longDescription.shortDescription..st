instance creation
name: aString longDescription: longString shortDescription: shortString
	| theNoun |
	theNoun := Noun root: aString.
	^self
		noun: theNoun
		shortDescription: shortString
		longDescription: longString