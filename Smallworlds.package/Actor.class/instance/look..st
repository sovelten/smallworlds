parsing
look: aString
	^self parseVisibleItem: aString
			fail: (ActionHook response: 'I can''t see ', aString, ' here.').