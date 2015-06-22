printing
showContentsIf: aBlock with: showBlock
	| strings |
	strings := contents
		select: aBlock
		thenCollect: showBlock.
	^strings joinUsing: String crlf.