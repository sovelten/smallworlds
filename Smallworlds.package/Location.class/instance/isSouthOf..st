setting
isSouthOf: aLocation
	"Adds a north-south connection from aLocation to this location"
	
	self addConnection: (Connection northTo: aLocation).
	aLocation addConnection: (Connection southTo: self)