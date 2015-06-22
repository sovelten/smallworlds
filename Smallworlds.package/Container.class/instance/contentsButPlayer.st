selecting
contentsButPlayer
	^contents reject: [ :item | item checkPlayer ]