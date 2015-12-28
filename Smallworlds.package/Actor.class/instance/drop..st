parsing
drop: aString
	^self parseHeld: aString
		   fail: (ActionHook response: 'You don''t have a ', aString)