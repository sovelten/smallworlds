printing
printOn: aStream
	"Append to the argument, aStream, a sequence of characters that  
	identifies the receiver."

	| title |
	title := self noun show.
	aStream
		nextPutAll: title