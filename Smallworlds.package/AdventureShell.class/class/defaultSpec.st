specs
defaultSpec
	^ SpecLayout composed
		newColumn: [  :column | 
			column
				newRow: [ :row | 
					row
						add: #textOutput
				];
				addSplitter;
				newRow: [ :row |
					row
						add: #textInput
				] height: 30
		];
		yourself.