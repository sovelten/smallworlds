printing
selectContents: aBlock thenShow: showBlock
	| strings |
	strings := contents
		select: aBlock
		thenCollect: showBlock.
	^strings joinUsing: String crlf.