accessing
parse: aString ifFailed: aBlock
	| intOption |
	intOption := aString asInteger.
	^intOption 
		ifNotNil: [ 
			((1 to: items size) rangeIncludes: intOption)
				ifTrue: [ self choice: intOption ]
				ifFalse: [ aBlock value ]
		]
		ifNil: [ aBlock value ]