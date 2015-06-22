setting
isEastOf: aLocation
	"Adds a north-south connection from aLocation to this location"
	
	self addConnection: (Connection westTo: aLocation).
	aLocation addConnection: (Connection eastTo: self)