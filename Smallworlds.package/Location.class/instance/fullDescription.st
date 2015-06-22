printing
fullDescription
	"Location description with available connections and items"
	^super description, String crlf,
	 self connectionDescription, String crlf,
	 self showContents