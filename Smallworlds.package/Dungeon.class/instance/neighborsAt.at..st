as yet unclassified
neighborsAt: x at: y
	"Returns rooms in the neighborhood of point (x,y)"

	^x@y fourNeighbors
		collect: [ :point | locationMatrix at: (point x) at: (point y) ]
		thenReject: [ :loc  | loc isNil ]