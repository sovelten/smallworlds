as yet unclassified
parseArguments

	actor inventory anyContentMatching: arguments first
		ifFound: [ :item |
			actor visibleItems detect: [ :each | each matches: arguments second ]
				ifFound: [ :container |
					self parsedArguments: (Array with: item with: container).
					^true
				]
				ifNone: [ self addResponse: 'I don''t understand ', arguments first. ^false ]
		]
		ifNone: [ self addResponse: 'You don''t have a ', arguments second. ^false ]