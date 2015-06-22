as yet unclassified
connect: aNewLocation to: aDirection of: aRoom
	| pos loc |
	pos := aRoom position.
	loc := aRoom location.
	
	loc addConnection: (Connection through: aDirection to: aNewLocation).
	aNewLocation addConnection: (Connection through: (aDirection opposite) to:loc).
	self addLocation: aNewLocation at: pos+(aDirection asPoint)