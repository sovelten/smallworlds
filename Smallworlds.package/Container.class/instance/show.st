printing
show
	self checkOpen ifTrue: [
		^super show, '(',
		(self showContentsWith: [ :s | s show ] joinWith: ', '),
		')'
	].
	^super show