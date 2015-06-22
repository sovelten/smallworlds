printing
showContentsHere
	| contentsButPlayer |
	contentsButPlayer := self contentsButPlayer.
	contentsButPlayer ifNotEmpty: [
		^'There is ',
		 (',' join: (contentsButPlayer collect: [ :item | item show ])),
		 ' here.'
	]
	ifEmpty: [^'']