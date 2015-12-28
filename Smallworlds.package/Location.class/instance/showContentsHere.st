printing
showContentsHere
	| objects text |
	objects := self contentsButPlayer.
	objects ifNotEmpty: [
		objects size = 1
		ifTrue: [ text := objects first show ]
		ifFalse: [
			text := (', ' join: (objects allButLast collect: [ :item | item show ])),
					  ' and ', objects last show
		].
		^'There is ', text,' here.'.
	]
	ifEmpty: [^'']