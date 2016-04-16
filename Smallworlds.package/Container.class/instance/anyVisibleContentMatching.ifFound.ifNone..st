selecting
anyVisibleContentMatching: aString ifFound: foundBlock ifNone: exceptionBlock
	| matches |
	matches := self visibleContentsMatching: aString.
	^matches ifEmpty: [ exceptionBlock value ]
			  ifNotEmpty: [ foundBlock value: matches first ].