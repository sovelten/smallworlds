command
doLook
	"Answer a description of the current location"
	| response |
	response := self location description.
	self location checkLit ifTrue: [ 
		self location longDescriptionSeen: true 
	].
	^response