parsing
take: aString
	^self parseVisibleItem: aString
		  fail: (ActionHook response: 'There''s no ', aString, 'here.')