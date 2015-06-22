as yet unclassified
addLocation: aDungeonLocation
	| pos |
	
	pos := aDungeonLocation position.
	locations add: aDungeonLocation.
	locationMatrix at: pos x at: pos y put: aDungeonLocation location.