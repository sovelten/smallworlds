command
light: aString
	| items wasLit |

	wasLit := self location lighted.
	items := self contentsMatching: aString.
	items size > 0
		ifTrue: [ (items at: 1) lightSource
			ifTrue: [ (items at: 1) lighted: true.
				wasLit
					ifTrue: [ ^Response text: 'OK' ]
					ifFalse: [ ^Response text: 'Ahh, much better...', String lineDelimiter, self location description ]
					
			]
			ifFalse: [ ^Response text: ((Array with:'Nothing happens'
										   with: 'You can''t find the switch'
										   with: 'Huh?'
										   with: 'I''m game.  How?'
										   with: 'Let me guess - half the calories of our regular ',
												(items at: 1) name, ' and all the great taste?') atRandom) 
			]
		]
		ifFalse: [ ^Response text: 'You don''t seem to have a ', aString ]