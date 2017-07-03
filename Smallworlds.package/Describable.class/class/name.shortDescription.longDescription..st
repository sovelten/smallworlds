instance creation
name: aString shortDescription: shortString longDescription: longString
	| theNoun |
	theNoun := Noun root: aString.
	^self
		noun: theNoun
		shortDescription: shortString
		longDescription: longString