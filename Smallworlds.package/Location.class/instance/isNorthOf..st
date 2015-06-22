setting
isNorthOf: aLocation
	"Adds a north-south connection from aLocation to this location"
	
	self addConnection: (Connection southTo: aLocation).
	aLocation addConnection: (Connection northTo: self)