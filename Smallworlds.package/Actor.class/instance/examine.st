command
examine
	"Answer a description of the current location"
	| response |
	response := Response text: self location showLongdescription.
	^response