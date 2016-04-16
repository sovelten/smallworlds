initialization
initialize
	super initialize.
	noun := Noun root: 'bar'.
	shortDescription := 'Foyer Bar'.
	longDescription := 'The bar, much rougher than you''d have guessed after the opulence of the foyer to the north, is completely empty. There seems to be some sort of message scrawled in the sawdust on the floor'.
	
	message:= BarMessage new.
	self add: message.