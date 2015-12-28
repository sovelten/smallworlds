tests-command
setUp
	player := Actor defaultActor
		location: TestLocation redRoom.
		
	bottle := Item
			name: 'bottle'
			description: 'small bottle'.
			
	world := TestWorld default.