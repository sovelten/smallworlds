parsing
parseHeld: aString fail: anActionHook
	^self inventory anyContentMatching: aString
		ifFound: [ :object | ActionHook object: object ]
		ifNone: [ anActionHook ]