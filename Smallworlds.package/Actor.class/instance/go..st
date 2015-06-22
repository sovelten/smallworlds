command
go: aConnection
	(aConnection hasAdjective: 'closed') not
			ifTrue: [
				self location: (aConnection destination).
				^self look
			]
			ifFalse: [
				^aConnection closedDescription
			].
	
	^'There is no passage this way'