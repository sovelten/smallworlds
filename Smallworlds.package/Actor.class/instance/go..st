parsing
go: aString
	| connections |

	connections := self location connectionsTo: aString.
	^connections
		ifEmpty: [ ActionHook object: ClosedConnection invalid ]
		ifNotEmpty:[ ActionHook object: connections first ]