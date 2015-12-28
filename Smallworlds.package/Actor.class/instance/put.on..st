parsing
put: string1 on: string2
	^self inventory anyContentMatching: string1
		ifFound: [ :item |
			self location anyVisibleContentMatching: string2
				ifFound: [ :container |
					ActionHook objects: (Array with: item with: container).
				]
				ifNone: [ ActionHook response: 'I don''t understand ', string1 ]
		]
		ifNone: [ ActionHook response: 'You don''t have a ', string2 ]