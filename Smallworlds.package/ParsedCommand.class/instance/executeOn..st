accessing
executeOn: receiver
	"answer the result of sending this message to receiver"

	^ receiver perform: self command withArguments: arguments