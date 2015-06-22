initialization
initialize
	super initialize.
	
	inventory := Container name: 'inventory'.
	announcer := Announcer new.