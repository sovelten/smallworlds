as yet unclassified
emptySlotsAt: x at: y
	"Returns the coordinates in the neighborhood of point (x,y) that are empty"

	^(x@y) fourNeighbors
		select: [ :point | (locationMatrix at: (point x) at: (point y)) isNil ]