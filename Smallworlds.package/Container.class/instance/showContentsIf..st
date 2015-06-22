printing
showContentsIf: aBlock
	| strings |
	strings := contents
		select: aBlock
		thenCollect: [ :item | item showWithTab ].
	^strings joinUsing: String crlf.