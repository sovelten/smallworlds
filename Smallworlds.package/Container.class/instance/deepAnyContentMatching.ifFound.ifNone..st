selecting
deepAnyContentMatching: aString ifFound: foundBlock ifNone: exceptionBlock

	self contents do: [ :each |
		(each matches: aString) ifTrue: [ ^foundBlock cull: each ].
		each checkContainer & each checkOpen
			ifTrue: [
				each deepAnyContentMatching: aString
					ifFound: foundBlock
					ifNone: exceptionBlock
			]
	].
	^exceptionBlock value