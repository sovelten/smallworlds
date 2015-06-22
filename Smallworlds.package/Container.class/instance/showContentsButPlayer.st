printing
showContentsButPlayer
	^self showContentsIf: [ :item | item checkPlayer not ]