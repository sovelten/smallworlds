command
doGo: aConnection
	(aConnection hasAdjective: 'closed') not
			ifTrue: [
				self location: (aConnection destination).
				^self doLook
			]
			ifFalse: [
				^aConnection closedDescription
			].