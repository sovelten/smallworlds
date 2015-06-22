setting
isWestOf: aLocation
	"Adds a north-south connection from aLocation to this location"
	
	self addConnection: (Connection eastTo: aLocation).
	aLocation addConnection: (Connection westTo: self)