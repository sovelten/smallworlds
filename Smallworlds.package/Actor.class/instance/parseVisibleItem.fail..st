parsing
parseVisibleItem: aString fail: anActionHook
	^self location anyVisibleContentMatching: aString
		ifFound: [ :object | ActionHook object: object ]
		ifNone: [ anActionHook ]