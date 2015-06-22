printing
showContents
	^(self contents collect: [ :item | item showWithTab ]) joinUsing: String crlf.