adding
addLocation: aLocation at: x at: y
	| loc |
	
	loc := DungeonRoom location:aLocation at: x@y.
	self addLocation: loc