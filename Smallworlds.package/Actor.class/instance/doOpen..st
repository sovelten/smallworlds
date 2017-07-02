command
doOpen: container
	container checkOpen ifTrue: [
		^container showDefinite, ' is already open.'
	]
	ifFalse: [ 
		container open.
		^'You opened ', container showDefinite
	]