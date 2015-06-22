accessing
location: newLocation
	"Setting this effectively moves the actor from one place to the other"

	self location ifNotNil: [
		location remove: self
	].
	newLocation add: self.
	location := newLocation