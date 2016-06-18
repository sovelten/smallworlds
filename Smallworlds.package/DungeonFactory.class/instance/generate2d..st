as yet unclassified
generate2d: n
	"Generates a new dungeon with n rooms into a 2d matrix"
	| newLocation openRoom pos dungeon  size slot |
	
	dungeon := Dungeon new: 20.
	dungeon addLocation: (DungeonRoom location: locationPicker atRandom at: dungeon origin).
	
	size := n-1.
	
	1 to: size do: [ :x | 
		"Select a location to add to dundeon"
		newLocation := locationPicker atRandom.
		"Select a location with open connections in the dungeon"
		openRoom := self selectRandomLocation: dungeon.
		pos := openRoom position.
		"Select a random available position slot to connect new location"
		slot := (dungeon emptySlotsAt: pos x at: pos y) atRandom.
		"Connect and add new location to dungeon"
		dungeon connect: newLocation to: (Direction fromPoint: slot - pos) of: openRoom
	].

	^dungeon