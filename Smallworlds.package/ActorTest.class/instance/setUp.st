tests-command
setUp
	player := Actor defaultActor.
	player location: TestLocation redRoom.
		
	bottle := Item
			name: 'bottle'
			description: 'small bottle'.
			
	pencil := Item
		name: 'pencil'
		description: 'pencil'.
			
	box := Container
		name: 'box'
		description: 'wooden box'.
			
	world := TestWorld default.