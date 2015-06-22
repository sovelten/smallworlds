instance creation
location: aLocation at: aPoint
	"returns a copy of a location with position"
	^self new initialize
		location: aLocation;
		position: aPoint