as yet unclassified
verb: aList
	^PPChoiceParser withAll: (aList collect: [ :each | each asParser ])