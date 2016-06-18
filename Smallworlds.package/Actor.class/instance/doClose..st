command
doClose: container
	container checkOpen ifTrue: [
		container close.
		^'You closed ', container showDefinite.
	]
	ifFalse: [
		^container showDefinite, ' is already closed'.
	]