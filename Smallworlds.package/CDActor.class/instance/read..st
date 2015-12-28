parsing
read: aString
	^self parseVisibleItem: aString
		  fail: [ ActionHook response: 'I don''t understand ', aString, '.' ]