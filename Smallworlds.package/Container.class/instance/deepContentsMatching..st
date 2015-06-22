selecting
deepContentsMatching: aString
	| matches |

	matches := self contentsMatching: aString.
	self contents select: [ :each | each checkContainer ]
		thenDo: [ :item |
			matches addAll: (item deepContentsMatching: aString)
		].
	^matches